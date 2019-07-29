.class public Lcom/firebase/client/core/RepoManager;
.super Ljava/lang/Object;
.source "RepoManager.java"


# static fields
.field private static final instance:Lcom/firebase/client/core/RepoManager;


# instance fields
.field private final repos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/core/Repo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0}, Lcom/firebase/client/core/RepoManager;-><init>()V

    sput-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/RepoManager;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    return-object v0
.end method

.method private getLocalRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;
    .locals 5
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;
    .param p2, "info"    # Lcom/firebase/client/core/RepoInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->freeze()V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/firebase/client/core/RepoInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "repoHash":Ljava/lang/String;
    iget-object v4, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    monitor-enter v4

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v0, "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/firebase/client/core/Repo;>;"
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v0    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/firebase/client/core/Repo;>;"
    :cond_0
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 63
    .restart local v0    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/firebase/client/core/Repo;>;"
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    new-instance v1, Lcom/firebase/client/core/Repo;

    invoke-direct {v1, p2, p1}, Lcom/firebase/client/core/Repo;-><init>(Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/Context;)V

    .line 65
    .local v1, "repo":Lcom/firebase/client/core/Repo;
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v4

    .line 68
    .end local v1    # "repo":Lcom/firebase/client/core/Repo;
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/Repo;

    monitor-exit v4

    move-object v1, v3

    goto :goto_0

    .line 70
    .end local v0    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/firebase/client/core/Repo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;
    .locals 1
    .param p0, "ctx"    # Lcom/firebase/client/core/Context;
    .param p1, "info"    # Lcom/firebase/client/core/RepoInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/core/RepoManager;->getLocalRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;

    move-result-object v0

    return-object v0
.end method

.method public static interrupt(Lcom/firebase/client/core/Context;)V
    .locals 1
    .param p0, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/RepoManager;->interruptInternal(Lcom/firebase/client/core/Context;)V

    .line 24
    return-void
.end method

.method public static interrupt(Lcom/firebase/client/core/Repo;)V
    .locals 1
    .param p0, "repo"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 27
    new-instance v0, Lcom/firebase/client/core/RepoManager$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/RepoManager$1;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method private interruptInternal(Lcom/firebase/client/core/Context;)V
    .locals 2
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    .line 75
    .local v0, "runLoop":Lcom/firebase/client/RunLoop;
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/firebase/client/core/RepoManager$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/RepoManager$3;-><init>(Lcom/firebase/client/core/RepoManager;Lcom/firebase/client/core/Context;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static resume(Lcom/firebase/client/core/Context;)V
    .locals 1
    .param p0, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/RepoManager;->resumeInternal(Lcom/firebase/client/core/Context;)V

    .line 46
    return-void
.end method

.method public static resume(Lcom/firebase/client/core/Repo;)V
    .locals 1
    .param p0, "repo"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 36
    new-instance v0, Lcom/firebase/client/core/RepoManager$2;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/RepoManager$2;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method private resumeInternal(Lcom/firebase/client/core/Context;)V
    .locals 2
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    .line 98
    .local v0, "runLoop":Lcom/firebase/client/RunLoop;
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/firebase/client/core/RepoManager$4;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/RepoManager$4;-><init>(Lcom/firebase/client/core/RepoManager;Lcom/firebase/client/core/Context;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 112
    :cond_0
    return-void
.end method
