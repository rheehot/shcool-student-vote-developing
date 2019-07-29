.class Lcom/firebase/client/core/Repo$17;
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

.field final synthetic val$transaction:Lcom/firebase/client/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/firebase/client/core/Repo$17;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$17;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 965
    iget-object v0, p0, Lcom/firebase/client/core/Repo$17;->this$0:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$17;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v3, p0, Lcom/firebase/client/core/Repo$17;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-static {v3}, Lcom/firebase/client/core/Repo$TransactionData;->access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/Repo$17;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-static {v4}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/core/EventRegistration;)V

    .line 967
    return-void
.end method
