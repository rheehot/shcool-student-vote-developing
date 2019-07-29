.class Lcom/firebase/client/core/Repo$15$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo$15;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/core/Repo$15;

.field final synthetic val$snap:Lcom/firebase/client/DataSnapshot;

.field final synthetic val$txn:Lcom/firebase/client/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo$15;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/DataSnapshot;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/firebase/client/core/Repo$15$1;->this$1:Lcom/firebase/client/core/Repo$15;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$15$1;->val$txn:Lcom/firebase/client/core/Repo$TransactionData;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$15$1;->val$snap:Lcom/firebase/client/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 789
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15$1;->val$txn:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$2100(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/Transaction$Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/firebase/client/core/Repo$15$1;->val$snap:Lcom/firebase/client/DataSnapshot;

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/Transaction$Handler;->onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V

    .line 790
    return-void
.end method
