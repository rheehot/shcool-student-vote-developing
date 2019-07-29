.class Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;
.super Ljava/lang/Object;
.source "DefaultRunLoop.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/utilities/DefaultRunLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirebaseThreadFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/utilities/DefaultRunLoop;


# direct methods
.method private constructor <init>(Lcom/firebase/client/utilities/DefaultRunLoop;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/utilities/DefaultRunLoop;Lcom/firebase/client/utilities/DefaultRunLoop$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firebase/client/utilities/DefaultRunLoop;
    .param p2, "x1"    # Lcom/firebase/client/utilities/DefaultRunLoop$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 13
    iget-object v2, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/DefaultRunLoop;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    .line 14
    .local v1, "thread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/DefaultRunLoop;->getThreadInitializer()Lcom/firebase/client/core/ThreadInitializer;

    move-result-object v0

    .line 15
    .local v0, "initializer":Lcom/firebase/client/core/ThreadInitializer;
    const-string v2, "FirebaseWorker"

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/core/ThreadInitializer;->setDaemon(Ljava/lang/Thread;Z)V

    .line 17
    new-instance v2, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;

    invoke-direct {v2, p0}, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;)V

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/core/ThreadInitializer;->setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 23
    return-object v1
.end method
