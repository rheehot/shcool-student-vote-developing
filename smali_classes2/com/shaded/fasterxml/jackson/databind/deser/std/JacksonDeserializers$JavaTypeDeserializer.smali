.class public Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "JacksonDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaTypeDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<",
        "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 89
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/JavaType;

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
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
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
