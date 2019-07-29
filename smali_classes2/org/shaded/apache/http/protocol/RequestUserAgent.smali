.class public Lorg/shaded/apache/http/protocol/RequestUserAgent;
.super Ljava/lang/Object;
.source "RequestUserAgent.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    const-string v1, "User-Agent"

    invoke-interface {p1, v1}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/shaded/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "useragent":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 64
    const-string v1, "User-Agent"

    invoke-interface {p1, v1, v0}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0    # "useragent":Ljava/lang/String;
    :cond_1
    return-void
.end method
