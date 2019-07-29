.class public Lorg/shaded/apache/http/impl/entity/StrictContentLengthStrategy;
.super Ljava/lang/Object;
.source "StrictContentLengthStrategy.java"

# interfaces
.implements Lorg/shaded/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/shaded/apache/http/HttpMessage;)J
    .locals 9
    .param p1, "message"    # Lorg/shaded/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP message may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 68
    :cond_0
    const-string v6, "Transfer-Encoding"

    invoke-interface {p1, v6}, Lorg/shaded/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v5

    .line 69
    .local v5, "transferEncodingHeader":Lorg/shaded/apache/http/Header;
    const-string v6, "Content-Length"

    invoke-interface {p1, v6}, Lorg/shaded/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v0

    .line 70
    .local v0, "contentLengthHeader":Lorg/shaded/apache/http/Header;
    if-eqz v5, :cond_4

    .line 71
    invoke-interface {v5}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "s":Ljava/lang/String;
    const-string v6, "chunked"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpMessage;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v6

    sget-object v7, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v6, v7}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    new-instance v6, Lorg/shaded/apache/http/ProtocolException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Chunked transfer encoding not allowed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {p1}, Lorg/shaded/apache/http/HttpMessage;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    :cond_1
    const-wide/16 v2, -0x2

    .line 94
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    return-wide v2

    .line 79
    .restart local v4    # "s":Ljava/lang/String;
    :cond_3
    const-string v6, "identity"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 82
    new-instance v6, Lorg/shaded/apache/http/ProtocolException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unsupported transfer encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 85
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 88
    .restart local v4    # "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 89
    .local v2, "len":J
    goto :goto_0

    .line 90
    .end local v2    # "len":J
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/shaded/apache/http/ProtocolException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid content length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
