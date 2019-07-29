.class public Lcom/firebase/client/core/view/ViewCache;
.super Ljava/lang/Object;
.source "ViewCache.java"


# instance fields
.field private final eventSnap:Lcom/firebase/client/core/view/CacheNode;

.field private final serverSnap:Lcom/firebase/client/core/view/CacheNode;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/view/CacheNode;Lcom/firebase/client/core/view/CacheNode;)V
    .locals 0
    .param p1, "eventSnap"    # Lcom/firebase/client/core/view/CacheNode;
    .param p2, "serverSnap"    # Lcom/firebase/client/core/view/CacheNode;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/firebase/client/core/view/ViewCache;->eventSnap:Lcom/firebase/client/core/view/CacheNode;

    .line 14
    iput-object p2, p0, Lcom/firebase/client/core/view/ViewCache;->serverSnap:Lcom/firebase/client/core/view/CacheNode;

    .line 15
    return-void
.end method


# virtual methods
.method public getCompleteEventSnap()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewCache;->eventSnap:Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/ViewCache;->eventSnap:Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewCache;->serverSnap:Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/ViewCache;->serverSnap:Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventCache()Lcom/firebase/client/core/view/CacheNode;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewCache;->eventSnap:Lcom/firebase/client/core/view/CacheNode;

    return-object v0
.end method

.method public getServerCache()Lcom/firebase/client/core/view/CacheNode;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewCache;->serverSnap:Lcom/firebase/client/core/view/CacheNode;

    return-object v0
.end method

.method public updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;
    .locals 3
    .param p1, "eventSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "complete"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 18
    new-instance v0, Lcom/firebase/client/core/view/ViewCache;

    new-instance v1, Lcom/firebase/client/core/view/CacheNode;

    invoke-direct {v1, p1, p2, p3}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    iget-object v2, p0, Lcom/firebase/client/core/view/ViewCache;->serverSnap:Lcom/firebase/client/core/view/CacheNode;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/view/ViewCache;-><init>(Lcom/firebase/client/core/view/CacheNode;Lcom/firebase/client/core/view/CacheNode;)V

    return-object v0
.end method

.method public updateServerSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;
    .locals 3
    .param p1, "serverSnap"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "complete"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 22
    new-instance v0, Lcom/firebase/client/core/view/ViewCache;

    iget-object v1, p0, Lcom/firebase/client/core/view/ViewCache;->eventSnap:Lcom/firebase/client/core/view/CacheNode;

    new-instance v2, Lcom/firebase/client/core/view/CacheNode;

    invoke-direct {v2, p1, p2, p3}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/view/ViewCache;-><init>(Lcom/firebase/client/core/view/CacheNode;Lcom/firebase/client/core/view/CacheNode;)V

    return-object v0
.end method
