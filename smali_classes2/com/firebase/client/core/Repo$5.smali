.class Lcom/firebase/client/core/Repo$5;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$error:Lcom/firebase/client/FirebaseError;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$ref:Lcom/firebase/client/Firebase;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$5;->val$error:Lcom/firebase/client/FirebaseError;

    iput-object p4, p0, Lcom/firebase/client/core/Repo$5;->val$ref:Lcom/firebase/client/Firebase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/firebase/client/core/Repo$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$5;->val$error:Lcom/firebase/client/FirebaseError;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$5;->val$ref:Lcom/firebase/client/Firebase;

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 296
    return-void
.end method
