.class Lcom/firebase/client/core/Repo$22;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->abortTransactionsAtNode(Lcom/firebase/client/core/utilities/Tree;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$abortError:Lcom/firebase/client/FirebaseError;

.field final synthetic val$transaction:Lcom/firebase/client/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/firebase/client/core/Repo$22;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$22;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$22;->val$abortError:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/firebase/client/core/Repo$22;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$2100(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/Transaction$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Repo$22;->val$abortError:Lcom/firebase/client/FirebaseError;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/Transaction$Handler;->onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V

    .line 1091
    return-void
.end method
