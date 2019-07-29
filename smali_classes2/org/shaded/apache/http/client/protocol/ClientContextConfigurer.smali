.class public Lorg/shaded/apache/http/client/protocol/ClientContextConfigurer;
.super Ljava/lang/Object;
.source "ClientContextConfigurer.java"

# interfaces
.implements Lorg/shaded/apache/http/client/protocol/ClientContext;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final context:Lorg/shaded/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/shaded/apache/http/protocol/HttpContext;

    .line 54
    return-void
.end method


# virtual methods
.method public setAuthSchemePref(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/shaded/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/shaded/apache/http/protocol/HttpContext;

    const-string v1, "http.auth.scheme-pref"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public setAuthSchemeRegistry(Lorg/shaded/apache/http/auth/AuthSchemeRegistry;)V
    .locals 2
    .param p1, "registry"    # Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/shaded/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/shaded/apache/http/protocol/HttpContext;

    const-string v1, "http.authscheme-registry"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public setCookieSpecRegistry(Lorg/shaded/apache/http/cookie/CookieSpecRegistry;)V
    .locals 2
    .param p1, "registry"    # Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/shaded/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/shaded/apache/http/protocol/HttpContext;

    const-string v1, "http.cookiespec-registry"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public setCookieStore(Lorg/shaded/apache/http/client/CookieStore;)V
    .locals 2
    .param p1, "store"    # Lorg/shaded/apache/http/client/CookieStore;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/shaded/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/shaded/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public setCredentialsProvider(Lorg/shaded/apache/http/client/CredentialsProvider;)V
    .locals 2
    .param p1, "provider"    # Lorg/shaded/apache/http/client/CredentialsProvider;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/shaded/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/shaded/apache/http/protocol/HttpContext;

    const-string v1, "http.auth.credentials-provider"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
