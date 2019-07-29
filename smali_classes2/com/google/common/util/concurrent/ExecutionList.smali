.class public final Lcom/google/common/util/concurrent/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field static final log:Ljava/util/logging/Logger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private executed:Z

.field private final runnables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/Queue;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    .line 61
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 85
    const-string v1, "Runnable was null."

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "Executor was null."

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    .line 93
    .local v0, "executeImmediate":Z
    iget-object v2, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/Queue;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-direct {v3, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->execute()V

    .line 108
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/Queue;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    if-eqz v0, :cond_1

    .line 127
    monitor-exit v1

    .line 137
    :cond_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->execute()V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
