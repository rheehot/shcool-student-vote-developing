.class public Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "NumberDeserializers.java"


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigIntegerDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->instance:Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 522
    const-class v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 532
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 533
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 547
    :cond_0
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 549
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0

    .line 536
    :pswitch_0
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 542
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_2
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/core/JsonToken;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 552
    :cond_3
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v2, "not a valid representation"

    invoke-virtual {p2, v1, v0, v2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
