.class public final Lorg/shaded/apache/http/auth/BasicUserPrincipal;
.super Ljava/lang/Object;
.source "BasicUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 69
    :cond_2
    instance-of v3, p1, Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;

    .line 71
    .local v0, "that":Lorg/shaded/apache/http/auth/BasicUserPrincipal;
    iget-object v3, p0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    iget-object v4, v0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/shaded/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    const/16 v0, 0x11

    .line 61
    .local v0, "hash":I
    iget-object v1, p0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/shaded/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lorg/shaded/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
