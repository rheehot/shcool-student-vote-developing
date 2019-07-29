.class public Lcom/firebase/client/authentication/util/JsonWebToken;
.super Ljava/lang/Object;
.source "JsonWebToken.java"


# instance fields
.field private final claims:Ljava/util/Map;
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

.field private final data:Ljava/lang/Object;

.field private final header:Ljava/util/Map;
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

.field private final signature:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "claims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->header:Ljava/util/Map;

    .line 18
    iput-object p2, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->claims:Ljava/util/Map;

    .line 19
    iput-object p3, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->data:Ljava/lang/Object;

    .line 20
    iput-object p4, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->signature:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/firebase/client/authentication/util/JsonWebToken;
    .locals 9
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "parts":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 55
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not a valid token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_0
    new-instance v3, Lcom/firebase/client/authentication/util/JsonWebToken$1;

    invoke-direct {v3}, Lcom/firebase/client/authentication/util/JsonWebToken$1;-><init>()V

    .line 58
    .local v3, "mapRef":Lcom/shaded/fasterxml/jackson/core/type/TypeReference;, "Lcom/shaded/fasterxml/jackson/core/type/TypeReference<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Lcom/firebase/client/authentication/util/JsonWebToken;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/firebase/client/utilities/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue([BLcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 59
    .local v2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Lcom/firebase/client/authentication/util/JsonWebToken;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/firebase/client/utilities/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue([BLcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 60
    .local v0, "claims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x2

    aget-object v5, v4, v6

    .line 61
    .local v5, "signature":Ljava/lang/String;
    const-string v6, "d"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "data":Ljava/lang/Object;
    const-string v6, "d"

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v6, Lcom/firebase/client/authentication/util/JsonWebToken;

    invoke-direct {v6, v2, v0, v1, v5}, Lcom/firebase/client/authentication/util/JsonWebToken;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v6
.end method

.method private static fixLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    rem-int/lit8 v2, v3, 0x4

    .line 41
    .local v2, "missing":I
    if-nez v2, :cond_0

    .line 48
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 44
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 46
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getClaims()Ljava/util/Map;
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
    .line 28
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->claims:Ljava/util/Map;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
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
    .line 24
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->signature:Ljava/lang/String;

    return-object v0
.end method
