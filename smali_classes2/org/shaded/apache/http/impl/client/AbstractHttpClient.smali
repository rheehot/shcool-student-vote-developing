.class public abstract Lorg/shaded/apache/http/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lorg/shaded/apache/http/client/HttpClient;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private cookieStore:Lorg/shaded/apache/http/client/CookieStore;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private defaultParams:Lorg/shaded/apache/http/params/HttpParams;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final log:Lorg/shaded/apache/commons/logging/Log;

.field private proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;
    .annotation build Lorg/shaded/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "conman"    # Lorg/shaded/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->log:Lorg/shaded/apache/commons/logging/Log;

    .line 235
    iput-object p2, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;

    .line 236
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;

    .line 237
    return-void
.end method

.method private determineTarget(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpHost;
    .locals 5
    .param p1, "request"    # Lorg/shaded/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 584
    .local v1, "target":Lorg/shaded/apache/http/HttpHost;
    invoke-interface {p1}, Lorg/shaded/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 585
    .local v0, "requestURI":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    new-instance v1, Lorg/shaded/apache/http/HttpHost;

    .end local v1    # "target":Lorg/shaded/apache/http/HttpHost;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/shaded/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 591
    .restart local v1    # "target":Lorg/shaded/apache/http/HttpHost;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpRequestInterceptor;

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpResponseInterceptor;

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createAuthSchemeRegistry()Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
.end method

.method protected abstract createClientConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;
.end method

.method protected createClientRequestDirector(Lorg/shaded/apache/http/protocol/HttpRequestExecutor;Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/client/HttpRequestRetryHandler;Lorg/shaded/apache/http/client/RedirectHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/UserTokenHandler;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/client/RequestDirector;
    .locals 14
    .param p1, "requestExec"    # Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lorg/shaded/apache/http/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lorg/shaded/apache/http/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lorg/shaded/apache/http/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lorg/shaded/apache/http/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lorg/shaded/apache/http/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lorg/shaded/apache/http/client/AuthenticationHandler;
    .param p11, "stateHandler"    # Lorg/shaded/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 660
    new-instance v0, Lorg/shaded/apache/http/impl/client/DefaultRequestDirector;

    iget-object v1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->log:Lorg/shaded/apache/commons/logging/Log;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lorg/shaded/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/shaded/apache/commons/logging/Log;Lorg/shaded/apache/http/protocol/HttpRequestExecutor;Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/client/HttpRequestRetryHandler;Lorg/shaded/apache/http/client/RedirectHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/UserTokenHandler;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected abstract createConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
.end method

.method protected abstract createConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;
.end method

.method protected abstract createCookieSpecRegistry()Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
.end method

.method protected abstract createCookieStore()Lorg/shaded/apache/http/client/CookieStore;
.end method

.method protected abstract createCredentialsProvider()Lorg/shaded/apache/http/client/CredentialsProvider;
.end method

.method protected abstract createHttpContext()Lorg/shaded/apache/http/protocol/HttpContext;
.end method

.method protected abstract createHttpParams()Lorg/shaded/apache/http/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
.end method

.method protected abstract createHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
.end method

.method protected abstract createHttpRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
.end method

.method protected abstract createProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;
.end method

.method protected abstract createRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
.end method

.method protected abstract createTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;
.end method

.method protected determineParams(Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/params/HttpParams;
    .locals 4
    .param p1, "req"    # Lorg/shaded/apache/http/HttpRequest;

    .prologue
    const/4 v3, 0x0

    .line 692
    new-instance v0, Lorg/shaded/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/shaded/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/shaded/apache/http/HttpHost;
    .param p2, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/HttpHost;",
            "Lorg/shaded/apache/http/HttpRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 717
    .local p3, "responseHandler":Lorg/shaded/apache/http/client/ResponseHandler;, "Lorg/shaded/apache/http/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "target"    # Lorg/shaded/apache/http/HttpHost;
    .param p2, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/HttpHost;",
            "Lorg/shaded/apache/http/HttpRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 726
    .local p3, "responseHandler":Lorg/shaded/apache/http/client/ResponseHandler;, "Lorg/shaded/apache/http/client/ResponseHandler<+TT;>;"
    if-nez p3, :cond_0

    .line 727
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Response handler must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 731
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v1

    .line 735
    .local v1, "response":Lorg/shaded/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {p3, v1}, Lorg/shaded/apache/http/client/ResponseHandler;->handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 765
    .local v2, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 766
    .local v0, "entity":Lorg/shaded/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    .line 768
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->consumeContent()V

    .line 771
    :cond_1
    return-object v2

    .line 736
    .end local v0    # "entity":Lorg/shaded/apache/http/HttpEntity;
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    .line 737
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {v1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 738
    .restart local v0    # "entity":Lorg/shaded/apache/http/HttpEntity;
    if-eqz v0, :cond_2

    .line 740
    :try_start_1
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 748
    :cond_2
    :goto_0
    instance-of v5, v3, Ljava/lang/Error;

    if-eqz v5, :cond_3

    .line 749
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 741
    .restart local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 744
    .local v4, "t2":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v6, "Error consuming content after an exception."

    invoke-interface {v5, v6, v4}, Lorg/shaded/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 752
    .end local v4    # "t2":Ljava/lang/Throwable;
    :cond_3
    instance-of v5, v3, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_4

    .line 753
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 756
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    instance-of v5, v3, Ljava/io/IOException;

    if-eqz v5, :cond_5

    .line 757
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 760
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_5
    new-instance v5, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v5, v3}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/shaded/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/client/methods/HttpUriRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 700
    .local p2, "responseHandler":Lorg/shaded/apache/http/client/ResponseHandler;, "Lorg/shaded/apache/http/client/ResponseHandler<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "request"    # Lorg/shaded/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/client/methods/HttpUriRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 708
    .local p2, "responseHandler":Lorg/shaded/apache/http/client/ResponseHandler;, "Lorg/shaded/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpHost;

    move-result-object v0

    .line 709
    .local v0, "target":Lorg/shaded/apache/http/HttpHost;
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/shaded/apache/http/HttpHost;
    .param p2, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x0

    check-cast v0, Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 22
    .param p1, "target"    # Lorg/shaded/apache/http/HttpHost;
    .param p2, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 604
    if-nez p2, :cond_0

    .line 605
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 611
    :cond_0
    const/16 v19, 0x0

    .line 612
    .local v19, "execContext":Lorg/shaded/apache/http/protocol/HttpContext;
    const/16 v18, 0x0

    .line 616
    .local v18, "director":Lorg/shaded/apache/http/client/RequestDirector;
    monitor-enter p0

    .line 618
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpContext()Lorg/shaded/apache/http/protocol/HttpContext;

    move-result-object v17

    .line 619
    .local v17, "defaultContext":Lorg/shaded/apache/http/protocol/HttpContext;
    if-nez p3, :cond_1

    .line 620
    move-object/from16 v19, v17

    .line 625
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->copy()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->determineParams(Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v16

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v16}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createClientRequestDirector(Lorg/shaded/apache/http/protocol/HttpRequestExecutor;Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/client/HttpRequestRetryHandler;Lorg/shaded/apache/http/client/RedirectHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/UserTokenHandler;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/client/RequestDirector;

    move-result-object v18

    .line 638
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/shaded/apache/http/client/RequestDirector;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4

    .line 622
    :cond_1
    :try_start_2
    new-instance v20, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;-><init>(Lorg/shaded/apache/http/protocol/HttpContext;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .end local v19    # "execContext":Lorg/shaded/apache/http/protocol/HttpContext;
    .local v20, "execContext":Lorg/shaded/apache/http/protocol/HttpContext;
    move-object/from16 v19, v20

    .end local v20    # "execContext":Lorg/shaded/apache/http/protocol/HttpContext;
    .restart local v19    # "execContext":Lorg/shaded/apache/http/protocol/HttpContext;
    goto :goto_0

    .line 638
    .end local v17    # "defaultContext":Lorg/shaded/apache/http/protocol/HttpContext;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 642
    .restart local v17    # "defaultContext":Lorg/shaded/apache/http/protocol/HttpContext;
    :catch_0
    move-exception v21

    .line 643
    .local v21, "httpException":Lorg/shaded/apache/http/HttpException;
    new-instance v4, Lorg/shaded/apache/http/client/ClientProtocolException;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lorg/shaded/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/shaded/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 554
    const/4 v0, 0x0

    check-cast v0, Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 2
    .param p1, "request"    # Lorg/shaded/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getAuthSchemes()Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createClientConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lorg/shaded/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createCookieStore()Lorg/shaded/apache/http/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lorg/shaded/apache/http/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;

    if-nez v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createCredentialsProvider()Lorg/shaded/apache/http/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lorg/shaded/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;
    .locals 1

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lorg/shaded/apache/http/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lorg/shaded/apache/http/HttpRequestInterceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lorg/shaded/apache/http/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lorg/shaded/apache/http/HttpResponseInterceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    .locals 1

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/shaded/apache/http/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/shaded/apache/http/HttpRequestInterceptor;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/shaded/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/shaded/apache/http/HttpResponseInterceptor;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthSchemes(Lorg/shaded/apache/http/auth/AuthSchemeRegistry;)V
    .locals 1
    .param p1, "authSchemeRegistry"    # Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieSpecs(Lorg/shaded/apache/http/cookie/CookieSpecRegistry;)V
    .locals 1
    .param p1, "cookieSpecRegistry"    # Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieStore(Lorg/shaded/apache/http/client/CookieStore;)V
    .locals 1
    .param p1, "cookieStore"    # Lorg/shaded/apache/http/client/CookieStore;

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCredentialsProvider(Lorg/shaded/apache/http/client/CredentialsProvider;)V
    .locals 1
    .param p1, "credsProvider"    # Lorg/shaded/apache/http/client/CredentialsProvider;

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lorg/shaded/apache/http/client/HttpRequestRetryHandler;)V
    .locals 1
    .param p1, "retryHandler"    # Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKeepAliveStrategy(Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .locals 1
    .param p1, "keepAliveStrategy"    # Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParams(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lorg/shaded/apache/http/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "proxyAuthHandler"    # Lorg/shaded/apache/http/client/AuthenticationHandler;

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRedirectHandler(Lorg/shaded/apache/http/client/RedirectHandler;)V
    .locals 1
    .param p1, "redirectHandler"    # Lorg/shaded/apache/http/client/RedirectHandler;

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReuseStrategy(Lorg/shaded/apache/http/ConnectionReuseStrategy;)V
    .locals 1
    .param p1, "reuseStrategy"    # Lorg/shaded/apache/http/ConnectionReuseStrategy;

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRoutePlanner(Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;)V
    .locals 1
    .param p1, "routePlanner"    # Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lorg/shaded/apache/http/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "targetAuthHandler"    # Lorg/shaded/apache/http/client/AuthenticationHandler;

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserTokenHandler(Lorg/shaded/apache/http/client/UserTokenHandler;)V
    .locals 1
    .param p1, "userTokenHandler"    # Lorg/shaded/apache/http/client/UserTokenHandler;

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
