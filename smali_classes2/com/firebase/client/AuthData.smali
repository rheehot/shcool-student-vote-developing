.class public Lcom/firebase/client/AuthData;
.super Ljava/lang/Object;
.source "AuthData.java"


# instance fields
.field private final auth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final expires:J

.field private final provider:Ljava/lang/String;

.field private final providerData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expires"    # J
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "auth":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p7, "providerData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    .line 21
    iput-wide p2, p0, Lcom/firebase/client/AuthData;->expires:J

    .line 22
    iput-object p4, p0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    .line 24
    if-eqz p7, :cond_1

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    .line 25
    if-eqz p6, :cond_0

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    .line 26
    return-void

    :cond_1
    move-object v0, v1

    .line 24
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/firebase/client/AuthData;

    .line 88
    .local v0, "authData":Lcom/firebase/client/AuthData;
    iget-object v3, p0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 89
    :cond_6
    iget-object v3, p0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    iget-object v4, v0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 90
    goto :goto_0

    .line 89
    :cond_8
    iget-object v3, v0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    if-nez v3, :cond_7

    .line 91
    :cond_9
    iget-object v3, p0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    iget-object v4, v0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    if-nez v3, :cond_a

    .line 92
    :cond_c
    iget-object v3, p0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    iget-object v4, v0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 93
    :cond_f
    iget-wide v4, p0, Lcom/firebase/client/AuthData;->expires:J

    iget-wide v6, v0, Lcom/firebase/client/AuthData;->expires:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10

    move v1, v2

    goto :goto_0

    .line 94
    :cond_10
    iget-object v3, p0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_11
    iget-object v3, v0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAuth()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/firebase/client/AuthData;->expires:J

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 102
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 103
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 104
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 105
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 106
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 102
    goto :goto_1

    :cond_3
    move v2, v1

    .line 103
    goto :goto_2

    :cond_4
    move v2, v1

    .line 104
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthData{uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/AuthData;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/AuthData;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/firebase/client/AuthData;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expires=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/AuthData;->expires:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/AuthData;->auth:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", providerData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/AuthData;->providerData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "***"

    goto :goto_0
.end method
