.class public Lcom/firebase/client/core/view/filter/LimitedFilter;
.super Ljava/lang/Object;
.source "LimitedFilter.java"

# interfaces
.implements Lcom/firebase/client/core/view/filter/NodeFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final index:Lcom/firebase/client/snapshot/Index;

.field private final limit:I

.field private final rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

.field private final reverse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/firebase/client/core/view/filter/LimitedFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/filter/LimitedFilter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/view/QueryParams;)V
    .locals 1
    .param p1, "params"    # Lcom/firebase/client/core/view/QueryParams;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/view/filter/RangedFilter;-><init>(Lcom/firebase/client/core/view/QueryParams;)V

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    .line 21
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    .line 22
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    .line 23
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->isViewFromLeft()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    .line 24
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fullLimitUpdateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 13
    .param p1, "oldIndexed"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p3, "childSnap"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "source"    # Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    .param p5, "optChangeAccumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 44
    sget-boolean v10, Lcom/firebase/client/core/view/filter/LimitedFilter;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    invoke-interface {v10}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    if-eq v10, v11, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 45
    :cond_0
    new-instance v3, Lcom/firebase/client/snapshot/NamedNode;

    move-object/from16 v0, p3

    invoke-direct {v3, p2, v0}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 46
    .local v3, "newChildNamedNode":Lcom/firebase/client/snapshot/NamedNode;
    iget-boolean v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getFirstChild()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v9

    .line 47
    .local v9, "windowBoundary":Lcom/firebase/client/snapshot/NamedNode;
    :goto_0
    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v10, v3}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v2

    .line 48
    .local v2, "inRange":Z
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    invoke-interface {v10, p2}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 49
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    invoke-interface {v10, p2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 50
    .local v7, "oldChildSnap":Lcom/firebase/client/snapshot/Node;
    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v11, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v9, v11}, Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v5

    .line 51
    .local v5, "nextChild":Lcom/firebase/client/snapshot/NamedNode;
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    invoke-virtual {v5}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 56
    :cond_1
    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v11, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v5, v11}, Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v5

    goto :goto_1

    .line 46
    .end local v2    # "inRange":Z
    .end local v5    # "nextChild":Lcom/firebase/client/snapshot/NamedNode;
    .end local v7    # "oldChildSnap":Lcom/firebase/client/snapshot/Node;
    .end local v9    # "windowBoundary":Lcom/firebase/client/snapshot/NamedNode;
    :cond_2
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getLastChild()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v9

    goto :goto_0

    .line 58
    .restart local v2    # "inRange":Z
    .restart local v5    # "nextChild":Lcom/firebase/client/snapshot/NamedNode;
    .restart local v7    # "oldChildSnap":Lcom/firebase/client/snapshot/Node;
    .restart local v9    # "windowBoundary":Lcom/firebase/client/snapshot/NamedNode;
    :cond_3
    if-nez v5, :cond_6

    const/4 v1, 0x1

    .line 59
    .local v1, "compareNext":I
    :goto_2
    if-eqz v2, :cond_7

    invoke-interface/range {p3 .. p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    if-ltz v1, :cond_7

    const/4 v8, 0x1

    .line 60
    .local v8, "remainsInWindow":Z
    :goto_3
    if-eqz v8, :cond_8

    .line 61
    if-eqz p5, :cond_4

    .line 62
    move-object/from16 v0, p3

    invoke-static {p2, v0, v7}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 64
    :cond_4
    invoke-virtual/range {p1 .. p3}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    .line 94
    .end local v1    # "compareNext":I
    .end local v5    # "nextChild":Lcom/firebase/client/snapshot/NamedNode;
    .end local v7    # "oldChildSnap":Lcom/firebase/client/snapshot/Node;
    .end local v8    # "remainsInWindow":Z
    .end local p1    # "oldIndexed":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_5
    :goto_4
    return-object p1

    .line 58
    .restart local v5    # "nextChild":Lcom/firebase/client/snapshot/NamedNode;
    .restart local v7    # "oldChildSnap":Lcom/firebase/client/snapshot/Node;
    .restart local p1    # "oldIndexed":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_6
    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v11, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v10, v5, v3, v11}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v1

    goto :goto_2

    .line 59
    .restart local v1    # "compareNext":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 66
    .restart local v8    # "remainsInWindow":Z
    :cond_8
    if-eqz p5, :cond_9

    .line 67
    invoke-static {p2, v7}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 69
    :cond_9
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v10

    invoke-virtual {p1, p2, v10}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    .line 70
    .local v4, "newIndexed":Lcom/firebase/client/snapshot/IndexedNode;
    if-eqz v5, :cond_b

    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v10, v5}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v6, 0x1

    .line 71
    .local v6, "nextChildInRange":Z
    :goto_5
    if-eqz v6, :cond_c

    .line 72
    if-eqz p5, :cond_a

    .line 73
    invoke-virtual {v5}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v5}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 75
    :cond_a
    invoke-virtual {v5}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v5}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_4

    .line 70
    .end local v6    # "nextChildInRange":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6    # "nextChildInRange":Z
    :cond_c
    move-object p1, v4

    .line 77
    goto :goto_4

    .line 80
    .end local v1    # "compareNext":I
    .end local v4    # "newIndexed":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v5    # "nextChild":Lcom/firebase/client/snapshot/NamedNode;
    .end local v6    # "nextChildInRange":Z
    .end local v7    # "oldChildSnap":Lcom/firebase/client/snapshot/Node;
    .end local v8    # "remainsInWindow":Z
    :cond_d
    invoke-interface/range {p3 .. p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 83
    if-eqz v2, :cond_5

    .line 84
    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v11, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v10, v9, v3, v11}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v10

    if-ltz v10, :cond_5

    .line 85
    if-eqz p5, :cond_e

    .line 86
    invoke-virtual {v9}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v10

    invoke-virtual {v9}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 87
    invoke-static/range {p2 .. p3}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 89
    :cond_e
    invoke-virtual/range {p1 .. p3}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v10

    invoke-virtual {v9}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v11

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto/16 :goto_4
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public getIndex()Lcom/firebase/client/snapshot/Index;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 7
    .param p1, "snap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "key"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p3, "newChild"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "affectedPath"    # Lcom/firebase/client/core/Path;
    .param p5, "source"    # Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    .param p6, "optChangeAccumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v1, p2, p3}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object p3

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    .end local p1    # "snap":Lcom/firebase/client/snapshot/IndexedNode;
    :goto_0
    return-object p1

    .line 35
    .restart local p1    # "snap":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    if-ge v0, v1, :cond_2

    .line 36
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/filter/LimitedFilter;->fullLimitUpdateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_0
.end method

