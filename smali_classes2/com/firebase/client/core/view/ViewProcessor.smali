.class public Lcom/firebase/client/core/view/ViewProcessor;
.super Ljava/lang/Object;
.source "ViewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/view/ViewProcessor$2;,
        Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;,
        Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final filter:Lcom/firebase/client/core/view/filter/NodeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/firebase/client/core/view/ViewProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    .line 431
    new-instance v0, Lcom/firebase/client/core/view/ViewProcessor$1;

    invoke-direct {v0}, Lcom/firebase/client/core/view/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/firebase/client/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/view/filter/NodeFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/firebase/client/core/view/filter/NodeFilter;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    .line 23
    return-void
.end method

.method private ackUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 16
    .param p1, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "ackPath"    # Lcom/firebase/client/core/Path;
    .param p4, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/firebase/client/snapshot/Node;
    .param p6, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/ViewCache;",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/firebase/client/core/WriteTreeRef;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;",
            ")",
            "Lcom/firebase/client/core/view/ViewCache;"
        }
    .end annotation

    .prologue
    .line 334
    .local p3, "affectedTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 371
    .end local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_0
    :goto_0
    return-object p1

    .line 339
    .restart local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v8

    .line 343
    .local v8, "filterServerNode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v14

    .line 344
    .local v14, "serverCache":Lcom/firebase/client/core/view/CacheNode;
    invoke-virtual/range {p3 .. p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForPath(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    :cond_3
    invoke-virtual {v14}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v5

    .line 353
    .local v5, "changedChildren":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual {v14}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/firebase/client/snapshot/NamedNode;

    .line 354
    .local v10, "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v10}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v10}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v5

    .line 355
    goto :goto_1

    .end local v10    # "child":Lcom/firebase/client/snapshot/NamedNode;
    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    .line 356
    invoke-direct/range {v2 .. v9}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 363
    .end local v5    # "changedChildren":Lcom/firebase/client/core/CompoundWrite;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v5

    .line 364
    .restart local v5    # "changedChildren":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual/range {p3 .. p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 365
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Ljava/lang/Boolean;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/core/Path;

    .line 366
    .local v13, "mergePath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v15

    .line 367
    .local v15, "serverCachePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v14, v15}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForPath(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 368
    invoke-virtual {v14}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2, v15}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v5

    goto :goto_2

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Ljava/lang/Boolean;>;"
    .end local v13    # "mergePath":Lcom/firebase/client/core/Path;
    .end local v15    # "serverCachePath":Lcom/firebase/client/core/Path;
    :cond_8
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    .line 371
    invoke-direct/range {v2 .. v9}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 19
    .param p1, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "changedChildren"    # Lcom/firebase/client/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/firebase/client/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    .end local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :goto_0
    return-object p1

    .line 299
    .restart local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_0
    move-object/from16 v3, p1

    .line 300
    .local v3, "curViewCache":Lcom/firebase/client/core/view/ViewCache;
    sget-boolean v2, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v4, "Can\'t have a merge that is an overwrite"

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 302
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    move-object/from16 v10, p3

    .line 307
    .local v10, "actualMerge":Lcom/firebase/client/core/CompoundWrite;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v18

    .line 308
    .local v18, "serverNode":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {v10}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrites()Ljava/util/Map;

    move-result-object v12

    .line 309
    .local v12, "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 310
    .local v14, "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/snapshot/ChildKey;

    .line 311
    .local v13, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v17

    .line 313
    .local v17, "serverChild":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/CompoundWrite;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 314
    .local v5, "newChild":Lcom/firebase/client/snapshot/Node;
    new-instance v4, Lcom/firebase/client/core/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v6, 0x0

    aput-object v13, v2, v6

    invoke-direct {v4, v2}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v3

    goto :goto_2

    .line 305
    .end local v5    # "newChild":Lcom/firebase/client/snapshot/Node;
    .end local v10    # "actualMerge":Lcom/firebase/client/core/CompoundWrite;
    .end local v12    # "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    .end local v13    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v14    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "serverChild":Lcom/firebase/client/snapshot/Node;
    .end local v18    # "serverNode":Lcom/firebase/client/snapshot/Node;
    :cond_3
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v10

    .restart local v10    # "actualMerge":Lcom/firebase/client/core/CompoundWrite;
    goto :goto_1

    .line 317
    .restart local v12    # "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "serverNode":Lcom/firebase/client/snapshot/Node;
    :cond_4
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 318
    .restart local v14    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/snapshot/ChildKey;

    .line 319
    .restart local v13    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/firebase/client/core/CompoundWrite;

    .line 320
    .local v11, "childCompoundWrite":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    if-nez v2, :cond_6

    const/16 v16, 0x1

    .line 321
    .local v16, "isUnknownDeepMerge":Z
    :goto_4
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v16, :cond_5

    .line 322
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v17

    .line 323
    .restart local v17    # "serverChild":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/CompoundWrite;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 324
    .restart local v5    # "newChild":Lcom/firebase/client/snapshot/Node;
    new-instance v4, Lcom/firebase/client/core/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v6, 0x0

    aput-object v13, v2, v6

    invoke-direct {v4, v2}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v3

    goto :goto_3

    .line 320
    .end local v5    # "newChild":Lcom/firebase/client/snapshot/Node;
    .end local v16    # "isUnknownDeepMerge":Z
    .end local v17    # "serverChild":Lcom/firebase/client/snapshot/Node;
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .end local v11    # "childCompoundWrite":Lcom/firebase/client/core/CompoundWrite;
    .end local v13    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v14    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    :cond_7
    move-object/from16 p1, v3

    .line 328
    goto/16 :goto_0
.end method

.method private applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 19
    .param p1, "oldViewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/firebase/client/core/Path;
    .param p3, "changedSnap"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/firebase/client/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v17

    .line 176
    .local v17, "oldServerSnap":Lcom/firebase/client/core/view/CacheNode;
    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    .line 177
    .local v2, "serverFilter":Lcom/firebase/client/core/view/filter/NodeFilter;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v2, v3, v7, v9}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v15

    .line 203
    .local v15, "newServerCache":Lcom/firebase/client/snapshot/IndexedNode;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    const/4 v3, 0x1

    :goto_2
    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3, v7}, Lcom/firebase/client/core/view/ViewCache;->updateServerSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v8

    .line 204
    .local v8, "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    new-instance v11, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v11, v0, v8, v1}, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V

    .local v11, "source":Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    .line 205
    invoke-direct/range {v7 .. v12}, Lcom/firebase/client/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    .end local v8    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    .end local v11    # "source":Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    .end local v15    # "newServerCache":Lcom/firebase/client/snapshot/IndexedNode;
    .end local p1    # "oldViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_1
    return-object p1

    .line 176
    .end local v2    # "serverFilter":Lcom/firebase/client/core/view/filter/NodeFilter;
    .restart local p1    # "oldViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v2

    goto :goto_0

    .line 179
    .restart local v2    # "serverFilter":Lcom/firebase/client/core/view/filter/NodeFilter;
    :cond_3
    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v3

    if-nez v3, :cond_5

    .line 181
    sget-boolean v3, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    const-string v7, "An empty path should have been caught in the other branch"

    invoke-direct {v3, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 182
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    .line 183
    .local v4, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v18

    .line 184
    .local v18, "updatePath":Lcom/firebase/client/core/Path;
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v14

    .line 185
    .local v14, "newChild":Lcom/firebase/client/snapshot/Node;
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3, v4, v14}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v16

    .line 186
    .local v16, "newServerNode":Lcom/firebase/client/snapshot/IndexedNode;
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0, v7}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v15

    .line 187
    .restart local v15    # "newServerCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto :goto_1

    .line 188
    .end local v4    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v14    # "newChild":Lcom/firebase/client/snapshot/Node;
    .end local v15    # "newServerCache":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v16    # "newServerNode":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v18    # "updatePath":Lcom/firebase/client/core/Path;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    .line 189
    .restart local v4    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForPath(Lcom/firebase/client/core/Path;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->size()I

    move-result v3

    const/4 v7, 0x1

    if-gt v3, v7, :cond_1

    .line 193
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v6

    .line 194
    .local v6, "childChangePath":Lcom/firebase/client/core/Path;
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v13

    .line 195
    .local v13, "childNode":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, p3

    invoke-interface {v13, v6, v0}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 196
    .local v5, "newChildNode":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {v4}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 197
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/firebase/client/core/view/filter/NodeFilter;->updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v15

    .restart local v15    # "newServerCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto/16 :goto_1

    .line 199
    .end local v15    # "newServerCache":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    sget-object v7, Lcom/firebase/client/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v15

    .restart local v15    # "newServerCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto/16 :goto_1

    .line 203
    .end local v4    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v5    # "newChildNode":Lcom/firebase/client/snapshot/Node;
    .end local v6    # "childChangePath":Lcom/firebase/client/core/Path;
    .end local v13    # "childNode":Lcom/firebase/client/snapshot/Node;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private applyUserMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 9
    .param p1, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "changedChildren"    # Lcom/firebase/client/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/firebase/client/snapshot/Node;
    .param p6, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 266
    sget-boolean v0, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Can\'t have a merge that is an overwrite"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 267
    :cond_0
    move-object v1, p1

    .line 268
    .local v1, "currentViewCache":Lcom/firebase/client/core/view/ViewCache;
    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 269
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Path;

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 270
    .local v2, "writePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/firebase/client/core/view/ViewProcessor;->cacheHasChild(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    goto :goto_0

    .line 275
    .end local v2    # "writePath":Lcom/firebase/client/core/Path;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :cond_2
    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 276
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Path;

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 277
    .restart local v2    # "writePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/firebase/client/core/view/ViewProcessor;->cacheHasChild(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    goto :goto_1

    .line 281
    .end local v2    # "writePath":Lcom/firebase/client/core/Path;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :cond_4
    return-object v1
.end method

.method private applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 17
    .param p1, "oldViewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/firebase/client/core/Path;
    .param p3, "changedSnap"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/firebase/client/snapshot/Node;
    .param p6, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v16

    .line 211
    .local v16, "oldEventSnap":Lcom/firebase/client/core/view/CacheNode;
    new-instance v8, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v8, v0, v1, v2}, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V

    .line 212
    .local v8, "source":Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v13

    .line 214
    .local v13, "newIndexed":Lcom/firebase/client/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v3, v4, v13, v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v11

    .line 215
    .local v11, "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v4}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3, v4}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v14

    .line 252
    .end local v11    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v13    # "newIndexed":Lcom/firebase/client/snapshot/IndexedNode;
    .local v14, "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :goto_0
    return-object v14

    .line 217
    .end local v14    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    .line 218
    .local v5, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {v5}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v3, v4, v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v11

    .line 220
    .restart local v11    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3, v4}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v14

    .line 221
    .restart local v14    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto :goto_0

    .line 222
    .end local v11    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v14    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v7

    .line 223
    .local v7, "childChangePath":Lcom/firebase/client/core/Path;
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v15

    .line 225
    .local v15, "oldChild":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {v7}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    move-object/from16 v6, p3

    .line 243
    .local v6, "newChild":Lcom/firebase/client/snapshot/Node;
    :goto_1
    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v12

    .line 246
    .local v12, "newEventSnap":Lcom/firebase/client/snapshot/IndexedNode;
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v4}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3, v4}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v14

    .line 247
    .restart local v14    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto :goto_0

    .line 229
    .end local v6    # "newChild":Lcom/firebase/client/snapshot/Node;
    .end local v12    # "newEventSnap":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v14    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_2
    invoke-interface {v8, v5}, Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;->getCompleteChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    .line 230
    .local v10, "childNode":Lcom/firebase/client/snapshot/Node;
    if-eqz v10, :cond_4

    .line 231
    invoke-virtual {v7}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v7}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v10, v3}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    move-object v6, v10

    .restart local v6    # "newChild":Lcom/firebase/client/snapshot/Node;
    goto :goto_1

    .line 236
    .end local v6    # "newChild":Lcom/firebase/client/snapshot/Node;
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v10, v7, v0}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .restart local v6    # "newChild":Lcom/firebase/client/snapshot/Node;
    goto :goto_1

    .line 240
    .end local v6    # "newChild":Lcom/firebase/client/snapshot/Node;
    :cond_4
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v6

    .restart local v6    # "newChild":Lcom/firebase/client/snapshot/Node;
    goto :goto_1

    .line 248
    .end local v10    # "childNode":Lcom/firebase/client/snapshot/Node;
    :cond_5
    move-object/from16 v14, p1

    .restart local v14    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto/16 :goto_0
