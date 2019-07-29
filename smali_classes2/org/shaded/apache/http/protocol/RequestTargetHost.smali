.class public Lorg/shaded/apache/http/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP request may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP context may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v5

    .line 72
    .local v5, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "method":Ljava/lang/String;
    const-string v6, "CONNECT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v5, v6}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    const-string v6, "Host"

    invoke-interface {p1, v6}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 78
    const-string v6, "http.target_host"

    invoke-interface {p2, v6}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/shaded/apache/http/HttpHost;

    .line 80
    .local v4, "targethost":Lorg/shaded/apache/http/HttpHost;
    if-nez v4, :cond_5

    .line 81
    const-string v6, "http.connection"

    invoke-interface {p2, v6}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/shaded/apache/http/HttpConnection;

    .line 83
    .local v1, "conn":Lorg/shaded/apache/http/HttpConnection;
    instance-of v6, v1, Lorg/shaded/apache/http/HttpInetConnection;

    if-eqz v6, :cond_4

    move-object v6, v1

    .line 86
    check-cast v6, Lorg/shaded/apache/http/HttpInetConnection;

    invoke-interface {v6}, Lorg/shaded/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 87
    .local v0, "address":Ljava/net/InetAddress;
    check-cast v1, Lorg/shaded/apache/http/HttpInetConnection;

    .end local v1    # "conn":Lorg/shaded/apache/http/HttpConnection;
    invoke-interface {v1}, Lorg/shaded/apache/http/HttpInetConnection;->getRemotePort()I

    move-result v3

    .line 88
    .local v3, "port":I
    if-eqz v0, :cond_4

    .line 89
    new-instance v4, Lorg/shaded/apache/http/HttpHost;

    .end local v4    # "targethost":Lorg/shaded/apache/http/HttpHost;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lorg/shaded/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 92
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v3    # "port":I
    .restart local v4    # "targethost":Lorg/shaded/apache/http/HttpHost;
    :cond_4
    if-nez v4, :cond_5

    .line 93
    sget-object v6, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v5, v6}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 96
    new-instance v6, Lorg/shaded/apache/http/ProtocolException;

    const-string v7, "Target host missing"

    invoke-direct {v6, v7}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    :cond_5
    const-string v6, "Host"

    invoke-virtual {v4}, Lorg/shaded/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
