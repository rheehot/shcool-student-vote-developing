.class public Lorg/shaded/apache/http/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"

# interfaces
.implements Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;


# instance fields
.field private final matcher:Lorg/shaded/apache/http/protocol/UriPatternMatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/shaded/apache/http/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lorg/shaded/apache/http/protocol/UriPatternMatcher;-><init>()V

    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/shaded/apache/http/protocol/UriPatternMatcher;

    .line 62
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Lorg/shaded/apache/http/protocol/HttpRequestHandler;
    .locals 1
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/shaded/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/protocol/HttpRequestHandler;

    return-object v0
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "requestUri"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/shaded/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lorg/shaded/apache/http/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;Lorg/shaded/apache/http/protocol/HttpRequestHandler;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/shaded/apache/http/protocol/HttpRequestHandler;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI request pattern may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request handler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/shaded/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lorg/shaded/apache/http/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/shaded/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/UriPatternMatcher;->setHandlers(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/shaded/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/UriPatternMatcher;->unregister(Ljava/lang/String;)V

    .line 88
    return-void
.end method
