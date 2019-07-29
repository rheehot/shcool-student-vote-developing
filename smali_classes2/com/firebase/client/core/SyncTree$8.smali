.class Lcom/firebase/client/core/SyncTree$8;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->applyTaggedListenComplete(Lcom/firebase/client/core/Tag;)Ljava/util/List;
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

.field final synthetic val$tag:Lcom/firebase/client/core/Tag;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$8;->val$tag:Lcom/firebase/client/core/Tag;

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
    .line 321
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$8;->call()Ljava/util/List;

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
    .line 323
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$8;->val$tag:Lcom/firebase/client/core/Tag;

    invoke-static {v2, v3}, Lcom/firebase/client/core/SyncTree;->access$500(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    .line 324
    .local v1, "query":Lcom/firebase/client/core/view/QuerySpec;
    if-eqz v1, :cond_0

    .line 325
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/firebase/client/core/persistence/PersistenceManager;->setQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 326
    new-instance v0, Lcom/firebase/client/core/operation/ListenComplete;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/core/operation/OperationSource;->forServerTaggedQuery(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/firebase/client/core/operation/ListenComplete;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    .line 327
    .local v0, "op":Lcom/firebase/client/core/operation/Operation;
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v2, v1, v0}, Lcom/firebase/client/core/SyncTree;->access$600(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v2

    .line 330
    .end local v0    # "op":Lcom/firebase/client/core/operation/Operation;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method
