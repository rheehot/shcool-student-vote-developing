.class public abstract Lcom/firebase/client/snapshot/Index;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/firebase/client/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromQueryDefinition(Ljava/lang/String;)Lcom/firebase/client/snapshot/Index;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, ".value"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/firebase/client/snapshot/ValueIndex;->getInstance()Lcom/firebase/client/snapshot/ValueIndex;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v0, ".key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lcom/firebase/client/snapshot/KeyIndex;->getInstance()Lcom/firebase/client/snapshot/KeyIndex;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "queryDefinition shouldn\'t ever be .priority since it\'s the default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    new-instance v0, Lcom/firebase/client/snapshot/PathIndex;

    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, p0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/PathIndex;-><init>(Lcom/firebase/client/core/Path;)V

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I
    .locals 1
    .param p1, "one"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p2, "two"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p3, "reverse"    # Z

    .prologue
    .line 40
    if-eqz p3, :cond_0

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public abstract getQueryDefinition()Ljava/lang/String;
.end method

.method public indexedValueChanged(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z
    .locals 3
    .param p1, "oldNode"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "newNode"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 12
    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMinName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 13
    .local v1, "oldWrapped":Lcom/firebase/client/snapshot/NamedNode;
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMinName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 14
    .local v0, "newWrapped":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {p0, v1, v0}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract isDefinedOn(Lcom/firebase/client/snapshot/Node;)Z
.end method

.method public abstract makePost(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/NamedNode;
.end method

.method public abstract maxPost()Lcom/firebase/client/snapshot/NamedNode;
.end method

.method public minPost()Lcom/firebase/client/snapshot/NamedNode;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/firebase/client/snapshot/NamedNode;->getMinNode()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method
