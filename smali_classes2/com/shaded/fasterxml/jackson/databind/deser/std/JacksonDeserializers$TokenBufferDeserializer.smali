.class public Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "JacksonDeserializers.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenBufferDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<",
        "Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)V

    .line 165
    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/shaded/fasterxml/jackson/core/JsonParser;)V

    .line 166
    return-object v0
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
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Lcom/shaded/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v0

    return-object v0
.end method
