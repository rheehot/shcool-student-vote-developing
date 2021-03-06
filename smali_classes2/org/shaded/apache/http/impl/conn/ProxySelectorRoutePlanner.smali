.class public Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"

# interfaces
.implements Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner$1;
    }
.end annotation

.annotation build Lorg/shaded/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected proxySelector:Ljava/net/ProxySelector;

.field protected final schemeRegistry:Lorg/shaded/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "schreg"    # Lorg/shaded/apache/http/conn/scheme/SchemeRegistry;
    .param p2, "prosel"    # Ljava/net/ProxySelector;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SchemeRegistry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/shaded/apache/http/conn/scheme/SchemeRegistry;

    .line 96
    iput-object p2, p0, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 97
    return-void
.end method


# virtual methods
.method protected chooseProxy(Ljava/util/List;Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/net/Proxy;
    .locals 5
    .param p2, "target"    # Lorg/shaded/apache/http/HttpHost;
    .param p3, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;",
            "Lorg/shaded/apache/http/HttpHost;",
            "Lorg/shaded/apache/http/HttpRequest;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/net/Proxy;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Proxy list must not be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_1
    const/4 v2, 0x0

    .line 259
    .local v2, "result":Ljava/net/Proxy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 261
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 262
    .local v1, "p":Ljava/net/Proxy;
    sget-object v3, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 259
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :pswitch_0
    move-object v2, v1

    .line 267
    goto :goto_1

    .line 276
    .end local v1    # "p":Ljava/net/Proxy;
    :cond_2
    if-nez v2, :cond_3

    .line 280
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 283
    :cond_3
    return-object v2

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected determineProxy(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpHost;
    .locals 10
    .param p1, "target"    # Lorg/shaded/apache/http/HttpHost;
    .param p2, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 179
    .local v3, "psel":Ljava/net/ProxySelector;
    if-nez v3, :cond_0

    .line 180
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v3

    .line 181
    :cond_0
    if-nez v3, :cond_2

    .line 182
    const/4 v4, 0x0

    .line 207
    :cond_1
    :goto_0
    return-object v4

    .line 184
    :cond_2
    const/4 v5, 0x0

    .line 186
    .local v5, "targetURI":Ljava/net/URI;
    :try_start_0
    new-instance v5, Ljava/net/URI;

    .end local v5    # "targetURI":Ljava/net/URI;
    invoke-virtual {p1}, Lorg/shaded/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .restart local v5    # "targetURI":Ljava/net/URI;
    invoke-virtual {v3, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->chooseProxy(Ljava/util/List;Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/net/Proxy;

    move-result-object v1

    .line 195
    .local v1, "p":Ljava/net/Proxy;
    const/4 v4, 0x0

    .line 196
    .local v4, "result":Lorg/shaded/apache/http/HttpHost;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_1

    .line 198
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/InetSocketAddress;

    if-nez v7, :cond_3

    .line 199
    new-instance v7, Lorg/shaded/apache/http/HttpException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to handle non-Inet proxy address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/shaded/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 187
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v4    # "result":Lorg/shaded/apache/http/HttpHost;
    .end local v5    # "targetURI":Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 188
    .local v6, "usx":Ljava/net/URISyntaxException;
    new-instance v7, Lorg/shaded/apache/http/HttpException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot convert host to URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/shaded/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 202
    .end local v6    # "usx":Ljava/net/URISyntaxException;
    .restart local v1    # "p":Ljava/net/Proxy;
    .restart local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v4    # "result":Lorg/shaded/apache/http/HttpHost;
    .restart local v5    # "targetURI":Ljava/net/URI;
    :cond_3
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 204
    .local v0, "isa":Ljava/net/InetSocketAddress;
    new-instance v4, Lorg/shaded/apache/http/HttpHost;

    .end local v4    # "result":Lorg/shaded/apache/http/HttpHost;
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-direct {v4, v7, v8}, Lorg/shaded/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .restart local v4    # "result":Lorg/shaded/apache/http/HttpHost;
    goto :goto_0
.end method

.method public determineRoute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .locals 8
    .param p1, "target"    # Lorg/shaded/apache/http/HttpHost;
    .param p2, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p2, :cond_0

    .line 124
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Request must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 129
    :cond_0
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6}, Lorg/shaded/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 131
    .local v2, "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 157
    .end local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .local v3, "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    :goto_0
    return-object v3

    .line 137
    .end local v3    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .restart local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    :cond_1
    if-nez p1, :cond_2

    .line 138
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Target host must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_2
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6}, Lorg/shaded/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/shaded/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v0

    .line 144
    .local v0, "local":Ljava/net/InetAddress;
    invoke-virtual {p0, p1, p2, p3}, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->determineProxy(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpHost;

    move-result-object v1

    .line 146
    .local v1, "proxy":Lorg/shaded/apache/http/HttpHost;
    iget-object v6, p0, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/shaded/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lorg/shaded/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/shaded/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/shaded/apache/http/conn/scheme/Scheme;

    move-result-object v4

    .line 150
    .local v4, "schm":Lorg/shaded/apache/http/conn/scheme/Scheme;
    invoke-virtual {v4}, Lorg/shaded/apache/http/conn/scheme/Scheme;->isLayered()Z

    move-result v5

    .line 152
    .local v5, "secure":Z
    if-nez v1, :cond_3

    .line 153
    new-instance v2, Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .end local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v5}, Lorg/shaded/apache/http/conn/routing/HttpRoute;-><init>(Lorg/shaded/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    .restart local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    :goto_1
    move-object v3, v2

    .line 157
    .end local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .restart local v3    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    goto :goto_0

    .line 155
    .end local v3    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .restart local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    :cond_3
    new-instance v2, Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .end local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v1, v5}, Lorg/shaded/apache/http/conn/routing/HttpRoute;-><init>(Lorg/shaded/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/shaded/apache/http/HttpHost;Z)V

    .restart local v2    # "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    goto :goto_1
.end method

.method protected getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p1, "isa"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)V
    .locals 0
    .param p1, "prosel"    # Ljava/net/ProxySelector;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/shaded/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 116
    return-void
.end method
