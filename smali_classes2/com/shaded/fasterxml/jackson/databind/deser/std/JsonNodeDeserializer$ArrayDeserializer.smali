.class final Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayDeserializer"
.end annotation


# static fields
.field protected static final _instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;->_instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;->_instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;->deserializeArray(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;

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
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method
