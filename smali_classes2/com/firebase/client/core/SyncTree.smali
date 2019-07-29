.class public Lcom/firebase/client/core/SyncTree;
.super Ljava/lang/Object;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;,
        Lcom/firebase/client/core/SyncTree$ListenContainer;,
        Lcom/firebase/client/core/SyncTree$ListenProvider;,
        Lcom/firebase/client/core/SyncTree$CompletionListener;,
        Lcom/firebase/client/core/SyncTree$SyncTreeHash;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SIZE_THRESHOLD_FOR_COMPOUND_HASH:J = 0x400L


# instance fields
.field private final keepSyncedQueries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/core/view/QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private final listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;

.field private final logger:Lcom/firebase/client/utilities/LogWrapper;

.field private nextQueryTag:J

.field private final pendingWriteTree:Lcom/firebase/client/core/WriteTree;

.field private final persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

.field private final queryToTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Lcom/firebase/client/core/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/core/SyncPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final tagToQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Tag;",
            "Lcom/firebase/client/core/view/QuerySpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/SyncTree;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/persistence/PersistenceManager;Lcom/firebase/client/core/SyncTree$ListenProvider;)V
    .locals 2
    .param p1, "context"    # Lcom/firebase/client/core/Context;
    .param p2, "persistenceManager"    # Lcom/firebase/client/core/persistence/PersistenceManager;
    .param p3, "listenProvider"    # Lcom/firebase/client/core/SyncTree$ListenProvider;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/firebase/client/core/SyncTree;->nextQueryTag:J

    .line 122
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 123
    new-instance v0, Lcom/firebase/client/core/WriteTree;

    invoke-direct {v0}, Lcom/firebase/client/core/WriteTree;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/SyncTree;->pendingWriteTree:Lcom/firebase/client/core/WriteTree;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    .line 127
    iput-object p3, p0, Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;

    .line 128
    iput-object p2, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    .line 129
    const-string v0, "SyncTree"

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/SyncTree;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->tagForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "x2"    # Lcom/firebase/client/core/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/SyncTree;->setupListener(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/utilities/ImmutableTree;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/firebase/client/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/firebase/client/core/SyncTree;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->removeTags(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/operation/Operation;
    .param p2, "x2"    # Lcom/firebase/client/core/utilities/ImmutableTree;
    .param p3, "x3"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "x4"    # Lcom/firebase/client/core/WriteTreeRef;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/core/SyncTree;->applyOperationDescendantsHelper(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->pendingWriteTree:Lcom/firebase/client/core/WriteTree;

    return-object v0
.end method

