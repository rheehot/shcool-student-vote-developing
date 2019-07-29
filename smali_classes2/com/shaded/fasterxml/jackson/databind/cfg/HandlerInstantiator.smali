.class public abstract Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;
.super Ljava/lang/Object;
.source "HandlerInstantiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public converterInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/util/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/util/Converter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract deserializerInstance(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract keyDeserializerInstance(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation
.end method

.method public namingStrategyInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/PropertyNamingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/PropertyNamingStrategy;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public objectIdGeneratorInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract serializerInstance(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract typeIdResolverInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;"
        }
    .end annotation
.end method

.method public abstract typeResolverBuilderInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation
.end method

.method public valueInstantiatorInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method
