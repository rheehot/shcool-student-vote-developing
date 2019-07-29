.class public Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
.super Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
.source "BrowserClientRequestUrl.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedAuthorizationServerUrl"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "token"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .locals 1
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "responseTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    return-object v0
.end method

.method public varargs setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .locals 1
    .param p1, "responseTypes"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    return-object v0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .locals 1
    .param p1, "scopes"    # [Ljava/lang/String;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;->setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    return-object v0
.end method
