.class Lcom/firebase/client/core/Repo$2$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo$2;->startListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/SyncTree$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/core/Repo$2;

.field final synthetic val$onComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

.field final synthetic val$query:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo$2;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/SyncTree$CompletionListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$2$1;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$2$1;->val$onComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iget-object v2, v2, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2}, Lcom/firebase/client/core/Repo;->access$100(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/Repo$2$1;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 101
    .local v1, "node":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iget-object v2, v2, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2}, Lcom/firebase/client/core/Repo;->access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/Repo$2$1;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/firebase/client/core/SyncTree;->applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "infoEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    iget-object v2, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iget-object v2, v2, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2, v0}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    .line 104
    iget-object v2, p0, Lcom/firebase/client/core/Repo$2$1;->val$onComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/firebase/client/core/SyncTree$CompletionListener;->onListenComplete(Lcom/firebase/client/FirebaseError;)Ljava/util/List;

    .line 106
    .end local v0    # "infoEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    :cond_0
    return-void
.end method
