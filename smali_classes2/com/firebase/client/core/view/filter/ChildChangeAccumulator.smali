.class public Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;
.super Ljava/lang/Object;
.source "ChildChangeAccumulator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final changeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public getChanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public trackChildChange(Lcom/firebase/client/core/view/Change;)V
    .locals 8
    .param p1, "change"    # Lcom/firebase/client/core/view/Change;

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v3

    .line 22
    .local v3, "type":Lcom/firebase/client/core/view/Event$EventType;
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 23
    .local v0, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    sget-boolean v4, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-eq v3, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Only child changes supported for tracking"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 24
    :cond_0
    sget-boolean v4, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 25
    :cond_1
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/Change;

    .line 27
    .local v1, "oldChange":Lcom/firebase/client/core/view/Change;
    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v2

    .line 28
    .local v2, "oldType":Lcom/firebase/client/core/view/Event$EventType;
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_2

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v2, v4, :cond_2

    .line 29
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v6

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v1    # "oldChange":Lcom/firebase/client/core/view/Change;
    .end local v2    # "oldType":Lcom/firebase/client/core/view/Event$EventType;
    :goto_0
    return-void

    .line 30
    .restart local v1    # "oldChange":Lcom/firebase/client/core/view/Change;
    .restart local v2    # "oldType":Lcom/firebase/client/core/view/Event$EventType;
    :cond_2
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_3

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v2, v4, :cond_3

    .line 31
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_3
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_4

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v2, v4, :cond_4

    .line 33
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getOldIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_4
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_5

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v2, v4, :cond_5

    .line 35
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_5
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_6

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v2, v4, :cond_6

    .line 37
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v5

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getOldIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal combination of changes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " occurred after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    .end local v1    # "oldChange":Lcom/firebase/client/core/view/Change;
    .end local v2    # "oldType":Lcom/firebase/client/core/view/Event$EventType;
    :cond_7
    iget-object v4, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
