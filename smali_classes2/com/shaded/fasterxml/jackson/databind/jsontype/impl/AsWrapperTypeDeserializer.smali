.class public Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;
.source "AsWrapperTypeDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4a2f47f9ad71b962L


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    .line 37
    return-void
.end method

.method private final _deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 100
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON Object to contain As.WRAPPER_OBJECT type information for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 105
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON String that contains type id (for subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_findDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 113
    iget-boolean v2, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_typeIdVisible:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_2

    .line 116
    new-instance v2, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)V

    .line 117
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 118
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, p1}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/shaded/fasterxml/jackson/core/JsonParser;)Lcom/shaded/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shaded/fasterxml/jackson/core/util/JsonParserSequence;->createFlattened(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/JsonParser;)Lcom/shaded/fasterxml/jackson/core/util/JsonParserSequence;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 124
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    .line 127
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    const-string v1, "expected closing END_OBJECT after type information and deserialized value"

    invoke-virtual {p2, p1, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 130
    :cond_3
    return-object v0
.end method


# virtual methods
.method public deserializeTypedFromAny(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromArray(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromObject(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromScalar(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    if-ne p1, v0, :cond_0

    .line 45
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getTypeInclusion()Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
