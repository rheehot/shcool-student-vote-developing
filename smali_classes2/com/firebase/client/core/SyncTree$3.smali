.class Lcom/firebase/client/core/SyncTree$3;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;
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


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;

.field final synthetic val$persist:Z

.field final synthetic val$revert:Z

.field final synthetic val$serverClock:Lcom/firebase/client/utilities/Clock;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;ZJZLcom/firebase/client/utilities/Clock;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$3;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-boolean p2, p0, Lcom/firebase/client/core/SyncTree$3;->val$persist:Z

    iput-wide p3, p0, Lcom/firebase/client/core/SyncTree$3;->val$writeId:J

    iput-boolean p5, p0, Lcom/firebase/client/core/SyncTree$3;->val$revert:Z

    iput-object p6, p0, Lcom/firebase/client/core/SyncTree$3;->val$serverClock:Lcom/firebase/client/utilities/Clock;

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
    .line 181
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$3;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 13
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
    const/4 v12, 0x1

    .line 183
    iget-boolean v8, p0, Lcom/firebase/client/core/SyncTree$3;->val$persist:Z

    if-eqz v8, :cond_0

    .line 184
    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$3;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v8}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v8

    iget-wide v10, p0, Lcom/firebase/client/core/SyncTree$3;->val$writeId:J

    invoke-interface {v8, v10, v11}, Lcom/firebase/client/core/persistence/PersistenceManager;->removeUserWrite(J)V

    .line 186
    :cond_0
    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$3;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v8}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v8

    iget-wide v10, p0, Lcom/firebase/client/core/SyncTree$3;->val$writeId:J

    invoke-virtual {v8, v10, v11}, Lcom/firebase/client/core/WriteTree;->getWrite(J)Lcom/firebase/client/core/UserWriteRecord;

    move-result-object v7

    .line 187
    .local v7, "write":Lcom/firebase/client/core/UserWriteRecord;
    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$3;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v8}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v8

    iget-wide v10, p0, Lcom/firebase/client/core/SyncTree$3;->val$writeId:J

    invoke-virtual {v8, v10, v11}, Lcom/firebase/client/core/WriteTree;->removeWrite(J)Z

    move-result v3

    .line 188
    .local v3, "needToReevaluate":Z
    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 189
    iget-boolean v8, p0, Lcom/firebase/client/core/SyncTree$3;->val$revert:Z

    if-nez v8, :cond_1

    .line 190
    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$3;->val$serverClock:Lcom/firebase/client/utilities/Clock;

    invoke-static {v8}, Lcom/firebase/client/core/ServerValues;->generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;

    move-result-object v6

    .line 191
    .local v6, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 192
    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 193
    .local v5, "resolvedNode":Lcom/firebase/client/snapshot/Node;
    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$3;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v8}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v8

    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Lcom/firebase/client/core/persistence/PersistenceManager;->applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 200
    .end local v5    # "resolvedNode":Lcom/firebase/client/snapshot/Node;
    .end local v6    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 211
    :goto_1
    return-object v8

    .line 195
    .restart local v6    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueMerge(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v4

    .line 196
    .local v4, "resolvedMerge":Lcom/firebase/client/core/CompoundWrite;
    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$3;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v8}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v8

    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Lcom/firebase/client/core/persistence/PersistenceManager;->applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    goto :goto_0

    .line 203
    .end local v4    # "resolvedMerge":Lcom/firebase/client/core/CompoundWrite;
    .end local v6    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 204
    .local v0, "affectedTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 205
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 211
    :cond_4
    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$3;->this$0:Lcom/firebase/client/core/SyncTree;

    new-instance v9, Lcom/firebase/client/core/operation/AckUserWrite;

    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v10

    iget-boolean v11, p0, Lcom/firebase/client/core/SyncTree$3;->val$revert:Z

    invoke-direct {v9, v10, v0, v11}, Lcom/firebase/client/core/operation/AckUserWrite;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Z)V

    invoke-static {v8, v9}, Lcom/firebase/client/core/SyncTree;->access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v8

    goto :goto_1

    .line 207
    :cond_5
    invoke-virtual {v7}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v8

    invoke-virtual {v8}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/firebase/client/core/Path;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 209
    goto :goto_2
.end method
