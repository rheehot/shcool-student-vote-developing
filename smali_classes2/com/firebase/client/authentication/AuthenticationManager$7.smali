.class Lcom/firebase/client/authentication/AuthenticationManager$7;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->updateAuthState(Lcom/firebase/client/AuthData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$authData:Lcom/firebase/client/AuthData;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$AuthStateListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthStateListener;Lcom/firebase/client/AuthData;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$7;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$7;->val$listener:Lcom/firebase/client/Firebase$AuthStateListener;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$7;->val$authData:Lcom/firebase/client/AuthData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$7;->val$listener:Lcom/firebase/client/Firebase$AuthStateListener;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$7;->val$authData:Lcom/firebase/client/AuthData;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$AuthStateListener;->onAuthStateChanged(Lcom/firebase/client/AuthData;)V

    .line 405
    return-void
.end method
