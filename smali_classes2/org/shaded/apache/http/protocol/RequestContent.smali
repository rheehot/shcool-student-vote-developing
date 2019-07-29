.class public Lorg/shaded/apache/http/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


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
.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    instance-of v2, p1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_3

    .line 70
    const-string v2, "Transfer-Encoding"

    invoke-interface {p1, v2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v2, Lorg/shaded/apache/http/ProtocolException;

    const-string v3, "Transfer-encoding header already present"

    invoke-direct {v2, v3}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_1
    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v2, Lorg/shaded/apache/http/ProtocolException;

    const-string v3, "Content-Length header already present"

    invoke-direct {v2, v3}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_2
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v1

    .local v1, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    move-object v2, p1

    .line 77
    check-cast v2, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 78
    .local v0, "entity":Lorg/shaded/apache/http/HttpEntity;
    if-nez v0, :cond_4

    .line 79
    const-string v2, "Content-Length"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0    # "entity":Lorg/shaded/apache/http/HttpEntity;
    .end local v1    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_3
    :goto_0
    return-void

    .line 83
    .restart local v0    # "entity":Lorg/shaded/apache/http/HttpEntity;
    .restart local v1    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_4
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->isChunked()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 84
    :cond_5
    sget-object v2, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    new-instance v2, Lorg/shaded/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Chunked transfer encoding not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_6
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    invoke-interface {p1, v2, v3}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_1
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentType()Lorg/shaded/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 95
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentType()Lorg/shaded/apache/http/Header;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Lorg/shaded/apache/http/Header;)V

    .line 98
    :cond_7
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentEncoding()Lorg/shaded/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "Content-Encoding"

    invoke-interface {p1, v2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentEncoding()Lorg/shaded/apache/http/Header;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Lorg/shaded/apache/http/Header;)V

    goto :goto_0

    .line 90
    :cond_8
    const-string v2, "Content-Length"

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
