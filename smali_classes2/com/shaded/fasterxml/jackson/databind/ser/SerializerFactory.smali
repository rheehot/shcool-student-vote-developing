.class public abstract Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeySerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;->createKeySerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public abstract createKeySerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
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

.method public abstract createSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
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

.method public createSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;->createSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public abstract createTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract withAdditionalKeySerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;
.end method

.method public abstract withAdditionalSerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;
.end method

.method public abstract withSerializerModifier(Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;
.end method
