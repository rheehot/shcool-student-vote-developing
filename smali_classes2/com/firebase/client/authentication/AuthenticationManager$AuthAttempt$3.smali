.class Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$3;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->fireRevoked(Lcom/firebase/client/FirebaseError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

.field final synthetic val$error:Lcom/firebase/client/FirebaseError;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$3;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$3;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$3;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->access$000(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Lcom/firebase/client/Firebase$AuthListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$3;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthRevoked(Lcom/firebase/client/FirebaseError;)V

    .line 104
    return-void
.end method
