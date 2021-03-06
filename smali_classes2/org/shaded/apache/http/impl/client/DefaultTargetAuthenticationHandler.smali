.class public Lorg/shaded/apache/http/impl/client/DefaultTargetAuthenticationHandler;
.super Lorg/shaded/apache/http/impl/client/AbstractAuthenticationHandler;
.source "DefaultTargetAuthenticationHandler.java"


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/shaded/apache/http/impl/client/AbstractAuthenticationHandler;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public getChallenges(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Map;
    .locals 3
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/HttpResponse;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/shaded/apache/http/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP response may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    const-string v1, "WWW-Authenticate"

    invoke-interface {p1, v1}, Lorg/shaded/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/shaded/apache/http/Header;

    move-result-object v0

    .line 72
    .local v0, "headers":[Lorg/shaded/apache/http/Header;
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/impl/client/DefaultTargetAuthenticationHandler;->parseChallenges([Lorg/shaded/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public isAuthenticationRequested(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Z
    .locals 3
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP response may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 62
    .local v0, "status":I
    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
