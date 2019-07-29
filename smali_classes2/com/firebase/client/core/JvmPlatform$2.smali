.class Lcom/firebase/client/core/JvmPlatform$2;
.super Ljava/lang/Thread;
.source "JvmPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/JvmPlatform;->runBackgroundTask(Lcom/firebase/client/core/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/JvmPlatform;

.field final synthetic val$ctx:Lcom/firebase/client/core/Context;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/JvmPlatform;Ljava/lang/Runnable;Lcom/firebase/client/core/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/firebase/client/core/JvmPlatform$2;->this$0:Lcom/firebase/client/core/JvmPlatform;

    iput-object p2, p0, Lcom/firebase/client/core/JvmPlatform$2;->val$r:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/firebase/client/core/JvmPlatform$2;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/firebase/client/core/JvmPlatform$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    throw v0

    .line 72
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/firebase/client/core/JvmPlatform$2;->val$ctx:Lcom/firebase/client/core/Context;

    const-string v2, "BackgroundTask"

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    const-string v2, "An unexpected error occurred. Please contact support@firebase.com. Details: "

    invoke-virtual {v1, v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
