.class Lcom/firebase/client/core/SyncTree$7;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->applyListenComplete(Lcom/firebase/client/core/Path;)Ljava/util/List;
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

.field final synthetic val$path:Lcom/firebase/client/core/Path;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Path;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$7;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$7;->val$path:Lcom/firebase/client/core/Path;

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
    .line 309
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 4
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
    .line 311
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$7;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$7;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v1}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->setQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 312
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$7;->this$0:Lcom/firebase/client/core/SyncTree;

    new-instance v1, Lcom/firebase/client/core/operation/ListenComplete;

    sget-object v2, Lcom/firebase/client/core/operation/OperationSource;->SERVER:Lcom/firebase/client/core/operation/OperationSource;

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$7;->val$path:Lcom/firebase/client/core/Path;

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/core/operation/ListenComplete;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    invoke-static {v0, v1}, Lcom/firebase/client/core/SyncTree;->access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
