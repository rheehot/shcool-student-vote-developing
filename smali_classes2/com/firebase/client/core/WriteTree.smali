.class public Lcom/firebase/client/core/WriteTree;
.super Ljava/lang/Object;
.source "WriteTree.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_FILTER:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private lastWriteId:Ljava/lang/Long;

.field private visibleWrites:Lcom/firebase/client/core/CompoundWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/firebase/client/core/WriteTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    .line 372
    new-instance v0, Lcom/firebase/client/core/WriteTree$2;

    invoke-direct {v0}, Lcom/firebase/client/core/WriteTree$2;-><init>()V

    sput-object v0, Lcom/firebase/client/core/WriteTree;->DEFAULT_FILTER:Lcom/firebase/client/core/utilities/Predicate;

    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    .line 37
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method private static layerTree(Ljava/util/List;Lcom/firebase/client/core/utilities/Predicate;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;
    .locals 9
    .param p2, "treeRoot"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;",
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "writes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/UserWriteRecord;>;"
    .local p1, "filter":Lcom/firebase/client/core/utilities/Predicate;, "Lcom/firebase/client/core/utilities/Predicate<Lcom/firebase/client/core/UserWriteRecord;>;"
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 385
    .local v0, "compoundWrite":Lcom/firebase/client/core/CompoundWrite;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/UserWriteRecord;

    .line 389
    .local v4, "write":Lcom/firebase/client/core/UserWriteRecord;
    invoke-interface {p1, v4}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 390
    invoke-virtual {v4}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v5

    .line 391
    .local v5, "writePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v4}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 392
    invoke-virtual {p2, v5}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 393
    invoke-static {p2, v5}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 394
    .local v3, "relativePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v4}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 395
    goto :goto_0

    .end local v3    # "relativePath":Lcom/firebase/client/core/Path;
    :cond_1
    invoke-virtual {v5, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual {v4}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-static {v5, p2}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {p2, v5}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 402
    invoke-static {p2, v5}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 403
    .restart local v3    # "relativePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v4}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 404
    goto :goto_0

    .end local v3    # "relativePath":Lcom/firebase/client/core/Path;
    :cond_3
    invoke-virtual {v5, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 405
    invoke-static {v5, p2}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 406
    .restart local v3    # "relativePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v3}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 407
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual {v4}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_4
    invoke-virtual {v4}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 410
    .local v1, "deepNode":Lcom/firebase/client/snapshot/Node;
    if-eqz v1, :cond_0

    .line 411
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    goto/16 :goto_0

    .line 420
    .end local v1    # "deepNode":Lcom/firebase/client/snapshot/Node;
    .end local v3    # "relativePath":Lcom/firebase/client/core/Path;
    .end local v4    # "write":Lcom/firebase/client/core/UserWriteRecord;
    .end local v5    # "writePath":Lcom/firebase/client/core/Path;
    :cond_5
    return-object v0
.end method

.method private recordContainsPath(Lcom/firebase/client/core/UserWriteRecord;Lcom/firebase/client/core/Path;)Z
    .locals 4
    .param p1, "writeRecord"    # Lcom/firebase/client/core/UserWriteRecord;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v2

    .line 353
    :goto_0
    return v2

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 349
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Path;

    invoke-virtual {v3, v2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    const/4 v2, 0x1

    goto :goto_0

    .line 353
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetTree()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    sget-object v1, Lcom/firebase/client/core/WriteTree;->DEFAULT_FILTER:Lcom/firebase/client/core/utilities/Predicate;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/firebase/client/core/WriteTree;->layerTree(Ljava/util/List;Lcom/firebase/client/core/utilities/Predicate;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 362
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public addMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Ljava/lang/Long;)V
    .locals 4
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "changedChildren"    # Lcom/firebase/client/core/CompoundWrite;
    .param p3, "writeId"    # Ljava/lang/Long;

    .prologue
    .line 64
    sget-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/firebase/client/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 67
    iput-object p3, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 68
    return-void
.end method

.method public addOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/lang/Long;Z)V
    .locals 7
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "snap"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "writeId"    # Ljava/lang/Long;
    .param p4, "visible"    # Z

    .prologue
    .line 52
    sget-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/firebase/client/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    if-eqz p4, :cond_1

    .line 55
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 57
    :cond_1
    iput-object p3, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 58
    return-void
.end method

.method public calcCompleteChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;
    .locals 4
    .param p1, "treePath"    # Lcom/firebase/client/core/Path;
    .param p2, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p3, "existingServerSnap"    # Lcom/firebase/client/core/view/CacheNode;

    .prologue
    .line 296
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 297
    .local v1, "path":Lcom/firebase/client/core/Path;
    iget-object v3, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v3, v1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 298
    .local v2, "shadowingNode":Lcom/firebase/client/snapshot/Node;
    if-eqz v2, :cond_0

    .line 305
    .end local v2    # "shadowingNode":Lcom/firebase/client/snapshot/Node;
    :goto_0
    return-object v2

    .line 301
    .restart local v2    # "shadowingNode":Lcom/firebase/client/snapshot/Node;
    :cond_0
    invoke-virtual {p3, p2}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v3, v1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 303
    .local v0, "childMerge":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual {p3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    goto :goto_0

    .line 305
    .end local v0    # "childMerge":Lcom/firebase/client/core/CompoundWrite;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "treePath"    # Lcom/firebase/client/core/Path;
    .param p2, "completeServerCache"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/core/WriteTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "treePath"    # Lcom/firebase/client/core/Path;
    .param p2, "completeServerCache"    # Lcom/firebase/client/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 168
    .local p3, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/firebase/client/core/WriteTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;
    .locals 8
    .param p1, "treePath"    # Lcom/firebase/client/core/Path;
    .param p2, "completeServerCache"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "includeHiddenWrites"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .local p3, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 173
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez p4, :cond_4

    .line 174
    iget-object v7, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v7, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 175
    .local v4, "shadowingNode":Lcom/firebase/client/snapshot/Node;
    if-eqz v4, :cond_1

    move-object p2, v4

    .line 214
    .end local v4    # "shadowingNode":Lcom/firebase/client/snapshot/Node;
    .end local p2    # "completeServerCache":Lcom/firebase/client/snapshot/Node;
    :cond_0
    :goto_0
    return-object p2

    .line 178
    .restart local v4    # "shadowingNode":Lcom/firebase/client/snapshot/Node;
    .restart local p2    # "completeServerCache":Lcom/firebase/client/snapshot/Node;
    :cond_1
    iget-object v7, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v7, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v5

    .line 179
    .local v5, "subMerge":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual {v5}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 181
    if-nez p2, :cond_2

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/firebase/client/core/CompoundWrite;->hasCompleteWrite(Lcom/firebase/client/core/Path;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object p2, v6

    .line 183
    goto :goto_0

    .line 186
    :cond_2
    if-eqz p2, :cond_3

    .line 187
    move-object v1, p2

    .line 191
    .local v1, "layeredCache":Lcom/firebase/client/snapshot/Node;
    :goto_1
    invoke-virtual {v5, v1}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 189
    .end local v1    # "layeredCache":Lcom/firebase/client/snapshot/Node;
    :cond_3
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    .restart local v1    # "layeredCache":Lcom/firebase/client/snapshot/Node;
    goto :goto_1

    .line 195
    .end local v1    # "layeredCache":Lcom/firebase/client/snapshot/Node;
    .end local v4    # "shadowingNode":Lcom/firebase/client/snapshot/Node;
    .end local v5    # "subMerge":Lcom/firebase/client/core/CompoundWrite;
    :cond_4
    iget-object v7, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v7, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    .line 196
    .local v2, "merge":Lcom/firebase/client/core/CompoundWrite;
    if-nez p4, :cond_5

    invoke-virtual {v2}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 200
    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/firebase/client/core/CompoundWrite;->hasCompleteWrite(Lcom/firebase/client/core/Path;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object p2, v6

    .line 201
    goto :goto_0

    .line 203
    :cond_6
    new-instance v0, Lcom/firebase/client/core/WriteTree$1;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/firebase/client/core/WriteTree$1;-><init>(Lcom/firebase/client/core/WriteTree;ZLjava/util/List;Lcom/firebase/client/core/Path;)V

    .line 212
    .local v0, "filter":Lcom/firebase/client/core/utilities/Predicate;, "Lcom/firebase/client/core/utilities/Predicate<Lcom/firebase/client/core/UserWriteRecord;>;"
    iget-object v6, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-static {v6, v0, p1}, Lcom/firebase/client/core/WriteTree;->layerTree(Ljava/util/List;Lcom/firebase/client/core/utilities/Predicate;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v3

    .line 213
    .local v3, "mergeAtPath":Lcom/firebase/client/core/CompoundWrite;
    if-eqz p2, :cond_7

    move-object v1, p2

    .line 214
    .restart local v1    # "layeredCache":Lcom/firebase/client/snapshot/Node;
    :goto_2
    invoke-virtual {v3, v1}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 213
    .end local v1    # "layeredCache":Lcom/firebase/client/snapshot/Node;
    :cond_7
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    goto :goto_2
.end method

.method public calcCompleteEventChildren(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 12
    .param p1, "treePath"    # Lcom/firebase/client/core/Path;
    .param p2, "completeServerChildren"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 225
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    .line 226
    .local v1, "completeChildren":Lcom/firebase/client/snapshot/Node;
    iget-object v8, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v8, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 227
    .local v7, "topLevelSet":Lcom/firebase/client/snapshot/Node;
    if-eqz v7, :cond_1

    .line 228
    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 230
    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 231
    .local v0, "childEntry":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v8

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 232
    goto :goto_0

    .end local v0    # "childEntry":Lcom/firebase/client/snapshot/NamedNode;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    move-object v2, v1

    .line 247
    .end local v1    # "completeChildren":Lcom/firebase/client/snapshot/Node;
    .local v2, "completeChildren":Lcom/firebase/client/snapshot/Node;
    :goto_1
    return-object v2

    .line 238
    .end local v2    # "completeChildren":Lcom/firebase/client/snapshot/Node;
    .restart local v1    # "completeChildren":Lcom/firebase/client/snapshot/Node;
    :cond_1
    iget-object v8, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v8, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v5

    .line 239
    .local v5, "merge":Lcom/firebase/client/core/CompoundWrite;
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/NamedNode;

    .line 240
    .local v3, "entry":Lcom/firebase/client/snapshot/NamedNode;
    new-instance v8, Lcom/firebase/client/core/Path;

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v8, v9}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v5, v8}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v8

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 241
    .local v6, "node":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v8

    invoke-interface {v1, v8, v6}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 242
    goto :goto_2

    .line 244
    .end local v3    # "entry":Lcom/firebase/client/snapshot/NamedNode;
    .end local v6    # "node":Lcom/firebase/client/snapshot/Node;
    :cond_2
    invoke-virtual {v5}, Lcom/firebase/client/core/CompoundWrite;->getCompleteChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/snapshot/NamedNode;

    .line 245
    .local v6, "node":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v6}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v8

    invoke-virtual {v6}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 246
    goto :goto_3

    .end local v6    # "node":Lcom/firebase/client/snapshot/NamedNode;
    :cond_3
    move-object v2, v1

    .line 247
    .end local v1    # "completeChildren":Lcom/firebase/client/snapshot/Node;
    .restart local v2    # "completeChildren":Lcom/firebase/client/snapshot/Node;
    goto :goto_1
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 4
    .param p1, "treePath"    # Lcom/firebase/client/core/Path;
    .param p2, "childPath"    # Lcom/firebase/client/core/Path;
    .param p3, "existingEventSnap"    # Lcom/firebase/client/snapshot/Node;
    .param p4, "existingServerSnap"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 267
    sget-boolean v2, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Either existingEventSnap or existingServerSnap must exist"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 268
    :cond_0
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 269
    .local v1, "path":Lcom/firebase/client/core/Path;
    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v2, v1}, Lcom/firebase/client/core/CompoundWrite;->hasCompleteWrite(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const/4 v2, 0x0

    .line 286
    :goto_0
    return-object v2

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v2, v1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 276
    .local v0, "childMerge":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    invoke-interface {p4, p2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    goto :goto_0

    .line 286
    :cond_2
    invoke-interface {p4, p2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public calcNextNodeAfterPost(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/NamedNode;ZLcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 7
    .param p1, "treePath"    # Lcom/firebase/client/core/Path;
    .param p2, "completeServerData"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "post"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p4, "reverse"    # Z
    .param p5, "index"    # Lcom/firebase/client/snapshot/Index;

    .prologue
    .line 325
    iget-object v6, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v6, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    .line 326
    .local v2, "merge":Lcom/firebase/client/core/CompoundWrite;
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 327
    .local v4, "shadowingNode":Lcom/firebase/client/snapshot/Node;
    if-eqz v4, :cond_2

    .line 328
    move-object v5, v4

    .line 335
    .local v5, "toIterate":Lcom/firebase/client/snapshot/Node;
    :goto_0
    const/4 v0, 0x0

    .line 336
    .local v0, "currentNext":Lcom/firebase/client/snapshot/NamedNode;
    invoke-interface {v5}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/NamedNode;

    .line 337
    .local v3, "node":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {p5, v3, p3, p4}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {p5, v3, v0, p4}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v6

    if-gez v6, :cond_0

    .line 338
    :cond_1
    move-object v0, v3

    goto :goto_1

    .line 329
    .end local v0    # "currentNext":Lcom/firebase/client/snapshot/NamedNode;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "node":Lcom/firebase/client/snapshot/NamedNode;
    .end local v5    # "toIterate":Lcom/firebase/client/snapshot/Node;
    :cond_2
    if-eqz p2, :cond_3

    .line 330
    invoke-virtual {v2, p2}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .restart local v5    # "toIterate":Lcom/firebase/client/snapshot/Node;
    goto :goto_0

    .line 333
    .end local v5    # "toIterate":Lcom/firebase/client/snapshot/Node;
    :cond_3
    const/4 v0, 0x0

    .line 341
    :cond_4
    return-object v0
.end method

.method public childWrites(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/WriteTreeRef;
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 45
    new-instance v0, Lcom/firebase/client/core/WriteTreeRef;

    invoke-direct {v0, p1, p0}, Lcom/firebase/client/core/WriteTreeRef;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTree;)V

    return-object v0
.end method

.method public getCompleteWriteData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getWrite(J)Lcom/firebase/client/core/UserWriteRecord;
    .locals 5
    .param p1, "writeId"    # J

    .prologue
    .line 71
    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/UserWriteRecord;

    .line 72
    .local v1, "record":Lcom/firebase/client/core/UserWriteRecord;
    invoke-virtual {v1}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 76
    .end local v1    # "record":Lcom/firebase/client/core/UserWriteRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public purgeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .local v0, "purgedWrites":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/UserWriteRecord;>;"
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v1

    iput-object v1, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    .line 84
    return-object v0
.end method

.method public removeWrite(J)Z
    .locals 13
    .param p1, "writeId"    # J

    .prologue
    .line 100
    const/4 v9, 0x0

    .line 101
    .local v9, "writeToRemove":Lcom/firebase/client/core/UserWriteRecord;
    const/4 v4, 0x0

    .line 102
    .local v4, "idx":I
    iget-object v10, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/core/UserWriteRecord;

    .line 103
    .local v6, "record":Lcom/firebase/client/core/UserWriteRecord;
    invoke-virtual {v6}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_1

    .line 104
    move-object v9, v6

    .line 109
    .end local v6    # "record":Lcom/firebase/client/core/UserWriteRecord;
    :cond_0
    sget-boolean v10, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v10, :cond_2

    if-nez v9, :cond_2

    new-instance v10, Ljava/lang/AssertionError;

    const-string v11, "removeWrite called with nonexistent writeId"

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 107
    .restart local v6    # "record":Lcom/firebase/client/core/UserWriteRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 108
    goto :goto_0

    .line 111
    .end local v6    # "record":Lcom/firebase/client/core/UserWriteRecord;
    :cond_2
    iget-object v10, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v9}, Lcom/firebase/client/core/UserWriteRecord;->isVisible()Z

    move-result v8

    .line 114
    .local v8, "removedWriteWasVisible":Z
    const/4 v7, 0x0

    .line 115
    .local v7, "removedWriteOverlapsWithOtherWrites":Z
    iget-object v10, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .line 117
    .local v2, "i":I
    :goto_1
    if-eqz v8, :cond_5

    if-ltz v2, :cond_5

    .line 118
    iget-object v10, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/UserWriteRecord;

    .line 119
    .local v0, "currentWrite":Lcom/firebase/client/core/UserWriteRecord;
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 120
    if-lt v2, v4, :cond_4

    invoke-virtual {v9}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Lcom/firebase/client/core/WriteTree;->recordContainsPath(Lcom/firebase/client/core/UserWriteRecord;Lcom/firebase/client/core/Path;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 122
    const/4 v8, 0x0

    .line 128
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 129
    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {v9}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v10

    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 125
    const/4 v7, 0x1

    goto :goto_2

    .line 131
    .end local v0    # "currentWrite":Lcom/firebase/client/core/UserWriteRecord;
    :cond_5
    if-nez v8, :cond_6

    .line 132
    const/4 v10, 0x0

    .line 147
    :goto_3
    return v10

    .line 133
    :cond_6
    if-eqz v7, :cond_7

    .line 135
    invoke-direct {p0}, Lcom/firebase/client/core/WriteTree;->resetTree()V

    .line 136
    const/4 v10, 0x1

    goto :goto_3

    .line 139
    :cond_7
    invoke-virtual {v9}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 140
    iget-object v10, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v9}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/firebase/client/core/CompoundWrite;->removeWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v10

    iput-object v10, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 147
    :cond_8
    const/4 v10, 0x1

    goto :goto_3

    .line 142
    :cond_9
    invoke-virtual {v9}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v10

    invoke-virtual {v10}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/core/Path;

    .line 144
    .local v5, "path":Lcom/firebase/client/core/Path;
    iget-object v10, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v9}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/firebase/client/core/CompoundWrite;->removeWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v10

    iput-object v10, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    goto :goto_4
.end method

.method public shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method