.method static synthetic access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/operation/Operation;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->applyOperationToSyncPoints(Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/Tag;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->queryForTag(Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "x2"    # Lcom/firebase/client/core/operation/Operation;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/SyncTree;->applyTaggedOperation(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    return-object v0
.end method

.method static synthetic access$702(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;
    .param p1, "x1"    # Lcom/firebase/client/core/utilities/ImmutableTree;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    return-object p1
.end method

.method static synthetic access$800(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/Tag;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/SyncTree;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/firebase/client/core/SyncTree;->getNextQueryTag()Lcom/firebase/client/core/Tag;

    move-result-object v0

    return-object v0
.end method

.method private applyOperationDescendantsHelper(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;
    .locals 8
    .param p1, "operation"    # Lcom/firebase/client/core/operation/Operation;
    .param p3, "serverCache"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/operation/Operation;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/core/SyncPoint;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/WriteTreeRef;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    .local p2, "syncPointTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/core/SyncPoint;

    .line 810
    .local v6, "syncPoint":Lcom/firebase/client/core/SyncPoint;
    if-nez p3, :cond_1

    if-eqz v6, :cond_1

    .line 811
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 816
    .local v2, "resolvedServerCache":Lcom/firebase/client/snapshot/Node;
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v7

    new-instance v0, Lcom/firebase/client/core/SyncTree$14;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/SyncTree$14;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/operation/Operation;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    .line 832
    if-eqz v6, :cond_0

    .line 833
    invoke-virtual {v6, p1, p4, v2}, Lcom/firebase/client/core/SyncPoint;->applyOperation(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 836
    :cond_0
    return-object v5

    .line 813
    .end local v2    # "resolvedServerCache":Lcom/firebase/client/snapshot/Node;
    .end local v5    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    :cond_1
    move-object v2, p3

    .restart local v2    # "resolvedServerCache":Lcom/firebase/client/snapshot/Node;
    goto :goto_0
.end method

.method private applyOperationHelper(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;
    .locals 8
    .param p1, "operation"    # Lcom/firebase/client/core/operation/Operation;
    .param p3, "serverCache"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/operation/Operation;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/core/SyncPoint;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/WriteTreeRef;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    .local p2, "syncPointTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/operation/Operation;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 774
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/core/SyncTree;->applyOperationDescendantsHelper(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;

    move-result-object v5

    .line 797
    :cond_0
    :goto_0
    return-object v5

    .line 776
    :cond_1
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/core/SyncPoint;

    .line 779
    .local v6, "syncPoint":Lcom/firebase/client/core/SyncPoint;
    if-nez p3, :cond_2

    if-eqz v6, :cond_2

    .line 780
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p3

    .line 783
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/operation/Operation;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 785
    .local v0, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/operation/Operation;->operationForChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/operation/Operation;

    move-result-object v1

    .line 786
    .local v1, "childOperation":Lcom/firebase/client/core/operation/Operation;
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 787
    .local v3, "childTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 788
    if-eqz p3, :cond_4

    invoke-interface {p3, v0}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 789
    .local v2, "childServerCache":Lcom/firebase/client/snapshot/Node;
    :goto_1
    invoke-virtual {p4, v0}, Lcom/firebase/client/core/WriteTreeRef;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/WriteTreeRef;

    move-result-object v4

    .line 790
    .local v4, "childWritesCache":Lcom/firebase/client/core/WriteTreeRef;
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/firebase/client/core/SyncTree;->applyOperationHelper(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    .end local v2    # "childServerCache":Lcom/firebase/client/snapshot/Node;
    .end local v4    # "childWritesCache":Lcom/firebase/client/core/WriteTreeRef;
    :cond_3
    if-eqz v6, :cond_0

    .line 794
    invoke-virtual {v6, p1, p4, p3}, Lcom/firebase/client/core/SyncPoint;->applyOperation(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 788
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private applyOperationToSyncPoints(Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    .locals 4
    .param p1, "operation"    # Lcom/firebase/client/core/operation/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/operation/Operation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree;->pendingWriteTree:Lcom/firebase/client/core/WriteTree;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/WriteTree;->childWrites(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/WriteTreeRef;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/firebase/client/core/SyncTree;->applyOperationHelper(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private applyTaggedOperation(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    .locals 5
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "operation"    # Lcom/firebase/client/core/operation/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Lcom/firebase/client/core/operation/Operation;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 338
    .local v0, "queryPath":Lcom/firebase/client/core/Path;
    iget-object v3, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v3, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/SyncPoint;

    .line 339
    .local v1, "syncPoint":Lcom/firebase/client/core/SyncPoint;
    sget-boolean v3, Lcom/firebase/client/core/SyncTree;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Missing sync point for query tag that we\'re tracking"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/firebase/client/core/SyncTree;->pendingWriteTree:Lcom/firebase/client/core/WriteTree;

    invoke-virtual {v3, v0}, Lcom/firebase/client/core/WriteTree;->childWrites(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/WriteTreeRef;

    move-result-object v2

    .line 341
    .local v2, "writesCache":Lcom/firebase/client/core/WriteTreeRef;
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lcom/firebase/client/core/SyncPoint;->applyOperation(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private collectDistinctViewsForSubTree(Lcom/firebase/client/core/utilities/ImmutableTree;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/core/SyncPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v0, "accumulator":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/firebase/client/core/view/View;>;"
    invoke-direct {p0, p1, v0}, Lcom/firebase/client/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/List;)V

    .line 623
    return-object v0
.end method

.method private collectDistinctViewsForSubTree(Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/core/SyncPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    .local p2, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/View;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/SyncPoint;

    .line 628
    .local v2, "maybeSyncPoint":Lcom/firebase/client/core/SyncPoint;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    invoke-virtual {v2}, Lcom/firebase/client/core/SyncPoint;->getCompleteView()Lcom/firebase/client/core/view/View;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_0
    return-void

    .line 631
    :cond_1
    if-eqz v2, :cond_2

    .line 632
    invoke-virtual {v2}, Lcom/firebase/client/core/SyncPoint;->getQueryViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 634
    :cond_2
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 635
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {p0, v3, p2}, Lcom/firebase/client/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/List;)V

    goto :goto_0
.end method

.method private getNextQueryTag()Lcom/firebase/client/core/Tag;
    .locals 6

    .prologue
    .line 747
    new-instance v0, Lcom/firebase/client/core/Tag;

    iget-wide v2, p0, Lcom/firebase/client/core/SyncTree;->nextQueryTag:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/firebase/client/core/SyncTree;->nextQueryTag:J

    invoke-direct {v0, v2, v3}, Lcom/firebase/client/core/Tag;-><init>(J)V

    return-object v0
.end method

.method private queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 654
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object p1

    .line 658
    .end local p1    # "query":Lcom/firebase/client/core/view/QuerySpec;
    :cond_0
    return-object p1
.end method

.method private queryForTag(Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .param p1, "tag"    # Lcom/firebase/client/core/Tag;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/QuerySpec;

    return-object v0
.end method

.method private removeEventRegistration(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Ljava/util/List;
    .locals 2
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "eventRegistration"    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "cancelError"    # Lcom/firebase/client/FirebaseError;
        .annotation build Lcom/firebase/client/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
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
    .line 497
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/firebase/client/core/SyncTree$12;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private removeTags(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/QuerySpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/QuerySpec;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/QuerySpec;

    .line 643
    .local v1, "removedQuery":Lcom/firebase/client/core/view/QuerySpec;
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v3

    if-nez v3, :cond_0

    .line 645
    invoke-direct {p0, v1}, Lcom/firebase/client/core/SyncTree;->tagForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v2

    .line 646
    .local v2, "tag":Lcom/firebase/client/core/Tag;
    sget-boolean v3, Lcom/firebase/client/core/SyncTree;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 647
    :cond_1
    iget-object v3, p0, Lcom/firebase/client/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object v3, p0, Lcom/firebase/client/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 651
    .end local v1    # "removedQuery":Lcom/firebase/client/core/view/QuerySpec;
    .end local v2    # "tag":Lcom/firebase/client/core/Tag;
    :cond_2
    return-void
.end method

.method private setupListener(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/View;)V
    .locals 6
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "view"    # Lcom/firebase/client/core/view/View;

    .prologue
    .line 666
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 667
    .local v1, "path":Lcom/firebase/client/core/Path;
    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->tagForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v3

    .line 668
    .local v3, "tag":Lcom/firebase/client/core/Tag;
    new-instance v0, Lcom/firebase/client/core/SyncTree$ListenContainer;

    invoke-direct {v0, p0, p2}, Lcom/firebase/client/core/SyncTree$ListenContainer;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/View;)V

    .line 670
    .local v0, "container":Lcom/firebase/client/core/SyncTree$ListenContainer;
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;

    invoke-direct {p0, p1}, Lcom/firebase/client/core/SyncTree;->queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    invoke-interface {v4, v5, v3, v0, v0}, Lcom/firebase/client/core/SyncTree$ListenProvider;->startListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/SyncTree$CompletionListener;)V

    .line 672
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v4, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v2

    .line 675
    .local v2, "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    if-eqz v3, :cond_0

    .line 676
    sget-boolean v4, Lcom/firebase/client/core/SyncTree;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/SyncPoint;

    invoke-virtual {v4}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "If we\'re adding a query, it shouldn\'t be shadowed"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 679
    :cond_0
    new-instance v4, Lcom/firebase/client/core/SyncTree$13;

    invoke-direct {v4, p0}, Lcom/firebase/client/core/SyncTree$13;-><init>(Lcom/firebase/client/core/SyncTree;)V

    invoke-virtual {v2, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;->foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 696
    :cond_1
    return-void
.end method

.method private tagForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;
    .locals 1
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Tag;

    return-object v0
.end method


# virtual methods
.method public ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;
    .locals 9
    .param p1, "writeId"    # J
    .param p3, "revert"    # Z
    .param p4, "persist"    # Z
    .param p5, "serverClock"    # Lcom/firebase/client/utilities/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/firebase/client/utilities/Clock;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$3;

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/firebase/client/core/SyncTree$3;-><init>(Lcom/firebase/client/core/SyncTree;ZJZLcom/firebase/client/utilities/Clock;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public addEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;
    .locals 2
    .param p1, "eventRegistration"    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/EventRegistration;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$11;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/SyncTree$11;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/EventRegistration;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyListenComplete(Lcom/firebase/client/core/Path;)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$7;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/SyncTree$7;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Path;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyServerMerge(Lcom/firebase/client/core/Path;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "changedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/firebase/client/core/SyncTree$6;-><init>(Lcom/firebase/client/core/SyncTree;Ljava/util/Map;Lcom/firebase/client/core/Path;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "newData"    # Lcom/firebase/client/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/firebase/client/core/SyncTree$5;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyServerRangeMerges(Lcom/firebase/client/core/Path;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/RangeMerge;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "rangeMerges":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/RangeMerge;>;"
    iget-object v5, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v5, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/SyncPoint;

    .line 266
    .local v3, "syncPoint":Lcom/firebase/client/core/SyncPoint;
    if-nez v3, :cond_0

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 280
    :goto_0
    return-object v5

    .line 270
    :cond_0
    invoke-static {p1}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/firebase/client/core/SyncPoint;->viewForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/View;

    move-result-object v4

    .line 271
    .local v4, "view":Lcom/firebase/client/core/view/View;
    if-eqz v4, :cond_2

    .line 272
    invoke-virtual {v4}, Lcom/firebase/client/core/view/View;->getServerCache()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 273
    .local v2, "serverNode":Lcom/firebase/client/snapshot/Node;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/RangeMerge;

    .line 274
    .local v1, "merge":Lcom/firebase/client/core/RangeMerge;
    invoke-virtual {v1, v2}, Lcom/firebase/client/core/RangeMerge;->applyTo(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 275
    goto :goto_1

    .line 276
    .end local v1    # "merge":Lcom/firebase/client/core/RangeMerge;
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/firebase/client/core/SyncTree;->applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 280
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "serverNode":Lcom/firebase/client/snapshot/Node;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method public applyTaggedListenComplete(Lcom/firebase/client/core/Tag;)Ljava/util/List;
    .locals 2
    .param p1, "tag"    # Lcom/firebase/client/core/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Tag;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$8;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/SyncTree$8;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyTaggedQueryMerge(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/core/Tag;)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "tag"    # Lcom/firebase/client/core/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/core/Tag;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "changedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/firebase/client/core/SyncTree$10;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/Path;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyTaggedQueryOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Tag;)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "snap"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "tag"    # Lcom/firebase/client/core/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/Tag;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/firebase/client/core/SyncTree$9;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyTaggedRangeMerges(Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Tag;)Ljava/util/List;
    .locals 8
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "tag"    # Lcom/firebase/client/core/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/RangeMerge;",
            ">;",
            "Lcom/firebase/client/core/Tag;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "rangeMerges":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/RangeMerge;>;"
    invoke-direct {p0, p3}, Lcom/firebase/client/core/SyncTree;->queryForTag(Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    .line 287
    .local v2, "query":Lcom/firebase/client/core/view/QuerySpec;
    if-eqz v2, :cond_4

    .line 288
    sget-boolean v6, Lcom/firebase/client/core/SyncTree;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 289
    :cond_0
    iget-object v6, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/SyncPoint;

    .line 290
    .local v4, "syncPoint":Lcom/firebase/client/core/SyncPoint;
    sget-boolean v6, Lcom/firebase/client/core/SyncTree;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez v4, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Missing sync point for query tag that we\'re tracking"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 291
    :cond_1
    invoke-virtual {v4, v2}, Lcom/firebase/client/core/SyncPoint;->viewForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/View;

    move-result-object v5

    .line 292
    .local v5, "view":Lcom/firebase/client/core/view/View;
    sget-boolean v6, Lcom/firebase/client/core/SyncTree;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Missing view for query tag that we\'re tracking"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 293
    :cond_2
    invoke-virtual {v5}, Lcom/firebase/client/core/view/View;->getServerCache()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 294
    .local v3, "serverNode":Lcom/firebase/client/snapshot/Node;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/RangeMerge;

    .line 295
    .local v1, "merge":Lcom/firebase/client/core/RangeMerge;
    invoke-virtual {v1, v3}, Lcom/firebase/client/core/RangeMerge;->applyTo(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 296
    goto :goto_0

    .line 297
    .end local v1    # "merge":Lcom/firebase/client/core/RangeMerge;
    :cond_3
    invoke-virtual {p0, p1, v3, p3}, Lcom/firebase/client/core/SyncTree;->applyTaggedQueryOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Tag;)Ljava/util/List;

    move-result-object v6

    .line 300
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "serverNode":Lcom/firebase/client/snapshot/Node;
    .end local v4    # "syncPoint":Lcom/firebase/client/core/SyncPoint;
    .end local v5    # "view":Lcom/firebase/client/core/view/View;
    :goto_1
    return-object v6

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_1
.end method

.method public applyUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/CompoundWrite;JZ)Ljava/util/List;
    .locals 10
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "unresolvedChildren"    # Lcom/firebase/client/core/CompoundWrite;
    .param p3, "children"    # Lcom/firebase/client/core/CompoundWrite;
    .param p4, "writeId"    # J
    .param p6, "persist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/CompoundWrite;",
            "Lcom/firebase/client/core/CompoundWrite;",
            "JZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$2;

    move-object v2, p0

    move/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/firebase/client/core/SyncTree$2;-><init>(Lcom/firebase/client/core/SyncTree;ZLcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;JLcom/firebase/client/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public applyUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;JZZ)Ljava/util/List;
    .locals 10
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "newDataUnresolved"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "newData"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "writeId"    # J
    .param p6, "visible"    # Z
    .param p7, "persist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/snapshot/Node;",
            "JZZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    if-nez p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$1;

    move-object v2, p0

    move/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/firebase/client/core/SyncTree$1;-><init>(Lcom/firebase/client/core/SyncTree;ZLcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;JLcom/firebase/client/snapshot/Node;Z)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/core/Path;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;
    .locals 9
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 719
    .local p2, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 720
    .local v6, "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    invoke-virtual {v6}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/SyncPoint;

    .line 721
    .local v0, "currentSyncPoint":Lcom/firebase/client/core/SyncPoint;
    const/4 v5, 0x0

    .line 722
    .local v5, "serverCache":Lcom/firebase/client/snapshot/Node;
    move-object v3, p1

    .line 723
    .local v3, "pathToFollow":Lcom/firebase/client/core/Path;
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 725
    .local v2, "pathSoFar":Lcom/firebase/client/core/Path;
    :cond_0
    invoke-virtual {v3}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 726
    .local v1, "front":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {v3}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 727
    invoke-virtual {v2, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 728
    invoke-static {v2, p1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v4

    .line 729
    .local v4, "relativePath":Lcom/firebase/client/core/Path;
    if-eqz v1, :cond_3

    invoke-virtual {v6, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v6

    .line 730
    :goto_0
    invoke-virtual {v6}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentSyncPoint":Lcom/firebase/client/core/SyncPoint;
    check-cast v0, Lcom/firebase/client/core/SyncPoint;

    .line 731
    .restart local v0    # "currentSyncPoint":Lcom/firebase/client/core/SyncPoint;
    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {v0, v4}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 734
    :cond_1
    invoke-virtual {v3}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    .line 735
    :cond_2
    iget-object v7, p0, Lcom/firebase/client/core/SyncTree;->pendingWriteTree:Lcom/firebase/client/core/WriteTree;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v5, p2, v8}, Lcom/firebase/client/core/WriteTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    return-object v7

    .line 729
    :cond_3
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v6

    goto :goto_0
.end method

.method getSyncPointTree()Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/core/SyncPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keepSynced(Lcom/firebase/client/core/view/QuerySpec;Z)V
    .locals 1
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "keep"    # Z

    .prologue
    .line 606
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;-><init>(Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/SyncTree;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    .line 609
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;-><init>(Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/SyncTree;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    .line 612
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeAllEventRegistrations(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/FirebaseError;)Ljava/util/List;
    .locals 1
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "error"    # Lcom/firebase/client/FirebaseError;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Lcom/firebase/client/FirebaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/core/SyncTree;->removeEventRegistration(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    new-instance v1, Lcom/firebase/client/core/SyncTree$4;

    invoke-direct {v1, p0}, Lcom/firebase/client/core/SyncTree$4;-><init>(Lcom/firebase/client/core/SyncTree;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;
    .locals 2
    .param p1, "eventRegistration"    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/EventRegistration;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/firebase/client/core/SyncTree;->removeEventRegistration(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
