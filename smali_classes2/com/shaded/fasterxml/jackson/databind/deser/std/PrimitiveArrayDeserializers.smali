.class public abstract Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;,
        Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 26
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;->instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;

    .line 48
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 29
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;->instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;

    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 33
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;-><init>()V

    goto :goto_0

    .line 35
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 36
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;-><init>()V

    goto :goto_0

    .line 38
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 39
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;-><init>()V

    goto :goto_0

    .line 41
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 42
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;-><init>()V

    goto :goto_0

    .line 44
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 45
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;-><init>()V

    goto :goto_0

    .line 47
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 48
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;-><init>()V

    goto :goto_0

    .line 50
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p3, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
