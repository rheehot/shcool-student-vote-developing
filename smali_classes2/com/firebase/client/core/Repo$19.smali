.class Lcom/firebase/client/core/Repo$19;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeVisitor",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/firebase/client/core/Repo$TransactionData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$queue:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/firebase/client/core/Repo$19;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$19;->val$queue:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1020
    .local p1, "tree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    iget-object v0, p0, Lcom/firebase/client/core/Repo$19;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$19;->val$queue:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/firebase/client/core/Repo;->access$2800(Lcom/firebase/client/core/Repo;Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V

    .line 1021
    return-void
.end method
