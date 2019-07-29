.class public abstract Lcom/shaded/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
.super Ljava/lang/Object;
.source "BeanDeserializerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyArrayDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 115
    return-object p4
.end method

.method public modifyCollectionDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 123
    return-object p4
.end method

.method public modifyCollectionLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 131
    return-object p4
.end method

.method public modifyDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    return-object p3
.end method

.method public modifyEnumDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 155
    return-object p4
.end method

.method public modifyKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0

    .prologue
    .line 169
    return-object p3
.end method

.method public modifyMapDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/MapType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 139
    return-object p4
.end method

.method public modifyMapLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 147
    return-object p4
.end method

.method public updateBuilder(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)Lcom/shaded/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .locals 0

    .prologue
    .line 74
    return-object p3
.end method

.method public updateProperties(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    return-object p3
.end method
