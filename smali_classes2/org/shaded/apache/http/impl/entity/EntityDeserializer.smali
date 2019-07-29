.class public Lorg/shaded/apache/http/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# instance fields
.field private final lenStrategy:Lorg/shaded/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/entity/ContentLengthStrategy;)V
    .locals 2
    .param p1, "lenStrategy"    # Lorg/shaded/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/shaded/apache/http/entity/ContentLengthStrategy;

    .line 77
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/HttpMessage;)Lorg/shaded/apache/http/HttpEntity;
    .locals 2
    .param p1, "inbuffer"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/shaded/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    if-nez p2, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/impl/entity/EntityDeserializer;->doDeserialize(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/HttpMessage;)Lorg/shaded/apache/http/entity/BasicHttpEntity;

    move-result-object v0

    return-object v0
.end method

.method protected doDeserialize(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/HttpMessage;)Lorg/shaded/apache/http/entity/BasicHttpEntity;
    .locals 11
    .param p1, "inbuffer"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/shaded/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    .line 97
    new-instance v2, Lorg/shaded/apache/http/entity/BasicHttpEntity;

    invoke-direct {v2}, Lorg/shaded/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 99
    .local v2, "entity":Lorg/shaded/apache/http/entity/BasicHttpEntity;
    iget-object v3, p0, Lorg/shaded/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/shaded/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v3, p2}, Lorg/shaded/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/shaded/apache/http/HttpMessage;)J

    move-result-wide v4

    .line 100
    .local v4, "len":J
    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 102
    invoke-virtual {v2, v8, v9}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 103
    new-instance v3, Lorg/shaded/apache/http/impl/io/ChunkedInputStream;

    invoke-direct {v3, p1}, Lorg/shaded/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v3}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 114
    :goto_0
    const-string v3, "Content-Type"

    invoke-interface {p2, v3}, Lorg/shaded/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v1

    .line 115
    .local v1, "contentTypeHeader":Lorg/shaded/apache/http/Header;
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v2, v1}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/shaded/apache/http/Header;)V

    .line 118
    :cond_0
    const-string v3, "Content-Encoding"

    invoke-interface {p2, v3}, Lorg/shaded/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v0

    .line 119
    .local v0, "contentEncodingHeader":Lorg/shaded/apache/http/Header;
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v2, v0}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/shaded/apache/http/Header;)V

    .line 122
    :cond_1
    return-object v2

    .line 104
    .end local v0    # "contentEncodingHeader":Lorg/shaded/apache/http/Header;
    .end local v1    # "contentTypeHeader":Lorg/shaded/apache/http/Header;
    :cond_2
    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    .line 105
    invoke-virtual {v2, v10}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 106
    invoke-virtual {v2, v8, v9}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 107
    new-instance v3, Lorg/shaded/apache/http/impl/io/IdentityInputStream;

    invoke-direct {v3, p1}, Lorg/shaded/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v3}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v2, v10}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 110
    invoke-virtual {v2, v4, v5}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 111
    new-instance v3, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;

    invoke-direct {v3, p1, v4, v5}, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v2, v3}, Lorg/shaded/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0
.end method
