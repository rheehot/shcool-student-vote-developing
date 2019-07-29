.class Lcom/firebase/client/core/GaePlatform$3;
.super Lcom/firebase/client/utilities/DefaultRunLoop;
.source "GaePlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/GaePlatform;->newRunLoop(Lcom/firebase/client/core/Context;)Lcom/firebase/client/RunLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/GaePlatform;

.field final synthetic val$logger:Lcom/firebase/client/utilities/LogWrapper;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/GaePlatform;Lcom/firebase/client/utilities/LogWrapper;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/firebase/client/core/GaePlatform$3;->this$0:Lcom/firebase/client/core/GaePlatform;

    iput-object p2, p0, Lcom/firebase/client/core/GaePlatform$3;->val$logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-direct {p0}, Lcom/firebase/client/utilities/DefaultRunLoop;-><init>()V

    return-void
.end method


# virtual methods
.method protected getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->threadFactoryInstance:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method protected getThreadInitializer()Lcom/firebase/client/core/ThreadInitializer;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->threadInitializerInstance:Lcom/firebase/client/core/ThreadInitializer;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/firebase/client/core/GaePlatform$3;->val$logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaught exception in Firebase runloop ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Please report to support@firebase.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method
