.class public Lcom/firebase/client/core/persistence/NoopPersistenceManager;
.super Ljava/lang/Object;
.source "NoopPersistenceManager.java"

# interfaces
.implements Lcom/firebase/client/core/persistence/PersistenceManager;


# instance fields
.field private insideTransaction:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    return-void
.end method

.method private verifyInsideTransaction()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "merge"    # Lcom/firebase/client/core/CompoundWrite;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 52
    return-void
.end method

.method public applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 47
    return-void
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 1
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
    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllUserWrites()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 42
    return-void
.end method

.method public removeUserWrite(J)V
    .locals 0
    .param p1, "writeId"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 37
    return-void
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    iget-boolean v1, p0, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v1, v4}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 102
    iput-boolean v2, p0, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    .line 104
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 108
    iput-boolean v3, p0, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    return-object v1

    :cond_0
    move v1, v3

    .line 101
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    throw v1
.end method

.method public saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "children"    # Lcom/firebase/client/core/CompoundWrite;
    .param p3, "writeId"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 32
    return-void
.end method

.method public saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "writeId"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 27
    return-void
.end method

.method public serverCache(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/CacheNode;
    .locals 4
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/firebase/client/core/view/CacheNode;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    return-object v0
.end method

.method public setQueryActive(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 0
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 77
    return-void
.end method

.method public setQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 0
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 86
    return-void
.end method

.method public setQueryInactive(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 0
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 81
    return-void
.end method

.method public setTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;)V
    .locals 0
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 91
    return-void
.end method

.method public updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "children"    # Lcom/firebase/client/core/CompoundWrite;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 72
    return-void
.end method

.method public updateServerCache(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 67
    return-void
.end method

.method public updateTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    .local p3, "removed":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 96
    return-void
.end method
