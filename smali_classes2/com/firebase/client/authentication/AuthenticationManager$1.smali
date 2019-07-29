.class Lcom/firebase/client/authentication/AuthenticationManager$1;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->fireOnSuccess(Lcom/firebase/client/Firebase$ValueResultHandler;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$1;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$1;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$1;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$1;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$ValueResultHandler;->onSuccess(Ljava/lang/Object;)V

    .line 131
    return-void
.end method
