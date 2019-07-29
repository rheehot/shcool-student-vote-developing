.class public Lorg/shaded/apache/http/client/protocol/RequestDefaultHeaders;
.super Ljava/lang/Object;
.source "RequestDefaultHeaders.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
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
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP request may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_0
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "method":Ljava/lang/String;
    const-string v4, "CONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    :cond_1
    return-void

    .line 67
    :cond_2
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.default-headers"

    invoke-interface {v4, v5}, Lorg/shaded/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 70
    .local v1, "defHeaders":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/shaded/apache/http/Header;>;"
    if-eqz v1, :cond_1

    .line 71
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/Header;

    .line 72
    .local v0, "defHeader":Lorg/shaded/apache/http/Header;
    invoke-interface {p1, v0}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Lorg/shaded/apache/http/Header;)V

    goto :goto_0
.end method
