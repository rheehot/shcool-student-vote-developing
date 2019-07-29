.class Lcom/firebase/client/core/ThreadPoolEventTarget$1;
.super Ljava/lang/Object;
.source "ThreadPoolEventTarget.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ThreadPoolEventTarget;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/firebase/client/core/ThreadInitializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ThreadPoolEventTarget;

.field final synthetic val$threadInitializer:Lcom/firebase/client/core/ThreadInitializer;

.field final synthetic val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ThreadPoolEventTarget;Ljava/util/concurrent/ThreadFactory;Lcom/firebase/client/core/ThreadInitializer;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/firebase/client/core/ThreadPoolEventTarget$1;->this$0:Lcom/firebase/client/core/ThreadPoolEventTarget;

    iput-object p2, p0, Lcom/firebase/client/core/ThreadPoolEventTarget$1;->val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object p3, p0, Lcom/firebase/client/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/firebase/client/core/ThreadInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/firebase/client/core/ThreadPoolEventTarget$1;->val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 28
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/firebase/client/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/firebase/client/core/ThreadInitializer;

    const-string v2, "FirebaseEventTarget"

    invoke-interface {v1, v0, v2}, Lcom/firebase/client/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/firebase/client/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/firebase/client/core/ThreadInitializer;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/firebase/client/core/ThreadInitializer;->setDaemon(Ljava/lang/Thread;Z)V

    .line 31
    return-object v0
.end method
