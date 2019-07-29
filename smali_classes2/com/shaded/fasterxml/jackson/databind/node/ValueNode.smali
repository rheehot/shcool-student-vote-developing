.class public abstract Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
.super Lcom/shaded/fasterxml/jackson/databind/node/BaseJsonNode;
.source "ValueNode.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
.end method

.method public deepCopy()Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shaded/fasterxml/jackson/databind/JsonNode;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 28
    return-object p0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;->findParent(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final findParent(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public final findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    return-object p2
.end method

.method public final findValue(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public final findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    return-object p2
.end method

.method public final findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    return-object p2
.end method

.method public bridge synthetic get(I)Lcom/shaded/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;->get(I)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;->get(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public final has(I)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNonNull(I)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNonNull(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic path(I)Lcom/shaded/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;->path(I)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic path(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;->path(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public final path(I)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/shaded/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public final path(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/shaded/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public serializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p3, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;->serialize(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 39
    invoke-virtual {p3, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;->asText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
