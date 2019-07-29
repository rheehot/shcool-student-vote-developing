.class public abstract Lcom/shaded/fasterxml/jackson/core/ObjectCodec;
.super Ljava/lang/Object;
.source "ObjectCodec.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createArrayNode()Lcom/shaded/fasterxml/jackson/core/TreeNode;
.end method

.method public abstract createObjectNode()Lcom/shaded/fasterxml/jackson/core/TreeNode;
.end method

.method public getFactory()Lcom/shaded/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/ObjectCodec;->getJsonFactory()Lcom/shaded/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract getJsonFactory()Lcom/shaded/fasterxml/jackson/core/JsonFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readTree(Lcom/shaded/fasterxml/jackson/core/JsonParser;)Lcom/shaded/fasterxml/jackson/core/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/shaded/fasterxml/jackson/core/TreeNode;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/type/ResolvedType;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/core/type/ResolvedType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/core/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/type/ResolvedType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/core/type/ResolvedType;",
            ")",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract treeAsTokens(Lcom/shaded/fasterxml/jackson/core/TreeNode;)Lcom/shaded/fasterxml/jackson/core/JsonParser;
.end method

.method public abstract treeToValue(Lcom/shaded/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/core/TreeNode;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeValue(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method
