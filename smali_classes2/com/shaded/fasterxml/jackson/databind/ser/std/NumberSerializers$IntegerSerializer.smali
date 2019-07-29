.class public final Lcom/shaded/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;
.source "NumberSerializers.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/std/NumberSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntegerSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-interface {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-interface {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType(Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;)V

    .line 115
    :cond_0
    return-void
.end method

.method public getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .prologue
    .line 104
    const-string v0, "integer"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Integer;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 99
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
    .line 88
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;->serialize(Ljava/lang/Integer;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
