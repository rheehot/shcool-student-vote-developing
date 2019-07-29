.class public final Lcom/shaded/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "StdJdkSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/std/StdJdkSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtomicIntegerSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;Z)V

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
    .line 114
    invoke-interface {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-interface {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType(Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;)V

    .line 118
    :cond_0
    return-void
.end method

.method public getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .prologue
    .line 107
    const-string v0, "integer"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
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
    .line 92
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;->serialize(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 102
    return-void
.end method
