.class public final Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;
.super Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
.source "FloatNode.java"


# instance fields
.field protected final _value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return-void
.end method

.method public static valueOf(F)Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;

    invoke-direct {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/core/io/NumberOutput;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canConvertToLong()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x21000000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, 0x5f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 108
    goto :goto_0

    .line 113
    :cond_3
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;

    iget v2, p1, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 114
    iget v3, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    return v0
.end method

.method public isFloat()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 100
    return-void
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method
