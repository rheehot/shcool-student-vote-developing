.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
.super Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
.source "AccessTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshTokenGrant"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "refresh_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>()V

    .line 319
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->REFRESH_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;->grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 323
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "authorizationServerUrl"    # Ljava/lang/String;
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "clientSecret"    # Ljava/lang/String;
    .param p6, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;->REFRESH_TOKEN:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;->grantType:Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$GrantType;

    .line 340
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;->refreshToken:Ljava/lang/String;

    .line 341
    return-void
.end method
