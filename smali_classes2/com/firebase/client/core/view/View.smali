.class public Lcom/firebase/client/core/view/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/view/View$OperationResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final eventGenerator:Lcom/firebase/client/core/view/EventGenerator;

.field private final eventRegistrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private final processor:Lcom/firebase/client/core/view/ViewProcessor;

.field private final query:Lcom/firebase/client/core/view/QuerySpec;

.field private viewCache:Lcom/firebase/client/core/view/ViewCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/firebase/client/core/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/View;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/ViewCache;)V
    .locals 12
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "initialViewCache"    # Lcom/firebase/client/core/view/ViewCache;

    .prologue
    const/4 v11, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/core/view/QuerySpec;

    .line 24
    new-instance v3, Lcom/firebase/client/core/view/filter/IndexedFilter;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/firebase/client/core/view/filter/IndexedFilter;-><init>(Lcom/firebase/client/snapshot/Index;)V

    .line 25
    .local v3, "indexFilter":Lcom/firebase/client/core/view/filter/IndexedFilter;
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/firebase/client/core/view/QueryParams;->getNodeFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v2

    .line 26
    .local v2, "filter":Lcom/firebase/client/core/view/filter/NodeFilter;
    new-instance v9, Lcom/firebase/client/core/view/ViewProcessor;

    invoke-direct {v9, v2}, Lcom/firebase/client/core/view/ViewProcessor;-><init>(Lcom/firebase/client/core/view/filter/NodeFilter;)V

    iput-object v9, p0, Lcom/firebase/client/core/view/View;->processor:Lcom/firebase/client/core/view/ViewProcessor;

    .line 27
    invoke-virtual {p2}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v5

    .line 28
    .local v5, "initialServerCache":Lcom/firebase/client/core/view/CacheNode;
    invoke-virtual {p2}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v4

    .line 31
    .local v4, "initialEventCache":Lcom/firebase/client/core/view/CacheNode;
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v9

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 32
    .local v0, "emptyIndexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    invoke-virtual {v5}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v9

    invoke-virtual {v3, v0, v9, v11}, Lcom/firebase/client/core/view/filter/IndexedFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v8

    .line 33
    .local v8, "serverSnap":Lcom/firebase/client/snapshot/IndexedNode;
    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v9

    invoke-interface {v2, v0, v9, v11}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    .line 34
    .local v1, "eventSnap":Lcom/firebase/client/snapshot/IndexedNode;
    new-instance v7, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v5}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v9

    invoke-virtual {v3}, Lcom/firebase/client/core/view/filter/IndexedFilter;->filtersNodes()Z

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    .line 35
    .local v7, "newServerCache":Lcom/firebase/client/core/view/CacheNode;
    new-instance v6, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v9

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v10

    invoke-direct {v6, v1, v9, v10}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    .line 37
    .local v6, "newEventCache":Lcom/firebase/client/core/view/CacheNode;
    new-instance v9, Lcom/firebase/client/core/view/ViewCache;

    invoke-direct {v9, v6, v7}, Lcom/firebase/client/core/view/ViewCache;-><init>(Lcom/firebase/client/core/view/CacheNode;Lcom/firebase/client/core/view/CacheNode;)V

    iput-object v9, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    .line 39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    .line 41
    new-instance v9, Lcom/firebase/client/core/view/EventGenerator;

    invoke-direct {v9, p1}, Lcom/firebase/client/core/view/EventGenerator;-><init>(Lcom/firebase/client/core/view/QuerySpec;)V

    iput-object v9, p0, Lcom/firebase/client/core/view/View;->eventGenerator:Lcom/firebase/client/core/view/EventGenerator;

    .line 42
    return-void
.end method

