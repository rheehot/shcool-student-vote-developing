.class Lcom/firebase/client/authentication/AuthenticationManager$12;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->unauth(Lcom/firebase/client/Firebase$CompletionListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/util/concurrent/Semaphore;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->val$semaphore:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1400(Lcom/firebase/client/authentication/AuthenticationManager;)V

    .line 592
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1500(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/AuthData;)V

    .line 594
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 595
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1600(Lcom/firebase/client/authentication/AuthenticationManager;)Z

    .line 596
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$500(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/core/PersistentConnection;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/authentication/AuthenticationManager$12$1;

    invoke-direct {v1, p0}, Lcom/firebase/client/authentication/AuthenticationManager$12$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$12;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/PersistentConnection;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 606
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$500(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/core/PersistentConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->writesPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1800(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1800(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    const-string v1, "Unpausing writes after explicit unauth."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$500(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/core/PersistentConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->unpauseWrites()V

    .line 610
    :cond_1
    return-void
.end method
