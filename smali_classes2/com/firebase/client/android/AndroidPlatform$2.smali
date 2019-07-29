.class Lcom/firebase/client/android/AndroidPlatform$2;
.super Ljava/lang/Thread;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/android/AndroidPlatform;->runBackgroundTask(Lcom/firebase/client/core/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/android/AndroidPlatform;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/firebase/client/android/AndroidPlatform;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/firebase/client/android/AndroidPlatform$2;->this$0:Lcom/firebase/client/android/AndroidPlatform;

    iput-object p2, p0, Lcom/firebase/client/android/AndroidPlatform$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/firebase/client/android/AndroidPlatform$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    throw v0

    .line 80
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Firebase"

    const-string v2, "An unexpected error occurred. Please contact support@firebase.com. Details: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
