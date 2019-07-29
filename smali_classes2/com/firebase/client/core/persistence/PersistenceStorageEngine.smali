.class public interface abstract Lcom/firebase/client/core/persistence/PersistenceStorageEngine;
.super Ljava/lang/Object;
.source "PersistenceStorageEngine.java"


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract deleteTrackedQuery(J)V
.end method

.method public abstract endTransaction()V
.end method

.method public abstract loadTrackedQueries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadTrackedQueryKeys(J)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
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

.method public abstract mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
.end method

.method public abstract mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
.end method

.method public abstract overwriteServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
.end method

.method public abstract pruneCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/persistence/PruneForest;)V
.end method

.method public abstract removeAllUserWrites()V
.end method

.method public abstract removeUserWrite(J)V
.end method

.method public abstract resetPreviouslyActiveTrackedQueries(J)V
.end method

.method public abstract saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V
.end method

.method public abstract saveTrackedQueryKeys(JLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V
.end method

.method public abstract saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V
.end method

.method public abstract serverCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract serverCacheEstimatedSizeInBytes()J
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
