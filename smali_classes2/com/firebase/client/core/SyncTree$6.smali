.class Lcom/firebase/client/core/SyncTree$6;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->applyServerMerge(Lcom/firebase/client/core/Path;Ljava/util/Map;)Ljava/util/List;
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

.field final synthetic val$changedChildren:Ljava/util/Map;

.field final synthetic val$path:Lcom/firebase/client/core/Path;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Ljava/util/Map;Lcom/firebase/client/core/Path;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$6;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$6;->val$changedChildren:Ljava/util/Map;

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$6;->val$path:Lcom/firebase/client/core/Path;

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
    .line 252
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$6;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
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
    .line 254
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$6;->val$changedChildren:Ljava/util/Map;

    invoke-static {v1}, Lcom/firebase/client/core/CompoundWrite;->fromPathMerge(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 255
    .local v0, "merge":Lcom/firebase/client/core/CompoundWrite;
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$6;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v1}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$6;->val$path:Lcom/firebase/client/core/Path;

    invoke-interface {v1, v2, v0}, Lcom/firebase/client/core/persistence/PersistenceManager;->updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    .line 256
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$6;->this$0:Lcom/firebase/client/core/SyncTree;

    new-instance v2, Lcom/firebase/client/core/operation/Merge;

    sget-object v3, Lcom/firebase/client/core/operation/OperationSource;->SERVER:Lcom/firebase/client/core/operation/OperationSource;

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$6;->val$path:Lcom/firebase/client/core/Path;

    invoke-direct {v2, v3, v4, v0}, Lcom/firebase/client/core/operation/Merge;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    invoke-static {v1, v2}, Lcom/firebase/client/core/SyncTree;->access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
