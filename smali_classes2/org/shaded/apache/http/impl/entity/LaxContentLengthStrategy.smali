.class public Lorg/shaded/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/shaded/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/shaded/apache/http/HttpMessage;)J
    .locals 19
    .param p1, "message"    # Lorg/shaded/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "HTTP message may not be null"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 69
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/shaded/apache/http/HttpMessage;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v12

    .line 70
    .local v12, "params":Lorg/shaded/apache/http/params/HttpParams;
    const-string v16, "http.protocol.strict-transfer-encoding"

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/shaded/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v14

    .line 72
    .local v14, "strict":Z
    const-string v16, "Transfer-Encoding"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/shaded/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v15

    .line 73
    .local v15, "transferEncodingHeader":Lorg/shaded/apache/http/Header;
    const-string v16, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/shaded/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v2

    .line 76
    .local v2, "contentLengthHeader":Lorg/shaded/apache/http/Header;
    if-eqz v15, :cond_7

    .line 77
    const/4 v7, 0x0

    .line 79
    .local v7, "encodings":[Lorg/shaded/apache/http/HeaderElement;
    :try_start_0
    invoke-interface {v15}, Lorg/shaded/apache/http/Header;->getElements()[Lorg/shaded/apache/http/HeaderElement;
    :try_end_0
    .catch Lorg/shaded/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 85
    if-eqz v14, :cond_2

    .line 87
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    .line 88
    aget-object v16, v7, v10

    invoke-interface/range {v16 .. v16}, Lorg/shaded/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "encoding":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    const-string v16, "chunked"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "identity"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 92
    new-instance v16, Lorg/shaded/apache/http/ProtocolException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Unsupported transfer encoding: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 80
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v10    # "i":I
    :catch_0
    move-exception v13

    .line 81
    .local v13, "px":Lorg/shaded/apache/http/ParseException;
    new-instance v16, Lorg/shaded/apache/http/ProtocolException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Invalid Transfer-Encoding header value: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 87
    .end local v13    # "px":Lorg/shaded/apache/http/ParseException;
    .restart local v6    # "encoding":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 97
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_2
    array-length v11, v7

    .line 98
    .local v11, "len":I
    const-string v16, "identity"

    invoke-interface {v15}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 99
    const-wide/16 v4, -0x1

    .line 133
    .end local v7    # "encodings":[Lorg/shaded/apache/http/HeaderElement;
    .end local v11    # "len":I
    :cond_3
    :goto_1
    return-wide v4

    .line 100
    .restart local v7    # "encodings":[Lorg/shaded/apache/http/HeaderElement;
    .restart local v11    # "len":I
    :cond_4
    if-lez v11, :cond_5

    const-string v16, "chunked"

    add-int/lit8 v17, v11, -0x1

    aget-object v17, v7, v17

    invoke-interface/range {v17 .. v17}, Lorg/shaded/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 102
    const-wide/16 v4, -0x2

    goto :goto_1

    .line 104
    :cond_5
    if-eqz v14, :cond_6

    .line 105
    new-instance v16, Lorg/shaded/apache/http/ProtocolException;

    const-string v17, "Chunk-encoding must be the last one applied"

    invoke-direct/range {v16 .. v17}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 107
    :cond_6
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 109
    .end local v7    # "encodings":[Lorg/shaded/apache/http/HeaderElement;
    .end local v11    # "len":I
    :cond_7
    if-eqz v2, :cond_b

    .line 110
    const-wide/16 v4, -0x1

    .line 111
    .local v4, "contentlen":J
    const-string v16, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/shaded/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/shaded/apache/http/Header;

    move-result-object v9

    .line 112
    .local v9, "headers":[Lorg/shaded/apache/http/Header;
    if-eqz v14, :cond_8

    array-length v0, v9

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 113
    new-instance v16, Lorg/shaded/apache/http/ProtocolException;

    const-string v17, "Multiple content length headers"

    invoke-direct/range {v16 .. v17}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 115
    :cond_8
    array-length v0, v9

    move/from16 v16, v0

    add-int/lit8 v10, v16, -0x1

    .restart local v10    # "i":I
    :goto_2
    if-ltz v10, :cond_9

    .line 116
    aget-object v8, v9, v10

    .line 118
    .local v8, "header":Lorg/shaded/apache/http/Header;
    :try_start_1
    invoke-interface {v8}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 127
    .end local v8    # "header":Lorg/shaded/apache/http/Header;
    :cond_9
    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-gez v16, :cond_3

    .line 130
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 120
    .restart local v8    # "header":Lorg/shaded/apache/http/Header;
    :catch_1
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/NumberFormatException;
    if-eqz v14, :cond_a

    .line 122
    new-instance v16, Lorg/shaded/apache/http/ProtocolException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Invalid content length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-interface {v8}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 115
    :cond_a
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 133
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "contentlen":J
    .end local v8    # "header":Lorg/shaded/apache/http/Header;
    .end local v9    # "headers":[Lorg/shaded/apache/http/Header;
    .end local v10    # "i":I
    :cond_b
    const-wide/16 v4, -0x1

    goto/16 :goto_1
.end method
