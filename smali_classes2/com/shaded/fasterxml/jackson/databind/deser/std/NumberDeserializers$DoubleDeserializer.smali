.class public final Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "NumberDeserializers.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final primitiveInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

.field private static final serialVersionUID:J = 0x1L

.field private static final wrapperInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 386
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    const-class v1, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->primitiveInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    .line 387
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->wrapperInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method static synthetic access$1100()Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->wrapperInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    return-object v0
.end method

.method static synthetic access$300()Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->primitiveInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->_parseDouble(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;

    move-result-object v0

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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->_parseDouble(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
