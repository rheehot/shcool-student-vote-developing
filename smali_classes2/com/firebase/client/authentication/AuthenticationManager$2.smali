.class Lcom/firebase/client/authentication/AuthenticationManager$2;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->fireOnError(Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$error:Lcom/firebase/client/FirebaseError;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$2;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$2;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$2;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$2;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$2;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$ValueResultHandler;->onError(Lcom/firebase/client/FirebaseError;)V

    .line 142
    return-void
.end method
