.class Lcom/firebase/client/core/Repo$11;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->runOnDisconnectEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$events:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$11;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 3
    .param p1, "prefixPath"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 517
    iget-object v1, p0, Lcom/firebase/client/core/Repo$11;->val$events:Ljava/util/List;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2}, Lcom/firebase/client/core/Repo;->access$800(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/firebase/client/core/SyncTree;->applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 518
    iget-object v1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    const/16 v2, -0x9

    invoke-static {v1, p1, v2}, Lcom/firebase/client/core/Repo;->access$900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 519
    .local v0, "affectedPath":Lcom/firebase/client/core/Path;
    iget-object v1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1, v0}, Lcom/firebase/client/core/Repo;->access$1000(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 520
    return-void
.end method
