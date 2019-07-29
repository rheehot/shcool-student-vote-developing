.class Lcom/firebase/client/core/SyncTree$9;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->applyTaggedQueryOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Tag;)Ljava/util/List;
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

.field final synthetic val$snap:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$tag:Lcom/firebase/client/core/Tag;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$9;->val$tag:Lcom/firebase/client/core/Tag;

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$9;->val$path:Lcom/firebase/client/core/Path;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$9;->val$snap:Lcom/firebase/client/snapshot/Node;

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
    .line 348
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
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
    .line 350
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$9;->val$tag:Lcom/firebase/client/core/Tag;

    invoke-static {v4, v5}, Lcom/firebase/client/core/SyncTree;->access$500(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    .line 351
    .local v1, "query":Lcom/firebase/client/core/view/QuerySpec;
    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$9;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v4, v5}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 353
    .local v3, "relativePath":Lcom/firebase/client/core/Path;
    invoke-virtual {v3}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 354
    .local v2, "queryToOverwrite":Lcom/firebase/client/core/view/QuerySpec;
    :goto_0
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v4}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$9;->val$snap:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v4, v2, v5}, Lcom/firebase/client/core/persistence/PersistenceManager;->updateServerCache(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/snapshot/Node;)V

    .line 355
    new-instance v0, Lcom/firebase/client/core/operation/Overwrite;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/core/operation/OperationSource;->forServerTaggedQuery(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$9;->val$snap:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v0, v4, v3, v5}, Lcom/firebase/client/core/operation/Overwrite;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 356
    .local v0, "op":Lcom/firebase/client/core/operation/Operation;
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v4, v1, v0}, Lcom/firebase/client/core/SyncTree;->access$600(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v4

    .line 359
    .end local v0    # "op":Lcom/firebase/client/core/operation/Operation;
    .end local v2    # "queryToOverwrite":Lcom/firebase/client/core/view/QuerySpec;
    .end local v3    # "relativePath":Lcom/firebase/client/core/Path;
    :goto_1
    return-object v4

    .line 353
    .restart local v3    # "relativePath":Lcom/firebase/client/core/Path;
    :cond_0
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$9;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v4}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    goto :goto_0

    .line 359
    .end local v3    # "relativePath":Lcom/firebase/client/core/Path;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1
.end method
