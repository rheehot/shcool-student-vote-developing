.class public interface abstract Lcom/firebase/client/core/view/filter/NodeFilter;
.super Ljava/lang/Object;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    }
.end annotation


# virtual methods
.method public abstract filtersNodes()Z
.end method

.method public abstract getIndex()Lcom/firebase/client/snapshot/Index;
.end method

.method public abstract getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;
.end method

.method public abstract updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
.end method

.method public abstract updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
.end method

.method public abstract updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
.end method