.end method

.method private static cacheHasChild(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1
    .param p0, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    return v0
.end method

.method private generateEventCacheAfterServerEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 20
    .param p1, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/firebase/client/core/Path;
    .param p3, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p4, "source"    # Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    .param p5, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v16

    .line 107
    .local v16, "oldEventSnap":Lcom/firebase/client/core/view/CacheNode;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    .end local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :goto_0
    return-object p1

    .line 112
    .restart local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    sget-boolean v3, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "If change path is empty, we must have complete server data"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 116
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v17

    .line 121
    .local v17, "serverCache":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v3, :cond_3

    move-object/from16 v10, v17

    .line 122
    .local v10, "completeChildren":Lcom/firebase/client/snapshot/Node;
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v14

    .line 126
    .end local v10    # "completeChildren":Lcom/firebase/client/snapshot/Node;
    .end local v17    # "serverCache":Lcom/firebase/client/snapshot/Node;
    .local v14, "nodeWithLocalWrites":Lcom/firebase/client/snapshot/Node;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v12

    .line 127
    .local v12, "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v3, v4, v12, v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v13

    .line 167
    .end local v12    # "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v14    # "nodeWithLocalWrites":Lcom/firebase/client/snapshot/Node;
    .local v13, "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_2
    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v4}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v4}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 121
    .end local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    .restart local v17    # "serverCache":Lcom/firebase/client/snapshot/Node;
    :cond_3
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v10

    goto :goto_1

    .line 124
    .end local v17    # "serverCache":Lcom/firebase/client/snapshot/Node;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v14

    .restart local v14    # "nodeWithLocalWrites":Lcom/firebase/client/snapshot/Node;
    goto :goto_2

    .line 129
    .end local v14    # "nodeWithLocalWrites":Lcom/firebase/client/snapshot/Node;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    .line 130
    .local v5, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {v5}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 131
    sget-boolean v3, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Can\'t have a priority with additional path components"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 132
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v15

    .line 133
    .local v15, "oldEventNode":Lcom/firebase/client/snapshot/Node;
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v18

    .line 135
    .local v18, "serverNode":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Lcom/firebase/client/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v19

    .line 136
    .local v19, "updatedPriority":Lcom/firebase/client/snapshot/Node;
    if-eqz v19, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto :goto_3

    .line 140
    .end local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto :goto_3

    .line 143
    .end local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v15    # "oldEventNode":Lcom/firebase/client/snapshot/Node;
    .end local v18    # "serverNode":Lcom/firebase/client/snapshot/Node;
    .end local v19    # "updatedPriority":Lcom/firebase/client/snapshot/Node;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v7

    .line 146
    .local v7, "childChangePath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v18

    .line 148
    .restart local v18    # "serverNode":Lcom/firebase/client/snapshot/Node;
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v3, v2}, Lcom/firebase/client/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    .line 149
    .local v11, "eventChildUpdate":Lcom/firebase/client/snapshot/Node;
    if-eqz v11, :cond_9

    .line 150
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v7, v11}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 158
    .end local v11    # "eventChildUpdate":Lcom/firebase/client/snapshot/Node;
    .end local v18    # "serverNode":Lcom/firebase/client/snapshot/Node;
    .local v6, "newEventChild":Lcom/firebase/client/snapshot/Node;
    :goto_5
    if-eqz v6, :cond_b

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto/16 :goto_3

    .line 153
    .end local v6    # "newEventChild":Lcom/firebase/client/snapshot/Node;
    .end local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    .restart local v11    # "eventChildUpdate":Lcom/firebase/client/snapshot/Node;
    .restart local v18    # "serverNode":Lcom/firebase/client/snapshot/Node;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .restart local v6    # "newEventChild":Lcom/firebase/client/snapshot/Node;
    goto :goto_5

    .line 156
    .end local v6    # "newEventChild":Lcom/firebase/client/snapshot/Node;
    .end local v11    # "eventChildUpdate":Lcom/firebase/client/snapshot/Node;
    .end local v18    # "serverNode":Lcom/firebase/client/snapshot/Node;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .restart local v6    # "newEventChild":Lcom/firebase/client/snapshot/Node;
    goto :goto_5

    .line 163
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v13

    .restart local v13    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto/16 :goto_3

    .line 167
    .end local v5    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v6    # "newEventChild":Lcom/firebase/client/snapshot/Node;
    .end local v7    # "childChangePath":Lcom/firebase/client/core/Path;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method private listenComplete(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 7
    .param p1, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p4, "serverCache"    # Lcom/firebase/client/snapshot/Node;
    .param p5, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 423
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v6

    .line 424
    .local v6, "oldServerNode":Lcom/firebase/client/core/view/CacheNode;
    invoke-virtual {v6}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-virtual {v6}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v6}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v3

    invoke-virtual {p1, v2, v0, v3}, Lcom/firebase/client/core/view/ViewCache;->updateServerSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    .line 425
    .local v1, "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    sget-object v4, Lcom/firebase/client/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v0

    return-object v0

    .line 424
    .end local v1    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAddValueEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/view/ViewCache;Ljava/util/List;)V
    .locals 4
    .param p1, "oldViewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "newViewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/ViewCache;",
            "Lcom/firebase/client/core/view/ViewCache;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    invoke-virtual {p2}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    .line 94
    .local v0, "eventSnap":Lcom/firebase/client/core/view/CacheNode;
    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 96
    .local v1, "isLeafOrEmpty":Z
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteEventSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteEventSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/core/view/Change;->valueChange(Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v1    # "isLeafOrEmpty":Z
    :cond_3
    return-void

    .line 95
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyOperation(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;
    .locals 24
    .param p1, "oldViewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "operation"    # Lcom/firebase/client/core/operation/Operation;
    .param p3, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p4, "optCompleteCache"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 36
    new-instance v10, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    invoke-direct {v10}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;-><init>()V

    .line 38
    .local v10, "accumulator":Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;
    sget-object v4, Lcom/firebase/client/core/view/ViewProcessor$2;->$SwitchMap$com$firebase$client$core$operation$Operation$OperationType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Operation;->getType()Lcom/firebase/client/core/operation/Operation$OperationType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/firebase/client/core/operation/Operation$OperationType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 84
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Operation;->getType()Lcom/firebase/client/core/operation/Operation$OperationType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :pswitch_0
    move-object/from16 v23, p2

    .line 40
    check-cast v23, Lcom/firebase/client/core/operation/Overwrite;

    .line 41
    .local v23, "overwrite":Lcom/firebase/client/core/operation/Overwrite;
    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/operation/OperationSource;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getSnapshot()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v22

    .line 87
    .end local v23    # "overwrite":Lcom/firebase/client/core/operation/Overwrite;
    .local v22, "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :goto_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->getChanges()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v20, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/view/ViewProcessor;->maybeAddValueEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/view/ViewCache;Ljava/util/List;)V

    .line 89
    new-instance v4, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;-><init>(Lcom/firebase/client/core/view/ViewCache;Ljava/util/List;)V

    return-object v4

    .line 44
    .end local v20    # "changes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    .end local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    .restart local v23    # "overwrite":Lcom/firebase/client/core/operation/Overwrite;
    :cond_0
    sget-boolean v4, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/operation/OperationSource;->isFromServer()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 48
    :cond_1
    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/operation/OperationSource;->isTagged()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/16 v17, 0x1

    .line 50
    .local v17, "filterServerNode":Z
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v13

    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/operation/Overwrite;->getSnapshot()Lcom/firebase/client/snapshot/Node;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v22

    .line 53
    .restart local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto :goto_0

    .line 48
    .end local v17    # "filterServerNode":Z
    .end local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .end local v23    # "overwrite":Lcom/firebase/client/core/operation/Overwrite;
    :pswitch_1
    move-object/from16 v21, p2

    .line 56
    check-cast v21, Lcom/firebase/client/core/operation/Merge;

    .line 57
    .local v21, "merge":Lcom/firebase/client/core/operation/Merge;
    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/operation/Merge;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/operation/OperationSource;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/operation/Merge;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/operation/Merge;->getChildren()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v22

    .restart local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto/16 :goto_0

    .line 60
    .end local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_4
    sget-boolean v4, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/operation/Merge;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/operation/OperationSource;->isFromServer()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 62
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/operation/Merge;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/operation/OperationSource;->isTagged()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const/16 v17, 0x1

    .line 64
    .restart local v17    # "filterServerNode":Z
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/operation/Merge;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v13

    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/operation/Merge;->getChildren()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v22

    .line 67
    .restart local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto/16 :goto_0

    .line 62
    .end local v17    # "filterServerNode":Z
    .end local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .end local v21    # "merge":Lcom/firebase/client/core/operation/Merge;
    :pswitch_2
    move-object/from16 v19, p2

    .line 70
    check-cast v19, Lcom/firebase/client/core/operation/AckUserWrite;

    .line 71
    .local v19, "ackUserWrite":Lcom/firebase/client/core/operation/AckUserWrite;
    invoke-virtual/range {v19 .. v19}, Lcom/firebase/client/core/operation/AckUserWrite;->isRevert()Z

    move-result v4

    if-nez v4, :cond_8

    .line 72
    invoke-virtual/range {v19 .. v19}, Lcom/firebase/client/core/operation/AckUserWrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/firebase/client/core/operation/AckUserWrite;->getAffectedTree()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/firebase/client/core/view/ViewProcessor;->ackUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v22

    .restart local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto/16 :goto_0

    .line 75
    .end local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/firebase/client/core/operation/AckUserWrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/firebase/client/core/view/ViewProcessor;->revertUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v22

    .line 77
    .restart local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto/16 :goto_0

    .line 80
    .end local v19    # "ackUserWrite":Lcom/firebase/client/core/operation/AckUserWrite;
    .end local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Operation;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/firebase/client/core/view/ViewProcessor;->listenComplete(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v22

    .line 81
    .restart local v22    # "newViewCache":Lcom/firebase/client/core/view/ViewCache;
    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public revertUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 20
    .param p1, "viewCache"    # Lcom/firebase/client/core/view/ViewCache;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "writesCache"    # Lcom/firebase/client/core/WriteTreeRef;
    .param p4, "optCompleteServerCache"    # Lcom/firebase/client/snapshot/Node;
    .param p5, "accumulator"    # Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    .prologue
    .line 377
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 418
    .end local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :goto_0
    return-object p1

    .line 380
    .restart local p1    # "viewCache":Lcom/firebase/client/core/view/ViewCache;
    :cond_0
    new-instance v8, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v8, v0, v1, v2}, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V

    .line 381
    .local v8, "source":Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    .line 383
    .local v4, "oldEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 385
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v19

    .line 390
    .local v19, "newNode":Lcom/firebase/client/snapshot/Node;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v17

    .line 391
    .local v17, "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-interface {v3, v4, v0, v1}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v18

    .line 417
    .end local v17    # "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v19    # "newNode":Lcom/firebase/client/snapshot/Node;
    .local v18, "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_9

    :cond_3
    const/16 v16, 0x1

    .line 418
    .local v16, "complete":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 388
    .end local v16    # "complete":Z
    .end local v18    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v19

    .restart local v19    # "newNode":Lcom/firebase/client/snapshot/Node;
    goto :goto_1

    .line 393
    .end local v19    # "newNode":Lcom/firebase/client/snapshot/Node;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    .line 394
    .local v5, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 395
    .local v6, "newChild":Lcom/firebase/client/snapshot/Node;
    if-nez v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 396
    invoke-virtual {v4}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 398
    :cond_6
    if-eqz v6, :cond_7

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v7

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v18

    .line 408
    .restart local v18    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v16

    .line 411
    .local v16, "complete":Lcom/firebase/client/snapshot/Node;
    invoke-interface/range {v16 .. v16}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v17

    .line 413
    .restart local v17    # "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-interface {v3, v0, v1, v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v18

    goto/16 :goto_2

    .line 401
    .end local v16    # "complete":Lcom/firebase/client/snapshot/Node;
    .end local v17    # "indexedNode":Lcom/firebase/client/snapshot/IndexedNode;
    .end local v18    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_7
    if-nez v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 403
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v13

    move-object v10, v4

    move-object v11, v5

    move-object v14, v8

    move-object/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v18

    .restart local v18    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto :goto_4

    .line 406
    .end local v18    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    :cond_8
    move-object/from16 v18, v4

    .restart local v18    # "newEventCache":Lcom/firebase/client/snapshot/IndexedNode;
    goto :goto_4

    .line 417
    .end local v5    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v6    # "newChild":Lcom/firebase/client/snapshot/Node;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3
.end method
