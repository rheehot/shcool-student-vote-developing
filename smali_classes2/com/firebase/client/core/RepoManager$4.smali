.class Lcom/firebase/client/core/RepoManager$4;
.super Ljava/lang/Object;
.source "RepoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/RepoManager;->resumeInternal(Lcom/firebase/client/core/Context;)V
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
    .line 99
    iput-object p1, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    iput-object p2, p0, Lcom/firebase/client/core/RepoManager$4;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 102
    iget-object v2, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    invoke-static {v2}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    invoke-static {v2}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/firebase/client/core/RepoManager$4;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    invoke-static {v2}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/firebase/client/core/RepoManager$4;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Repo;

    .line 105
    .local v1, "repo":Lcom/firebase/client/core/Repo;
    invoke-virtual {v1}, Lcom/firebase/client/core/Repo;->resume()V

    goto :goto_0

    .line 108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "repo":Lcom/firebase/client/core/Repo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    return-void
.end method
