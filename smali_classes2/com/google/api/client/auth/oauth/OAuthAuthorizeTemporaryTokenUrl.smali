.class public Lcom/google/api/client/auth/oauth/OAuthAuthorizeTemporaryTokenUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "OAuthAuthorizeTemporaryTokenUrl.java"


# instance fields
.field public temporaryToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "oauth_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodedUserAuthorizationUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
