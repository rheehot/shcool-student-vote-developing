.class public Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.super Lorg/shaded/apache/http/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"


# instance fields
.field protected final freeConnections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/shaded/apache/commons/logging/Log;

.field protected final operator:Lorg/shaded/apache/http/conn/ClientConnectionOperator;

.field private final params:Lorg/shaded/apache/http/params/HttpParams;

.field protected final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/shaded/apache/http/conn/routing/HttpRoute;",
            "Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field protected final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "operator"    # Lorg/shaded/apache/http/conn/ClientConnectionOperator;
    .param p2, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/shaded/apache/http/impl/conn/tsccm/AbstractConnPool;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection operator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/shaded/apache/http/conn/ClientConnectionOperator;

    .line 94
    iput-object p2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->params:Lorg/shaded/apache/http/params/HttpParams;

    .line 96
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createFreeConnQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    .line 97
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createWaitingThreadQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    .line 98
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createRouteToPoolMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    .line 99
    return-void
.end method


# virtual methods
.method protected createEntry(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/shaded/apache/http/conn/ClientConnectionOperator;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 4
    .param p1, "rospl"    # Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .param p2, "op"    # Lorg/shaded/apache/http/conn/ClientConnectionOperator;

    .prologue
    .line 480
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 485
    :cond_0
    new-instance v0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;-><init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V

    .line 487
    .local v0, "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 489
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->createdEntry(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 490
    iget v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 491
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 496
    return-object v0

    .line 493
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected createFreeConnQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected createRouteToPoolMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/shaded/apache/http/conn/routing/HttpRoute;",
            "Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected createWaitingThreadQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public deleteClosedConnections()V
    .locals 4

    .prologue
    .line 634
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 636
    :try_start_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 637
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 639
    .local v0, "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/shaded/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 641
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 645
    .end local v0    # "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_1
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 647
    return-void
.end method

.method protected deleteEntry(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 5
    .param p1, "entry"    # Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .prologue
    .line 513
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 515
    .local v1, "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 520
    :cond_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 523
    :try_start_0
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/shaded/apache/http/conn/OperatedClientConnection;)V

    .line 525
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/shaded/apache/http/conn/routing/HttpRoute;Z)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 526
    .local v0, "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->deleteEntry(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z

    .line 527
    iget v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 528
    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_1
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/shaded/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/shaded/apache/http/impl/conn/IdleConnectionHandler;->remove(Lorg/shaded/apache/http/HttpConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 537
    return-void

    .line 535
    .end local v0    # "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method protected deleteLeastUsedEntry()V
    .locals 3

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 551
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 553
    .local v0, "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 562
    return-void

    .line 555
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v2, "No free connection to delete."

    invoke-interface {v1, v2}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 560
    .end local v0    # "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public freeEntry(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "entry"    # Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .param p2, "reusable"    # Z
    .param p3, "validDuration"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 364
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 365
    .local v1, "route":Lorg/shaded/apache/http/conn/routing/HttpRoute;
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 370
    :cond_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 372
    :try_start_0
    iget-boolean v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->isShutDown:Z

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/shaded/apache/http/conn/OperatedClientConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 404
    :goto_0
    return-void

    .line 380
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 382
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/shaded/apache/http/conn/routing/HttpRoute;Z)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 384
    .local v0, "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    if-eqz p2, :cond_3

    .line 385
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pooling connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; keep alive for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p5}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 390
    :cond_2
    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntry(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 391
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/shaded/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v3

    invoke-virtual {v2, v3, p3, p4, p5}, Lorg/shaded/apache/http/impl/conn/IdleConnectionHandler;->add(Lorg/shaded/apache/http/HttpConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 398
    :goto_1
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 394
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 395
    iget v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 401
    .end local v0    # "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public getConnectionsInPool(Lorg/shaded/apache/http/conn/routing/HttpRoute;)I
    .locals 3
    .param p1, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/shaded/apache/http/conn/routing/HttpRoute;Z)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 199
    .local v0, "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getEntryCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .end local v0    # "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected getEntryBlocking(Lorg/shaded/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 17
    .param p1, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "aborter"    # Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v11}, Lorg/shaded/apache/http/conn/params/ConnManagerParams;->getMaxTotalConnections(Lorg/shaded/apache/http/params/HttpParams;)I

    move-result v7

    .line 260
    .local v7, "maxTotalConnections":I
    const/4 v4, 0x0

    .line 261
    .local v4, "deadline":Ljava/util/Date;
    const-wide/16 v12, 0x0

    cmp-long v11, p3, v12

    if-lez v11, :cond_0

    .line 262
    new-instance v4, Ljava/util/Date;

    .end local v4    # "deadline":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 266
    .restart local v4    # "deadline":Ljava/util/Date;
    :cond_0
    const/4 v5, 0x0

    .line 267
    .local v5, "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 270
    const/4 v11, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/shaded/apache/http/conn/routing/HttpRoute;Z)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v8

    .line 271
    .local v8, "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    const/4 v10, 0x0

    .line 273
    .local v10, "waitingThread":Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_1
    :goto_0
    if-nez v5, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->isShutDown:Z

    if-eqz v11, :cond_2

    .line 276
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Connection pool shut down."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v8    # "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .end local v10    # "waitingThread":Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;
    :catchall_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v11

    .line 280
    .restart local v8    # "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .restart local v10    # "waitingThread":Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total connections kept alive: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total issued connections: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total allocated connection: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 292
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getFreeEntry(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 293
    if-eqz v5, :cond_5

    .line 352
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 355
    return-object v5

    .line 297
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v6, 0x1

    .line 299
    .local v6, "hasCapacity":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Available capacity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getMaxEntries()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 305
    :cond_6
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    if-ge v11, v7, :cond_8

    .line 307
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/shaded/apache/http/conn/ClientConnectionOperator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/shaded/apache/http/conn/ClientConnectionOperator;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 297
    .end local v6    # "hasCapacity":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 309
    .restart local v6    # "hasCapacity":Z
    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v11}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 311
    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteLeastUsedEntry()V

    .line 312
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/shaded/apache/http/conn/ClientConnectionOperator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/shaded/apache/http/conn/ClientConnectionOperator;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 316
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 317
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Need to wait for connection ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 321
    :cond_a
    if-nez v10, :cond_b

    .line 322
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v10

    .line 324
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    :cond_b
    const/4 v9, 0x0

    .line 329
    .local v9, "success":Z
    :try_start_3
    invoke-virtual {v8, v10}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v11, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v10, v4}, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    .line 338
    :try_start_4
    invoke-virtual {v8, v10}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v11, v10}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 343
    if-nez v9, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-gtz v11, :cond_1

    .line 345
    new-instance v11, Lorg/shaded/apache/http/conn/ConnectionPoolTimeoutException;

    const-string v12, "Timeout waiting for connection"

    invoke-direct {v11, v12}, Lorg/shaded/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 338
    :catchall_1
    move-exception v11

    invoke-virtual {v8, v10}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v12, v10}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected getFreeEntry(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 6
    .param p1, "rospl"    # Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 424
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->allocEntry(Ljava/lang/Object;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_4

    .line 427
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting free connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 432
    :cond_1
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 433
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/shaded/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/shaded/apache/http/impl/conn/IdleConnectionHandler;->remove(Lorg/shaded/apache/http/HttpConnection;)Z

    move-result v2

    .line 434
    .local v2, "valid":Z
    if-nez v2, :cond_3

    .line 437
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing expired free connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 440
    :cond_2
    invoke-virtual {v1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/shaded/apache/http/conn/OperatedClientConnection;)V

    .line 444
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 445
    iget v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 460
    .end local v2    # "valid":Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 447
    .restart local v2    # "valid":Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 452
    .end local v2    # "valid":Z
    :cond_4
    const/4 v0, 0x1

    .line 453
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No free connections ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 460
    :cond_5
    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 463
    return-object v1
.end method

.method protected getRoutePool(Lorg/shaded/apache/http/conn/routing/HttpRoute;Z)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 4
    .param p1, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .param p2, "create"    # Z

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-object v1, v0

    .line 178
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newRouteSpecificPool(Lorg/shaded/apache/http/conn/routing/HttpRoute;)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 188
    return-object v1

    .line 185
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method protected handleLostEntry(Lorg/shaded/apache/http/conn/routing/HttpRoute;)V
    .locals 3
    .param p1, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 569
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 572
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/shaded/apache/http/conn/routing/HttpRoute;Z)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 573
    .local v0, "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 574
    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_0
    iget v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 579
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 584
    return-void

    .line 582
    .end local v0    # "rospl":Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected newRouteSpecificPool(Lorg/shaded/apache/http/conn/routing/HttpRoute;)Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 3
    .param p1, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 142
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v1}, Lorg/shaded/apache/http/conn/params/ConnManagerParams;->getMaxConnectionsPerRoute(Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/conn/params/ConnPerRoute;

    move-result-object v0

    .line 143
    .local v0, "connPerRoute":Lorg/shaded/apache/http/conn/params/ConnPerRoute;
    new-instance v1, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    invoke-interface {v0, p1}, Lorg/shaded/apache/http/conn/params/ConnPerRoute;->getMaxForRoute(Lorg/shaded/apache/http/conn/routing/HttpRoute;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;-><init>(Lorg/shaded/apache/http/conn/routing/HttpRoute;I)V

    return-object v1
.end method

.method protected newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;
    .locals 1
    .param p1, "cond"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "rospl"    # Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .prologue
    .line 158
    new-instance v0, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;

    invoke-direct {v0, p1, p2}, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;)V

    return-object v0
.end method

.method protected notifyWaitingThread(Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 5
    .param p1, "rospl"    # Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .prologue
    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, "waitingThread":Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 607
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->hasThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 608
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying thread waiting on pool ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 612
    :cond_0
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/RouteSpecificPool;->nextThread()Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v1

    .line 622
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {v1}, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :cond_2
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 629
    return-void

    .line 613
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 614
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 615
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v3, "Notifying thread waiting on any pool"

    invoke-interface {v2, v3}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 617
    :cond_4
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;

    move-object v1, v0

    goto :goto_0

    .line 618
    :cond_5
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    iget-object v2, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v3, "Notifying no-one, there are no waiting threads"

    invoke-interface {v2, v3}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public requestPoolEntry(Lorg/shaded/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/shaded/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .locals 2
    .param p1, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 211
    new-instance v0, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 213
    .local v0, "aborter":Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    new-instance v1, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;-><init>(Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/shaded/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method

.method public shutdown()V
    .locals 7

    .prologue
    .line 654
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 657
    :try_start_0
    invoke-super {p0}, Lorg/shaded/apache/http/impl/conn/tsccm/AbstractConnPool;->shutdown()V

    .line 661
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 662
    .local v1, "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 664
    .local v0, "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 666
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Closing connection ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 670
    :cond_0
    invoke-virtual {v0}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/shaded/apache/http/conn/OperatedClientConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 684
    .end local v0    # "entry":Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v1    # "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 674
    .restart local v1    # "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 675
    .local v2, "iwth":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;

    .line 677
    .local v3, "waiter":Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 678
    invoke-virtual {v3}, Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V

    goto :goto_1

    .line 681
    .end local v3    # "waiter":Lorg/shaded/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_2
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 686
    return-void
.end method
