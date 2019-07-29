.class public Lcom/firebase/client/core/view/CacheNode;
.super Ljava/lang/Object;
.source "CacheNode.java"


# instance fields
.field private final filtered:Z

.field private final fullyInitialized:Z

.field private final indexedNode:Lcom/firebase/client/snapshot/IndexedNode;


# direct methods
.method public constructor <init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V
    .locals 0
    .param p1, "node"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "fullyInitialized"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/firebase/client/core/view/CacheNode;->indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    .line 21
    iput-boolean p2, p0, Lcom/firebase/client/core/view/CacheNode;->fullyInitialized:Z

    .line 22
    iput-boolean p3, p0, Lcom/firebase/client/core/view/CacheNode;->filtered:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/firebase/client/core/view/CacheNode;->indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    return-object v0
.end method

.method public getNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/firebase/client/core/view/CacheNode;->indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/firebase/client/core/view/CacheNode;->filtered:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/CacheNode;->indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleteForPath(Lcom/firebase/client/core/Path;)Z
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/firebase/client/core/view/CacheNode;->filtered:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 44
    :goto_0
    return v1

    .line 41
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 44
    .local v0, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {p0, v0}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v1

    goto :goto_0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/firebase/client/core/view/CacheNode;->filtered:Z

    return v0
.end method

.method public isFullyInitialized()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/firebase/client/core/view/CacheNode;->fullyInitialized:Z

    return v0
.end method
