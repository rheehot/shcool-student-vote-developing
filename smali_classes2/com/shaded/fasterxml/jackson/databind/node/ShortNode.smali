.class public final Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;
.super Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
.source "ShortNode.java"


# instance fields
.field final _value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput-short p1, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return-void
.end method

.method public static valueOf(S)Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;

    invoke-direct {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 1

    .prologue
    .line 84
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 75
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public canConvertToLong()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 72
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 69
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_3
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;

    iget-short v2, p1, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    iget-short v3, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 66
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 107
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 60
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public isShort()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 63
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/shaded/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 53
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

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
    .line 91
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    .line 92
    return-void
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 57
    iget-short v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method
