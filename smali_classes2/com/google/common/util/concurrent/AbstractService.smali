.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$7;,
        Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;,
        Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;,
        Lcom/google/common/util/concurrent/AbstractService$Transition;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final queuedListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "queuedListeners"
    .end annotation
.end field

.field private final shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private volatile snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final startup:Lcom/google/common/util/concurrent/AbstractService$Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 58
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 63
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    .line 77
    invoke-static {}, Lcom/google/common/collect/Queues;->newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    .line 89
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 96
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$1;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private executeListeners()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    monitor-enter v2

    .line 380
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 381
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 383
    .end local v0    # "listener":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "listener":Ljava/lang/Runnable;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    .end local v0    # "listener":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 451
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    .line 452
    .local v1, "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/AbstractService$6;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractService$6;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    .end local v1    # "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    :cond_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 464
    return-void
.end method

.method private running()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 404
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    .line 405
    .local v1, "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/AbstractService$3;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$3;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .end local v1    # "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    :cond_0
    return-void
.end method

.method private starting()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 389
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    .line 390
    .local v1, "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/AbstractService$2;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/AbstractService$2;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    .end local v1    # "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    :cond_0
    return-void
.end method

.method private stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 4
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 419
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    .line 420
    .local v1, "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/AbstractService$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractService$4;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;Lcom/google/common/util/concurrent/Service$State;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    .end local v1    # "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    :cond_0
    return-void
.end method

.method private terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 4
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 434
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    .line 435
    .local v1, "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/AbstractService$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractService$5;-><init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;Lcom/google/common/util/concurrent/Service$State;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    .end local v1    # "pair":Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;
    :cond_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 447
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/common/util/concurrent/Service$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 341
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;-><init>(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyFailed(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 291
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 295
    :try_start_0
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$7;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 310
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v3, v3, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v1

    .line 298
    :pswitch_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed while in state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v3, v3, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 302
    :pswitch_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v0, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 303
    .local v0, "previous":Lcom/google/common/util/concurrent/Service$State;
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 304
    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/AbstractService;->failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    .end local v0    # "previous":Lcom/google/common/util/concurrent/Service$State;
    :pswitch_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    .line 316
    return-void

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected final notifyStarted()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v1, v2, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "failure":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 242
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v0    # "failure":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 256
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v1

    .line 245
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-boolean v1, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    if-eqz v1, :cond_1

    .line 246
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 249
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 256
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    .line 258
    return-void

    .line 251
    :cond_1
    :try_start_2
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 252
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->running()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final notifyStopped()V
    .locals 4

    .prologue
    .line 268
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v2, v3, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot notifyStopped() when the service is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v3, v3, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "failure":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 274
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v0    # "failure":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v2

    .line 276
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v1, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    .line 277
    .local v1, "previous":Lcom/google/common/util/concurrent/Service$State;
    new-instance v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 278
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->terminated(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    .line 283
    return-void
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v2, :cond_0

    .line 169
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 170
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->starting()V

    .line 171
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "startupFailure":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    goto :goto_0

    .line 176
    .end local v0    # "startupFailure":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v1
.end method

.method public startAndWait()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->externalState()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stop()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$7;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 207
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v3, v3, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "shutdownFailure":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    .line 216
    .end local v0    # "shutdownFailure":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v1

    .line 189
    :pswitch_0
    :try_start_2
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 190
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->terminated(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :goto_1
    :pswitch_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    goto :goto_0

    .line 193
    :pswitch_2
    :try_start_3
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 194
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->stopping(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v1

    .line 197
    :pswitch_3
    :try_start_4
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    .line 198
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->stopping(Lcom/google/common/util/concurrent/Service$State;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopAndWait()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->stop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
