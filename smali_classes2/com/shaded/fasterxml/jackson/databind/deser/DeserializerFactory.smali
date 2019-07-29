.class public abstract Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;
.super Ljava/lang/Object;
.source "DeserializerFactory.java"


# static fields
.field protected static final NO_DESERIALIZERS:[Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->NO_DESERIALIZERS:[Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createArrayDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;",
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

.method public abstract createBeanDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createBuilderBasedDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createCollectionDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;",
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

.method public abstract createCollectionLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;",
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

.method public abstract createEnumDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
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

.method public abstract createKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createMapDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/MapType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapType;",
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

.method public abstract createMapLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;",
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

.method public abstract createTreeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
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

.method public abstract findTypeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findValueInstantiator(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract mapAbstractType(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract withAbstractTypeResolver(Lcom/shaded/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method

.method public abstract withAdditionalDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method

.method public abstract withAdditionalKeyDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method

.method public abstract withDeserializerModifier(Lcom/shaded/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method

.method public abstract withValueInstantiators(Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method
