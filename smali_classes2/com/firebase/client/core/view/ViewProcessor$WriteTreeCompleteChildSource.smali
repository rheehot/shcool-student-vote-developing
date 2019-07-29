.class Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;
.super Ljava/lang/Object;
.source "ViewProcessor.java"

# interfaces
.implements Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/ViewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteTreeCompleteChildSource"
.end annotation


# instance fields
.field private final optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

.field private final viewCache:Lcom/firebase/client/core/view/ViewCache;

.field private final writes:Lcom/firebase/client/core/WriteTreeRef;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "writes"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p2, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p3, "optCompleteServerCache"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/firebase/client/core/WriteTreeRef;

    .line 454
    iput-object p2, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    .line 455
    iput-object p3, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    .line 456
    return-void
.end method


# virtual methods
.method public getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;
    .locals 2
    .param p1, "index"    # Lcom/firebase/client/snapshot/Index;
    .param p2, "child"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p3, "reverse"    # Z

    .prologue
    .line 477
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    .line 478
    .local v0, "completeServerData":Lcom/firebase/client/snapshot/Node;
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/firebase/client/core/WriteTreeRef;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/firebase/client/core/WriteTreeRef;->calcNextNodeAfterPost(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/NamedNode;ZLcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v1

    return-object v1

    .line 477
    .end local v0    # "completeServerData":Lcom/firebase/client/snapshot/Node;
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompleteChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 5
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 460
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    .line 461
    .local v0, "node":Lcom/firebase/client/core/view/CacheNode;
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 471
    :goto_0
    return-object v2

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    if-eqz v2, :cond_1

    .line 467
    new-instance v1, Lcom/firebase/client/core/view/CacheNode;

    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    invoke-static {}, Lcom/firebase/client/snapshot/KeyIndex;->getInstance()Lcom/firebase/client/snapshot/KeyIndex;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    .line 471
    .local v1, "serverNode":Lcom/firebase/client/core/view/CacheNode;
    :goto_1
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/firebase/client/core/WriteTreeRef;

    invoke-virtual {v2, p1, v1}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    goto :goto_0

    .line 469
    .end local v1    # "serverNode":Lcom/firebase/client/core/view/CacheNode;
    :cond_1
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v1

    .restart local v1    # "serverNode":Lcom/firebase/client/core/view/CacheNode;
    goto :goto_1
.end method
