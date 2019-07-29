.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;
.super Ljava/lang/Object;
.source "Deserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers$Base;
    }
.end annotation


# virtual methods
.method public abstract findArrayDeserializer(Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findBeanDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findCollectionDeserializer(Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findCollectionLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findEnumDeserializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findMapDeserializer(Lcom/shaded/fasterxml/jackson/databind/type/MapType;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapType;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findMapLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findTreeNodeDeserializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method
