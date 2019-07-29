.class public Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;
.super Ljava/lang/Object;
.source "JsonNodeFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeCreator;


# static fields
.field private static final decimalsAsIs:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

.field private static final decimalsNormalized:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

.field private static final serialVersionUID:J = -0x2d6844aba38e871aL


# instance fields
.field private final _cfgBigDecimalExact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;-><init>(Z)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsNormalized:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 24
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;-><init>(Z)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsAsIs:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 32
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsNormalized:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;-><init>(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->_cfgBigDecimalExact:Z

    .line 62
    return-void
.end method

.method public static withExactBigDecimals(Z)Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 84
    if-eqz p0, :cond_0

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsAsIs:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsNormalized:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    goto :goto_0
.end method


# virtual methods
.method public POJONode(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/node/POJONode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/POJONode;

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/POJONode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public arrayNode()Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;

    invoke-direct {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public binaryNode([B)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;->valueOf([B)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public binaryNode([BII)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;
    .locals 1

    .prologue
    .line 290
    invoke-static {p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;->valueOf([BII)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([B)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([BII)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([BII)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public booleanNode(Z)Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->getTrue()Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;->getFalse()Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic booleanNode(Z)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/node/NullNode;->getInstance()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nullNode()Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(B)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 120
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/shaded/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(D)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 216
    invoke-static {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/DoubleNode;->valueOf(D)Lcom/shaded/fasterxml/jackson/databind/node/DoubleNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(F)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 198
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->valueOf(F)Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(I)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 156
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/shaded/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(J)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 174
    invoke-static {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/LongNode;->valueOf(J)Lcom/shaded/fasterxml/jackson/databind/node/LongNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->_cfgBigDecimalExact:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/DecimalNode;->valueOf(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/DecimalNode;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/DecimalNode;->ZERO:Lcom/shaded/fasterxml/jackson/databind/node/DecimalNode;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/node/DecimalNode;->valueOf(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/DecimalNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 191
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/BigIntegerNode;->valueOf(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/BigIntegerNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(S)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 138
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->valueOf(S)Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(B)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(B)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(D)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(F)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(I)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(J)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(Ljava/lang/Byte;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 130
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/shaded/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Double;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 2

    .prologue
    .line 226
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/node/DoubleNode;->valueOf(D)Lcom/shaded/fasterxml/jackson/databind/node/DoubleNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Float;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 208
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;->valueOf(F)Lcom/shaded/fasterxml/jackson/databind/node/FloatNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Integer;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 166
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/shaded/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Long;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 2

    .prologue
    .line 183
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/node/LongNode;->valueOf(J)Lcom/shaded/fasterxml/jackson/databind/node/LongNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Short;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 148
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;->valueOf(S)Lcom/shaded/fasterxml/jackson/databind/node/ShortNode;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(S)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(S)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public objectNode()Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public pojoNode(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/POJONode;

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/POJONode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public textNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/TextNode;
    .locals 1

    .prologue
    .line 273
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic textNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method
