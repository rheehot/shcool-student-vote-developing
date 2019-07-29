.class Lcom/firebase/client/core/Repo$20;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeFilter",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/firebase/client/core/Repo$TransactionData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;I)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/firebase/client/core/Repo$20;->this$0:Lcom/firebase/client/core/Repo;

    iput p2, p0, Lcom/firebase/client/core/Repo$20;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterTreeNode(Lcom/firebase/client/core/utilities/Tree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 1034
    .local p1, "tree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    iget-object v0, p0, Lcom/firebase/client/core/Repo$20;->this$0:Lcom/firebase/client/core/Repo;

    iget v1, p0, Lcom/firebase/client/core/Repo$20;->val$reason:I

    invoke-static {v0, p1, v1}, Lcom/firebase/client/core/Repo;->access$2900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;I)V

    .line 1035
    const/4 v0, 0x0

    return v0
.end method
