.class public abstract Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.super Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "ArraySerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_handledType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 37
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_handledType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 43
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;)V

    .line 31
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    .line 32
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->hasSingleElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 58
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto :goto_0
.end method

.method protected abstract serializeContents(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation
.end method

.method public final serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 69
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 70
    return-void
.end method
