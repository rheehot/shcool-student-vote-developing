.class public final Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
.source "TypeWrappedDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final _deserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final _typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 29
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 30
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;->_deserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
