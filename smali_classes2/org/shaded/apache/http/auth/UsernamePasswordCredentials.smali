.class public Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lorg/shaded/apache/http/auth/Credentials;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "usernamePassword"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Username:password string may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 59
    .local v0, "atColon":I
    if-ltz v0, :cond_1

    .line 60
    new-instance v1, Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/shaded/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    .line 61
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_1
    new-instance v1, Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    invoke-direct {v1, p1}, Lorg/shaded/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lorg/shaded/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    .line 81
    iput-object p2, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 105
    :cond_2
    instance-of v3, p1, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;

    .line 107
    .local v0, "that":Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;
    iget-object v3, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    iget-object v4, v0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    invoke-static {v3, v4}, Lorg/shaded/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 108
    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/shaded/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
