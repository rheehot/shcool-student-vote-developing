.class public Lorg/shaded/apache/http/protocol/RequestExpectContinue;
.super Ljava/lang/Object;
.source "RequestExpectContinue.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


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
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    instance-of v2, p1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 67
    check-cast v2, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 69
    .local v0, "entity":Lorg/shaded/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 70
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v1

    .line 71
    .local v1, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lorg/shaded/apache/http/params/HttpProtocolParams;->useExpectContinue(Lorg/shaded/apache/http/params/HttpParams;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string v2, "Expect"

    const-string v3, "100-Continue"

    invoke-interface {p1, v2, v3}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v0    # "entity":Lorg/shaded/apache/http/HttpEntity;
    .end local v1    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_1
    return-void
.end method
