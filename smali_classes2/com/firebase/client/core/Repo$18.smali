.class Lcom/firebase/client/core/Repo$18;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->rerunTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$callbackError:Lcom/firebase/client/FirebaseError;

.field final synthetic val$snapshot:Lcom/firebase/client/DataSnapshot;

.field final synthetic val$transaction:Lcom/firebase/client/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/DataSnapshot;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/firebase/client/core/Repo$18;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$18;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$18;->val$callbackError:Lcom/firebase/client/FirebaseError;

    iput-object p4, p0, Lcom/firebase/client/core/Repo$18;->val$snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 974
    iget-object v0, p0, Lcom/firebase/client/core/Repo$18;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$2100(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/Transaction$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Repo$18;->val$callbackError:Lcom/firebase/client/FirebaseError;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/firebase/client/core/Repo$18;->val$snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/Transaction$Handler;->onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V

    .line 975
    return-void
.end method
