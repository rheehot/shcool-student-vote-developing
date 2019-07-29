.class Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->fireSuccess(Lcom/firebase/client/AuthData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

.field final synthetic val$authData:Lcom/firebase/client/AuthData;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/AuthData;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->val$authData:Lcom/firebase/client/AuthData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->access$000(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Lcom/firebase/client/Firebase$AuthListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->access$000(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Lcom/firebase/client/Firebase$AuthListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->val$authData:Lcom/firebase/client/AuthData;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthSuccess(Ljava/lang/Object;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->access$100(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Lcom/firebase/client/Firebase$AuthResultHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->access$100(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Lcom/firebase/client/Firebase$AuthResultHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->val$authData:Lcom/firebase/client/AuthData;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$AuthResultHandler;->onAuthenticated(Lcom/firebase/client/AuthData;)V

    .line 91
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->access$102(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/Firebase$AuthResultHandler;)Lcom/firebase/client/Firebase$AuthResultHandler;

    goto :goto_0
.end method
