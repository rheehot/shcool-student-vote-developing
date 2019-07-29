.class Lcom/firebase/client/core/ThreadPoolEventTarget;
.super Ljava/lang/Object;
.source "ThreadPoolEventTarget.java"

# interfaces
.implements Lcom/firebase/client/EventTarget;


# instance fields
.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Lcom/firebase/client/core/ThreadInitializer;)V
    .locals 9
    .param p1, "wrappedFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "threadInitializer"    # Lcom/firebase/client/core/ThreadInitializer;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v2, 0x1

    .line 20
    .local v2, "poolSize":I
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 22
    .local v7, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/firebase/client/core/ThreadPoolEventTarget$1;

    invoke-direct {v8, p0, p1, p2}, Lcom/firebase/client/core/ThreadPoolEventTarget$1;-><init>(Lcom/firebase/client/core/ThreadPoolEventTarget;Ljava/util/concurrent/ThreadFactory;Lcom/firebase/client/core/ThreadInitializer;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/firebase/client/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 34
    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/firebase/client/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/firebase/client/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 59
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/firebase/client/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 49
    return-void
.end method
