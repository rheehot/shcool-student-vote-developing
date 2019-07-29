.class public Lcom/firebase/client/core/view/filter/IndexedFilter;
.super Ljava/lang/Object;
.source "IndexedFilter.java"

# interfaces
.implements Lcom/firebase/client/core/view/filter/NodeFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final index:Lcom/firebase/client/snapshot/Index;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/firebase/client/core/view/filter/IndexedFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/filter/IndexedFilter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/snapshot/Index;)V
    .locals 0
    .param p1, "index"    # Lcom/firebase/client/snapshot/Index;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/firebase/client/core/view/filter/IndexedFilter;->index:Lcom/firebase/client/snapshot/Index;

    .line 17
    return-void
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()Lcom/firebase/client/snapshot/Index;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/IndexedFilter;->index:Lcom/firebase/client/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;
    .locals 0

    .prologue
    .line 95
    return-object p0
.end method

.method public updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 4
    .param p1, "indexedNode"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "key"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p3, "newChild"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "affectedPath"    # Lcom/firebase/client/core/Path;
    .param p5, "source"    # Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    .param p6, "optChangeAccumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 22
    sget-boolean v2, Lcom/firebase/client/core/view/filter/IndexedFilter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/core/view/filter/IndexedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {p1, v2}, Lcom/firebase/client/snapshot/IndexedNode;->hasIndex(Lcom/firebase/client/snapshot/Index;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "The index must match the filter"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 24
    .local v1, "snap":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v1, p2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 26
    .local v0, "oldChild":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v0, p4}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {p3, p4}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 55
    .end local p1    # "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_1
    :goto_0
    return-object p1

    .line 38
    .restart local p1    # "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_2
    if-eqz p6, :cond_3

    .line 39
    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 40
    invoke-interface {v1, p2}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    invoke-static {p2, v0}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 51
    :cond_3
    :goto_1
    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_5
    sget-boolean v2, Lcom/firebase/client/core/view/filter/IndexedFilter;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "A child remove without an old child only makes sense on a leaf node"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 45
    :cond_6
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 46
    invoke-static {p2, p3}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    goto :goto_1

    .line 48
    :cond_7
    invoke-static {p2, p3, v0}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    goto :goto_1
.end method

.method public updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 5
    .param p1, "oldSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "newSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p3, "optChangeAccumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 61
    sget-boolean v3, Lcom/firebase/client/core/view/filter/IndexedFilter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/firebase/client/core/view/filter/IndexedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {p2, v3}, Lcom/firebase/client/snapshot/IndexedNode;->hasIndex(Lcom/firebase/client/snapshot/Index;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Can\'t use IndexedNode that doesn\'t have filter\'s index"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 62
    :cond_0
    if-eqz p3, :cond_5

    .line 63
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 64
    .local v0, "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    goto :goto_0

    .line 68
    .end local v0    # "child":Lcom/firebase/client/snapshot/NamedNode;
    :cond_2
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 69
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 70
    .restart local v0    # "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 72
    .local v2, "oldChild":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    goto :goto_1

    .line 76
    .end local v2    # "oldChild":Lcom/firebase/client/snapshot/Node;
    :cond_4
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    goto :goto_1

    .line 81
    .end local v0    # "child":Lcom/firebase/client/snapshot/NamedNode;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object p2
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 1
    .param p1, "oldSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "newPriority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    .end local p1    # "oldSnap":Lcom/firebase/client/snapshot/IndexedNode;
    :goto_0
    return-object p1

    .restart local p1    # "oldSnap":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_0
    invoke-virtual {p1, p2}, Lcom/firebase/client/snapshot/IndexedNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_0
.end method
