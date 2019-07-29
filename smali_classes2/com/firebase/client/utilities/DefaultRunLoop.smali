.class public abstract Lcom/firebase/client/utilities/DefaultRunLoop;
.super Ljava/lang/Object;
.source "DefaultRunLoop.java"

# interfaces
.implements Lcom/firebase/client/RunLoop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x1

    .line 41
    .local v1, "threadsInPool":I
    new-instance v0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;Lcom/firebase/client/utilities/DefaultRunLoop$1;)V

    .line 42
    .local v0, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v2, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v2, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 44
    iget-object v2, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getThreadInitializer()Lcom/firebase/client/core/ThreadInitializer;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/firebase/client/core/ThreadInitializer;->defaultInstance:Lcom/firebase/client/core/ThreadInitializer;

    return-object v0
.end method

.method public abstract handleException(Ljava/lang/Throwable;)V
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setCorePoolSize(I)V

    .line 85
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "milliseconds"    # J

    .prologue
    .line 64
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/firebase/client/utilities/DefaultRunLoop$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/utilities/DefaultRunLoop$2;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;Ljava/lang/Runnable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleNow(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/firebase/client/utilities/DefaultRunLoop$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/utilities/DefaultRunLoop$1;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setCorePoolSize(I)V

    .line 80
    return-void
.end method
