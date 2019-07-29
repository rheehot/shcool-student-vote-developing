.class public abstract Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;,
        Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;,
        Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;,
        Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;,
        Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;,
        Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method public static emptyMap()Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;->instance:Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;

    return-object v0
.end method


# virtual methods
.method public final findAndAddSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p2, p1, p3}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;)V

    return-object v1
.end method

.method public final findAndAddSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p2, p1, p3}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;)V

    return-object v1
.end method

.method public abstract newWith(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;"
        }
    .end annotation
.end method

.method public abstract serializerFor(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
