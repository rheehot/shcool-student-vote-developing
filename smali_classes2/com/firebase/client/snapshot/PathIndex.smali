.class public Lcom/firebase/client/snapshot/PathIndex;
.super Lcom/firebase/client/snapshot/Index;
.source "PathIndex.java"


# instance fields
.field private final indexPath:Lcom/firebase/client/core/Path;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Path;)V
    .locals 2
    .param p1, "indexPath"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/firebase/client/snapshot/Index;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    .line 14
    return-void
.end method


# virtual methods
.method public compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I
    .locals 5
    .param p1, "a"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p2, "b"    # Lcom/firebase/client/snapshot/NamedNode;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    invoke-interface {v3, v4}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 24
    .local v0, "aChild":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    invoke-interface {v3, v4}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 25
    .local v1, "bChild":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 26
    .local v2, "indexCmp":I
    if-nez v2, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {p2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v2

    .line 29
    .end local v2    # "indexCmp":I
    :cond_0
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 5
    check-cast p1, Lcom/firebase/client/snapshot/NamedNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/firebase/client/snapshot/NamedNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/PathIndex;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/firebase/client/snapshot/PathIndex;

    .line 57
    .local v0, "that":Lcom/firebase/client/snapshot/PathIndex;
    iget-object v3, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    iget-object v4, v0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->wireFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDefinedOn(Lcom/firebase/client/snapshot/Node;)Z
    .locals 1
    .param p1, "snapshot"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    invoke-interface {p1, v0}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makePost(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 3
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "value"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 35
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v1, v2, p2}, Lcom/firebase/client/snapshot/EmptyNode;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 36
    .local v0, "node":Lcom/firebase/client/snapshot/Node;
    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v1, p1, v0}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-object v1
.end method

.method public maxPost()Lcom/firebase/client/snapshot/NamedNode;
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/snapshot/PathIndex;->indexPath:Lcom/firebase/client/core/Path;

    sget-object v3, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {v1, v2, v3}, Lcom/firebase/client/snapshot/EmptyNode;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 42
    .local v0, "node":Lcom/firebase/client/snapshot/Node;
    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMaxName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-object v1
.end method
