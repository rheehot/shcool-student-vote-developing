.class public final Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
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
    name = "FloatDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final primitiveInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

.field private static final serialVersionUID:J = 0x1L

.field private static final wrapperInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->primitiveInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    .line 362
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->wrapperInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method static synthetic access$1500()Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->wrapperInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    return-object v0
.end method

.method static synthetic access$700()Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->primitiveInstance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->_parseFloat(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;

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
    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
