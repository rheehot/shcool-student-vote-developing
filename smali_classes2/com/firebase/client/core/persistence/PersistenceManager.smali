.class public interface abstract Lcom/firebase/client/core/persistence/PersistenceManager;
.super Ljava/lang/Object;
.source "PersistenceManager.java"


# virtual methods
.method public abstract applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
.end method

.method public abstract applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
.end method

.method public abstract loadUserWrites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllUserWrites()V
.end method

.method public abstract removeUserWrite(J)V
.end method

.method public abstract runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V
.end method

.method public abstract saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V
.end method

.method public abstract serverCache(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/CacheNode;
.end method

.method public abstract setQueryActive(Lcom/firebase/client/core/view/QuerySpec;)V
.end method

.method public abstract setQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)V
.end method

.method public abstract setQueryInactive(Lcom/firebase/client/core/view/QuerySpec;)V
.end method

.method public abstract setTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;)V
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
.end method

.method public abstract updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
.end method

.method public abstract updateServerCache(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/snapshot/Node;)V
.end method

.method public abstract updateTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V
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
.end method