.method private generateEventsForChanges(Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;
    .locals 3
    .param p2, "eventCache"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p3, "registration"    # Lcom/firebase/client/core/EventRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;",
            "Lcom/firebase/client/snapshot/IndexedNode;",
            "Lcom/firebase/client/core/EventRegistration;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    if-nez p3, :cond_0

    .line 162
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    .line 166
    .local v0, "registrations":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/core/view/View;->eventGenerator:Lcom/firebase/client/core/view/EventGenerator;

    invoke-virtual {v1, p1, p2, v0}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForChanges(Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 164
    .end local v0    # "registrations":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/firebase/client/core/EventRegistration;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "registrations":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    goto :goto_0
.end method


# virtual methods
.method public addEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
    .locals 1
    .param p1, "registration"    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public applyOperation(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/View$OperationResult;
    .locals 6
    .param p1, "operation"    # Lcom/firebase/client/core/operation/Operation;
    .param p2, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p3, "optCompleteServerCache"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/firebase/client/core/operation/Operation;->getType()Lcom/firebase/client/core/operation/Operation$OperationType;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/core/operation/Operation$OperationType;->Merge:Lcom/firebase/client/core/operation/Operation$OperationType;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/operation/Operation;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/operation/OperationSource;->getQueryParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 132
    sget-boolean v3, Lcom/firebase/client/core/view/View;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "We should always have a full cache before handling merges"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 133
    :cond_0
    sget-boolean v3, Lcom/firebase/client/core/view/View;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/ViewCache;->getCompleteEventSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Missing event cache, even though we have a server cache"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    .line 136
    .local v1, "oldViewCache":Lcom/firebase/client/core/view/ViewCache;
    iget-object v3, p0, Lcom/firebase/client/core/view/View;->processor:Lcom/firebase/client/core/view/ViewProcessor;

    invoke-virtual {v3, v1, p1, p2, p3}, Lcom/firebase/client/core/view/ViewProcessor;->applyOperation(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;

    move-result-object v2

    .line 139
    .local v2, "result":Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;
    sget-boolean v3, Lcom/firebase/client/core/view/View;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Once a server snap is complete, it should never go back"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 141
    :cond_2
    iget-object v3, v2, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    iput-object v3, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    .line 142
    iget-object v3, v2, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    iget-object v4, v2, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v4}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/firebase/client/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/DataEvent;>;"
    new-instance v3, Lcom/firebase/client/core/view/View$OperationResult;

    iget-object v4, v2, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    invoke-direct {v3, v0, v4}, Lcom/firebase/client/core/view/View$OperationResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method public getCompleteNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/ViewCache;->getCompleteEventSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 72
    .local v0, "cache":Lcom/firebase/client/snapshot/Node;
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventCache()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEventRegistrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    return-object v0
.end method

.method public getInitialEvents(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;
    .locals 6
    .param p1, "registration"    # Lcom/firebase/client/core/EventRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/EventRegistration;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v4, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v4}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v1

    .line 149
    .local v1, "eventSnap":Lcom/firebase/client/core/view/CacheNode;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, "initialChanges":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 151
    .local v0, "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0    # "child":Lcom/firebase/client/snapshot/NamedNode;
    :cond_0
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/core/view/Change;->valueChange(Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1}, Lcom/firebase/client/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getQuery()Lcom/firebase/client/core/view/QuerySpec;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/core/view/QuerySpec;

    return-object v0
.end method

.method public getServerCache()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Ljava/util/List;
    .locals 10
    .param p1, "registration"    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cancelError"    # Lcom/firebase/client/FirebaseError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/EventRegistration;",
            "Lcom/firebase/client/FirebaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p2, :cond_1

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    sget-boolean v8, Lcom/firebase/client/core/view/View;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "A cancel should cancel all event registrations"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 96
    :cond_0
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v8}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    .line 97
    .local v7, "path":Lcom/firebase/client/core/Path;
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/EventRegistration;

    .line 98
    .local v3, "eventRegistration":Lcom/firebase/client/core/EventRegistration;
    new-instance v8, Lcom/firebase/client/core/view/CancelEvent;

    invoke-direct {v8, v3, p2, v7}, Lcom/firebase/client/core/view/CancelEvent;-><init>(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v0    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    .end local v3    # "eventRegistration":Lcom/firebase/client/core/EventRegistration;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "path":Lcom/firebase/client/core/Path;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 103
    .restart local v0    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    :cond_2
    if-eqz p1, :cond_6

    .line 106
    const/4 v6, -0x1

    .line 107
    .local v6, "indexToDelete":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 108
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/EventRegistration;

    .line 109
    .local v1, "candidate":Lcom/firebase/client/core/EventRegistration;
    invoke-virtual {v1, p1}, Lcom/firebase/client/core/EventRegistration;->isSameListener(Lcom/firebase/client/core/EventRegistration;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 110
    move v6, v4

    .line 111
    invoke-virtual {v1}, Lcom/firebase/client/core/EventRegistration;->isZombied()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 116
    .end local v1    # "candidate":Lcom/firebase/client/core/EventRegistration;
    :cond_3
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 117
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/EventRegistration;

    .line 118
    .local v2, "deletedRegistration":Lcom/firebase/client/core/EventRegistration;
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    invoke-virtual {v2}, Lcom/firebase/client/core/EventRegistration;->zombify()V

    .line 127
    .end local v2    # "deletedRegistration":Lcom/firebase/client/core/EventRegistration;
    .end local v4    # "i":I
    .end local v6    # "indexToDelete":I
    :cond_4
    :goto_2
    return-object v0

    .line 107
    .restart local v1    # "candidate":Lcom/firebase/client/core/EventRegistration;
    .restart local v4    # "i":I
    .restart local v6    # "indexToDelete":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 122
    .end local v1    # "candidate":Lcom/firebase/client/core/EventRegistration;
    .end local v4    # "i":I
    .end local v6    # "indexToDelete":I
    :cond_6
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/EventRegistration;

    .line 123
    .restart local v3    # "eventRegistration":Lcom/firebase/client/core/EventRegistration;
    invoke-virtual {v3}, Lcom/firebase/client/core/EventRegistration;->zombify()V

    goto :goto_3

    .line 125
    .end local v3    # "eventRegistration":Lcom/firebase/client/core/EventRegistration;
    :cond_7
    iget-object v8, p0, Lcom/firebase/client/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_2
.end method
