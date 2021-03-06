.class public final Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase",
        "<[D>;"
    }
.end annotation


# static fields
.field private static final VALUE_TYPE:Lcom/shaded/fasterxml/jackson/databind/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 605
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;->VALUE_TYPE:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 607
    const-class v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 615
    return-object p0
.end method

.method public acceptJsonFormatVisitor(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 661
    invoke-interface {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_0

    .line 663
    sget-object v1, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NUMBER:Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    invoke-interface {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V

    .line 666
    :cond_0
    return-void
.end method

.method public getContentSerializer()Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;->VALUE_TYPE:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 3

    .prologue
    .line 651
    const-string v0, "array"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 652
    const-string v1, "items"

    const-string v2, "number"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JsonNode;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    .line 653
    return-object v0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 600
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;->hasSingleElement([D)Z

    move-result v0

    return v0
.end method

.method public hasSingleElement([D)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 636
    array-length v1, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 600
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;->isEmpty([D)Z

    move-result v0

    return v0
.end method

.method public isEmpty([D)Z
    .locals 1

    .prologue
    .line 631
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 600
    check-cast p1, [D

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;->serializeContents([DLcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([DLcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 643
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 644
    aget-wide v2, p1, v0

    invoke-virtual {p2, v2, v3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method
