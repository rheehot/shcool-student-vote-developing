.class final Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObjectDeserializer"
.end annotation


# static fields
.field protected static final _instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 90
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserializeObject(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 93
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserializeObject(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method
