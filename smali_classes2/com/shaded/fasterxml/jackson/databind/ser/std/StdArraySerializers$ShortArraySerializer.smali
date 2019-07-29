.class public final Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer",
        "<[S>;"
    }
.end annotation


# static fields
.field private static final VALUE_TYPE:Lcom/shaded/fasterxml/jackson/databind/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->VALUE_TYPE:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    const-class v0, [S

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 226
    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 2
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
    .line 230
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-direct {v0, p0, v1, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-object v0
.end method

.method public acceptJsonFormatVisitor(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    invoke-interface {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    sget-object v1, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->INTEGER:Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    invoke-interface {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V

    .line 291
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
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->VALUE_TYPE:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 3

    .prologue
    .line 276
    const-string v0, "array"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 277
    const-string v1, "items"

    const-string v2, "integer"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JsonNode;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    .line 278
    return-object v0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 216
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->hasSingleElement([S)Z

    move-result v0

    return v0
.end method

.method public hasSingleElement([S)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
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
    .line 216
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->isEmpty([S)Z

    move-result v0

    return v0
.end method

.method public isEmpty([S)Z
    .locals 1

    .prologue
    .line 246
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
    .line 216
    check-cast p1, [S

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->serializeContents([SLcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([SLcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v1, :cond_0

    .line 260
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 261
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4, p2, v3}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V

    .line 262
    aget-short v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    .line 263
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v2, v4, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 268
    aget-short v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    :cond_1
    return-void
.end method
