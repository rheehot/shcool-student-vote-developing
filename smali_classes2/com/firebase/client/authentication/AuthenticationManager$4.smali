.class Lcom/firebase/client/authentication/AuthenticationManager$4;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->fireAuthErrorIfNotPreempted(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

.field final synthetic val$error:Lcom/firebase/client/FirebaseError;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$4;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$4;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$4;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$4;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$4;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-virtual {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->fireError(Lcom/firebase/client/FirebaseError;)V

    .line 207
    return-void
.end method