.method public updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 11
    .param p1, "oldSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "newSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p3, "optChangeAccumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 101
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    invoke-interface {v9}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    invoke-interface {v9}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v9

    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-static {v9, v10}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    .line 140
    .local v2, "filtered":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_1
    iget-object v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/firebase/client/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v9

    invoke-interface {v9, p1, v2, p3}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v9

    return-object v9

    .line 105
    .end local v2    # "filtered":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_2
    move-object v2, p2

    .line 107
    .restart local v2    # "filtered":Lcom/firebase/client/snapshot/IndexedNode;
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/firebase/client/snapshot/IndexedNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    .line 112
    iget-boolean v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v9, :cond_4

    .line 113
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->reverseIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 114
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/firebase/client/snapshot/NamedNode;>;"
    iget-object v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/firebase/client/core/view/filter/RangedFilter;->getEndPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v8

    .line 115
    .local v8, "startPost":Lcom/firebase/client/snapshot/NamedNode;
    iget-object v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/firebase/client/core/view/filter/RangedFilter;->getStartPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v1

    .line 116
    .local v1, "endPost":Lcom/firebase/client/snapshot/NamedNode;
    const/4 v7, -0x1

    .line 124
    .local v7, "sign":I
    :goto_0
    const/4 v0, 0x0

    .line 125
    .local v0, "count":I
    const/4 v3, 0x0

    .line 126
    .local v3, "foundStartPost":Z
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 127
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/snapshot/NamedNode;

    .line 128
    .local v6, "next":Lcom/firebase/client/snapshot/NamedNode;
    if-nez v3, :cond_3

    iget-object v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v9, v8, v6}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int/2addr v9, v7

    if-gtz v9, :cond_3

    .line 130
    const/4 v3, 0x1

    .line 132
    :cond_3
    if-eqz v3, :cond_5

    iget v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    if-ge v0, v9, :cond_5

    iget-object v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v9, v6, v1}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int/2addr v9, v7

    if-gtz v9, :cond_5

    const/4 v4, 0x1

    .line 133
    .local v4, "inRange":Z
    :goto_2
    if-eqz v4, :cond_6

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v0    # "count":I
    .end local v1    # "endPost":Lcom/firebase/client/snapshot/NamedNode;
    .end local v3    # "foundStartPost":Z
    .end local v4    # "inRange":Z
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/firebase/client/snapshot/NamedNode;>;"
    .end local v6    # "next":Lcom/firebase/client/snapshot/NamedNode;
    .end local v7    # "sign":I
    .end local v8    # "startPost":Lcom/firebase/client/snapshot/NamedNode;
    :cond_4
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 119
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/firebase/client/snapshot/NamedNode;>;"
    iget-object v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/firebase/client/core/view/filter/RangedFilter;->getStartPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v8

    .line 120
    .restart local v8    # "startPost":Lcom/firebase/client/snapshot/NamedNode;
    iget-object v9, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v9}, Lcom/firebase/client/core/view/filter/RangedFilter;->getEndPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v1

    .line 121
    .restart local v1    # "endPost":Lcom/firebase/client/snapshot/NamedNode;
    const/4 v7, 0x1

    .restart local v7    # "sign":I
    goto :goto_0

    .line 132
    .restart local v0    # "count":I
    .restart local v3    # "foundStartPost":Z
    .restart local v6    # "next":Lcom/firebase/client/snapshot/NamedNode;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 136
    .restart local v4    # "inRange":Z
    :cond_6
    invoke-virtual {v6}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v9

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    goto :goto_1
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 0
    .param p1, "oldSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "newPriority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 146
    return-object p1
.end method
