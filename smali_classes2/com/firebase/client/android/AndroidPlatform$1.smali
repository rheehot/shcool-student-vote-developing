.class Lcom/firebase/client/android/AndroidPlatform$1;
.super Lcom/firebase/client/utilities/DefaultRunLoop;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/android/AndroidPlatform;->newRunLoop(Lcom/firebase/client/core/Context;)Lcom/firebase/client/RunLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/android/AndroidPlatform;

.field final synthetic val$logger:Lcom/firebase/client/utilities/LogWrapper;


# direct methods
.method constructor <init>(Lcom/firebase/client/android/AndroidPlatform;Lcom/firebase/client/utilities/LogWrapper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/firebase/client/android/AndroidPlatform$1;->this$0:Lcom/firebase/client/android/AndroidPlatform;

    iput-object p2, p0, Lcom/firebase/client/android/AndroidPlatform$1;->val$logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-direct {p0}, Lcom/firebase/client/utilities/DefaultRunLoop;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uncaught exception in Firebase runloop ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Please report to support@firebase.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/firebase/client/android/AndroidPlatform$1;->val$logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2, v1, p1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/firebase/client/android/AndroidPlatform$1;->this$0:Lcom/firebase/client/android/AndroidPlatform;

    invoke-static {v2}, Lcom/firebase/client/android/AndroidPlatform;->access$000(Lcom/firebase/client/android/AndroidPlatform;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/firebase/client/android/AndroidPlatform$1$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/firebase/client/android/AndroidPlatform$1$1;-><init>(Lcom/firebase/client/android/AndroidPlatform$1;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method
