.class public final Lcom/shaded/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
.source "TypeWrappedSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_typeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 28
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 29
    return-void
.end method


# virtual methods
.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_typeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 36
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 47
    return-void
.end method
