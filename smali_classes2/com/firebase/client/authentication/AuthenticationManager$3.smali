.class Lcom/firebase/client/authentication/AuthenticationManager$3;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/firebase/client/Firebase$ValueResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->ignoreResultValueHandler(Lcom/firebase/client/Firebase$ResultHandler;)Lcom/firebase/client/Firebase$ValueResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ResultHandler;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$3;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$3;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/firebase/client/FirebaseError;)V
    .locals 1
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$3;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-interface {v0, p1}, Lcom/firebase/client/Firebase$ResultHandler;->onError(Lcom/firebase/client/FirebaseError;)V

    .line 157
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$3;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-interface {v0}, Lcom/firebase/client/Firebase$ResultHandler;->onSuccess()V

    .line 152
    return-void
.end method
