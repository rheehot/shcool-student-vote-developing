.class public Lcom/shaded/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "TokenBufferSerializer.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;

    .line 77
    return-void
.end method

.method public getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .prologue
    .line 65
    const-string v0, "any"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;->serialize(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 34
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;->serialize(Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;->serialize(Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 55
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 56
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;->serializeWithType(Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method
