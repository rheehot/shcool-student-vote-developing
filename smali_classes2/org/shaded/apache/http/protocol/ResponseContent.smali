.class public Lorg/shaded/apache/http/protocol/ResponseContent;
.super Ljava/lang/Object;
.source "ResponseContent.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpResponseInterceptor;


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
.method public process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
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
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP request may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_0
    const-string v5, "Transfer-Encoding"

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    new-instance v5, Lorg/shaded/apache/http/ProtocolException;

    const-string v6, "Transfer-encoding header already present"

    invoke-direct {v5, v6}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_1
    const-string v5, "Content-Length"

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    new-instance v5, Lorg/shaded/apache/http/ProtocolException;

    const-string v6, "Content-Length header already present"

    invoke-direct {v5, v6}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_2
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v4

    .line 76
    .local v4, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 77
    .local v0, "entity":Lorg/shaded/apache/http/HttpEntity;
    if-eqz v0, :cond_7

    .line 78
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 79
    .local v2, "len":J
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->isChunked()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 80
    const-string v5, "Transfer-Encoding"

    const-string v6, "chunked"

    invoke-interface {p1, v5, v6}, Lorg/shaded/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    :goto_0
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentType()Lorg/shaded/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "Content-Type"

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 87
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentType()Lorg/shaded/apache/http/Header;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpResponse;->addHeader(Lorg/shaded/apache/http/Header;)V

    .line 90
    :cond_4
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentEncoding()Lorg/shaded/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, "Content-Encoding"

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 92
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentEncoding()Lorg/shaded/apache/http/Header;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpResponse;->addHeader(Lorg/shaded/apache/http/Header;)V

    .line 102
    .end local v2    # "len":J
    :cond_5
    :goto_1
    return-void

    .line 81
    .restart local v2    # "len":J
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_3

    .line 82
    const-string v5, "Content-Length"

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/shaded/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v2    # "len":J
    :cond_7
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 96
    .local v1, "status":I
    const/16 v5, 0xcc

    if-eq v1, v5, :cond_5

    const/16 v5, 0x130

    if-eq v1, v5, :cond_5

    const/16 v5, 0xcd

    if-eq v1, v5, :cond_5

    .line 99
    const-string v5, "Content-Length"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Lorg/shaded/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method