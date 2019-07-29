.class public Lcom/shaded/fasterxml/jackson/databind/ser/Serializers$Base;
.super Ljava/lang/Object;
.source "Serializers.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findArraySerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public findCollectionLikeSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public findCollectionSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public findMapLikeSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public findMapSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/MapType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method
