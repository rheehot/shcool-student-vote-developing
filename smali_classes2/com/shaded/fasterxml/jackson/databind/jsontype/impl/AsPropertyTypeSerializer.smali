.class public Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.source "AsPropertyTypeSerializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    .line 29
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    .line 35
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_idResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 88
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 95
    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 49
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 57
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 70
    return-void
.end method
