.class public Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$1;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    }
.end annotation


# static fields
.field private static final instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;-><init>()V

    return-void
.end method

.method public static getDeserializer(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    if-ne p0, v0, :cond_0

    .line 33
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;->getInstance()Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;

    if-ne p0, v0, :cond_1

    .line 36
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;->getInstance()Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->deserializeAny(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->deserializeObject(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->deserializeArray(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNullValue()Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->getNullValue()Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method
