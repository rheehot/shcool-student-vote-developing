.class Lcom/firebase/client/core/RepoManager$3;
.super Ljava/lang/Object;
.source "RepoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/RepoManager;->interruptInternal(Lcom/firebase/client/core/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/RepoManager;

.field final synthetic val$ctx:Lcom/firebase/client/core/Context;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/RepoManager;Lcom/firebase/client/core/Context;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    iput-object p2, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    invoke-static {v3}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 80
    const/4 v0, 0x1

    .line 81
    .local v0, "allEmpty":Z
    :try_start_0
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    invoke-static {v3}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    invoke-static {v3}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Repo;

    .line 83
    .local v2, "repo":Lcom/firebase/client/core/Repo;
    invoke-virtual {v2}, Lcom/firebase/client/core/Repo;->interrupt()V

    .line 84
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/firebase/client/core/Repo;->hasListeners()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 85
    :goto_1
    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 86
    .end local v2    # "repo":Lcom/firebase/client/core/Repo;
    :cond_1
    if-eqz v0, :cond_2

    .line 87
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v3}, Lcom/firebase/client/core/Context;->stop()V

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
