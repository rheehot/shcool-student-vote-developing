.class Lcom/firebase/client/core/Repo$21;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


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

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;I)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/firebase/client/core/Repo$21;->this$0:Lcom/firebase/client/core/Repo;

    iput p2, p0, Lcom/firebase/client/core/Repo$21;->val$reason:I

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
    .line 1044
    .local p1, "tree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    iget-object v0, p0, Lcom/firebase/client/core/Repo$21;->this$0:Lcom/firebase/client/core/Repo;

    iget v1, p0, Lcom/firebase/client/core/Repo$21;->val$reason:I

    invoke-static {v0, p1, v1}, Lcom/firebase/client/core/Repo;->access$2900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;I)V

    .line 1045
    return-void
.end method
