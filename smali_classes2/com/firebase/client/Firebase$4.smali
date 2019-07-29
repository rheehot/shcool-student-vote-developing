.class Lcom/firebase/client/Firebase$4;
.super Ljava/lang/Object;
.source "Firebase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Firebase;->runTransaction(Lcom/firebase/client/Transaction$Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Firebase;

.field final synthetic val$fireLocalEvents:Z

.field final synthetic val$handler:Lcom/firebase/client/Transaction$Handler;


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/Transaction$Handler;Z)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/firebase/client/Firebase$4;->this$0:Lcom/firebase/client/Firebase;

    iput-object p2, p0, Lcom/firebase/client/Firebase$4;->val$handler:Lcom/firebase/client/Transaction$Handler;

    iput-boolean p3, p0, Lcom/firebase/client/Firebase$4;->val$fireLocalEvents:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 803
    iget-object v0, p0, Lcom/firebase/client/Firebase$4;->this$0:Lcom/firebase/client/Firebase;

    iget-object v0, v0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Firebase$4;->this$0:Lcom/firebase/client/Firebase;

    invoke-virtual {v1}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/Firebase$4;->val$handler:Lcom/firebase/client/Transaction$Handler;

    iget-boolean v3, p0, Lcom/firebase/client/Firebase$4;->val$fireLocalEvents:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/Repo;->startTransaction(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Z)V

    .line 804
    return-void
.end method
