.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;
.super Ljava/lang/Object;
.source "Serializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/ser/Serializers$Base;
    }
.end annotation


# virtual methods
.method public abstract findArraySerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
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
.end method

.method public abstract findCollectionLikeSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
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
.end method

.method public abstract findCollectionSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
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
.end method

.method public abstract findMapLikeSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
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
.end method

.method public abstract findMapSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/MapType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
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
.end method

.method public abstract findSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
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
.end method
