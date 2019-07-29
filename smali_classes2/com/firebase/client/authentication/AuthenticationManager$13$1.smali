.class Lcom/firebase/client/authentication/AuthenticationManager$13$1;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/authentication/AuthenticationManager$13;

.field final synthetic val$authData:Lcom/firebase/client/AuthData;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$13;Lcom/firebase/client/AuthData;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$13$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$13;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$13$1;->val$authData:Lcom/firebase/client/AuthData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$13$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$13;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$13;->val$listener:Lcom/firebase/client/Firebase$AuthStateListener;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$13$1;->val$authData:Lcom/firebase/client/AuthData;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$AuthStateListener;->onAuthStateChanged(Lcom/firebase/client/AuthData;)V

    .line 633
    return-void
.end method
