.class public abstract Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;
.super Lcom/shaded/fasterxml/jackson/databind/node/BaseJsonNode;
.source "ContainerNode.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode",
        "<TT;>;>",
        "Lcom/shaded/fasterxml/jackson/databind/node/BaseJsonNode;",
        "Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeCreator;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public final POJONode(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/node/POJONode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/node/POJONode;

    return-object v0
.end method

.method public final arrayNode()Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/shaded/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public abstract asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
.end method

.method public final binaryNode([B)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final binaryNode([BII)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([BII)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([B)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->binaryNode([B)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([BII)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->binaryNode([BII)Lcom/shaded/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final booleanNode(Z)Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic booleanNode(Z)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->booleanNode(Z)Lcom/shaded/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Lcom/shaded/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->get(I)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->get(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract get(I)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
.end method

.method public abstract get(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
.end method

.method public final nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nullNode()Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->nullNode()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(B)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(B)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(D)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(F)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(I)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(J)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(S)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(S)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(B)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(B)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(D)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(D)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(F)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(F)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(I)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(I)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(J)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(J)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Byte;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Byte;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Double;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Double;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Float;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Float;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Integer;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Integer;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Long;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Long;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Short;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Short;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(Ljava/math/BigDecimal;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(Ljava/math/BigInteger;)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(S)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->numberNode(S)Lcom/shaded/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final objectNode()Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final pojoNode(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract removeAll()Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public final textNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/TextNode;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic textNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ContainerNode;->textNode(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method
