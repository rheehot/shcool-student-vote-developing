.class Lcom/firebase/client/core/SyncTree$11;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/firebase/client/core/view/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;

.field final synthetic val$eventRegistration:Lcom/firebase/client/core/EventRegistration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 390
    const-class v0, Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/SyncTree$11;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/EventRegistration;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$11;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 29
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
    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v16

    .line 393
    .local v16, "query":Lcom/firebase/client/core/view/QuerySpec;
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v14

    .line 395
    .local v14, "path":Lcom/firebase/client/core/Path;
    const/16 v18, 0x0

    .line 396
    .local v18, "serverCacheNode":Lcom/firebase/client/snapshot/Node;
    const/4 v11, 0x0

    .line 401
    .local v11, "foundAncestorDefaultView":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v22

    .line 402
    .local v22, "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    move-object v8, v14

    .line 403
    .local v8, "currentPath":Lcom/firebase/client/core/Path;
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_5

    .line 404
    invoke-virtual/range {v22 .. v22}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/firebase/client/core/SyncPoint;

    .line 405
    .local v9, "currentSyncPoint":Lcom/firebase/client/core/SyncPoint;
    if-eqz v9, :cond_1

    .line 406
    if-eqz v18, :cond_2

    .line 408
    :goto_1
    if-nez v11, :cond_0

    invoke-virtual {v9}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v26

    if-eqz v26, :cond_3

    :cond_0
    const/4 v11, 0x1

    .line 410
    :cond_1
    :goto_2
    invoke-virtual {v8}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_4

    const-string v26, ""

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v12

    .line 411
    .local v12, "front":Lcom/firebase/client/snapshot/ChildKey;
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v22

    .line 412
    invoke-virtual {v8}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v8

    .line 413
    goto :goto_0

    .line 406
    .end local v12    # "front":Lcom/firebase/client/snapshot/ChildKey;
    :cond_2
    invoke-virtual {v9, v8}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v18

    goto :goto_1

    .line 408
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 410
    :cond_4
    invoke-virtual {v8}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v12

    goto :goto_3

    .line 416
    .end local v9    # "currentSyncPoint":Lcom/firebase/client/core/SyncPoint;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/firebase/client/core/SyncPoint;

    .line 417
    .local v20, "syncPoint":Lcom/firebase/client/core/SyncPoint;
    if-nez v20, :cond_6

    .line 418
    new-instance v20, Lcom/firebase/client/core/SyncPoint;

    .end local v20    # "syncPoint":Lcom/firebase/client/core/SyncPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/firebase/client/core/SyncPoint;-><init>(Lcom/firebase/client/core/persistence/PersistenceManager;)V

    .line 419
    .restart local v20    # "syncPoint":Lcom/firebase/client/core/SyncPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/firebase/client/core/SyncTree;->access$702(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 425
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->setQueryActive(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 428
    if-eqz v18, :cond_a

    .line 429
    new-instance v17, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    .line 457
    .local v17, "serverCache":Lcom/firebase/client/core/view/CacheNode;
    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SyncPoint;->viewExistsForQuery(Lcom/firebase/client/core/view/QuerySpec;)Z

    move-result v24

    .line 458
    .local v24, "viewAlreadyExists":Z
    if-nez v24, :cond_11

    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v26

    if-nez v26, :cond_11

    .line 460
    sget-boolean v26, Lcom/firebase/client/core/SyncTree$11;->$assertionsDisabled:Z

    if-nez v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$800(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    new-instance v26, Ljava/lang/AssertionError;

    const-string v27, "View does not exist but we have a tag"

    invoke-direct/range {v26 .. v27}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v26

    .line 421
    .end local v17    # "serverCache":Lcom/firebase/client/core/view/CacheNode;
    .end local v24    # "viewAlreadyExists":Z
    :cond_6
    if-nez v11, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v26

    if-eqz v26, :cond_8

    :cond_7
    const/4 v11, 0x1

    .line 422
    :goto_6
    if-eqz v18, :cond_9

    :goto_7
    goto :goto_4

    .line 421
    :cond_8
    const/4 v11, 0x0

    goto :goto_6

    .line 422
    :cond_9
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v18

    goto :goto_7

    .line 432
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->serverCache(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/CacheNode;

    move-result-object v15

    .line 433
    .local v15, "persistentServerCache":Lcom/firebase/client/core/view/CacheNode;
    invoke-virtual {v15}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 434
    move-object/from16 v17, v15

    .restart local v17    # "serverCache":Lcom/firebase/client/core/view/CacheNode;
    goto :goto_5

    .line 436
    .end local v17    # "serverCache":Lcom/firebase/client/core/view/CacheNode;
    :cond_b
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v18

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v19

    .line 438
    .local v19, "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 439
    .local v5, "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual/range {v26 .. v26}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/core/SyncPoint;

    .line 440
    .local v6, "childSyncPoint":Lcom/firebase/client/core/SyncPoint;
    if-eqz v6, :cond_c

    .line 441
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 442
    .local v7, "completeCache":Lcom/firebase/client/snapshot/Node;
    if-eqz v7, :cond_c

    .line 443
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/firebase/client/snapshot/ChildKey;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v7}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v18

    goto :goto_8

    .line 448
    .end local v5    # "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;>;"
    .end local v6    # "childSyncPoint":Lcom/firebase/client/core/SyncPoint;
    .end local v7    # "completeCache":Lcom/firebase/client/snapshot/Node;
    :cond_d
    invoke-virtual {v15}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/NamedNode;

    .line 449
    .local v4, "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v4}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 450
    invoke-virtual {v4}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v26

    invoke-virtual {v4}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v18

    goto :goto_9

    .line 453
    .end local v4    # "child":Lcom/firebase/client/snapshot/NamedNode;
    :cond_f
    new-instance v17, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    .restart local v17    # "serverCache":Lcom/firebase/client/core/view/CacheNode;
    goto/16 :goto_5

    .line 461
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "persistentServerCache":Lcom/firebase/client/core/view/CacheNode;
    .end local v19    # "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    .restart local v24    # "viewAlreadyExists":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$900(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/Tag;

    move-result-object v21

    .line 462
    .local v21, "tag":Lcom/firebase/client/core/Tag;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$800(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$1000(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .end local v21    # "tag":Lcom/firebase/client/core/Tag;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/firebase/client/core/WriteTree;->childWrites(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/WriteTreeRef;

    move-result-object v25

    .line 466
    .local v25, "writesCache":Lcom/firebase/client/core/WriteTreeRef;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/SyncPoint;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/CacheNode;)Ljava/util/List;

    move-result-object v10

    .line 467
    .local v10, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    if-nez v24, :cond_12

    if-nez v11, :cond_12

    .line 468
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SyncPoint;->viewForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/View;

    move-result-object v23

    .line 469
    .local v23, "view":Lcom/firebase/client/core/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/firebase/client/core/SyncTree;->access$1100(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/View;)V

    .line 471
    .end local v23    # "view":Lcom/firebase/client/core/view/View;
    :cond_12
    return-object v10
.end method
