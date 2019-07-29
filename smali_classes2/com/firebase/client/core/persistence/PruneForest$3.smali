.class Lcom/firebase/client/core/persistence/PruneForest$3;
.super Ljava/lang/Object;
.source "PruneForest.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/persistence/PruneForest;

.field final synthetic val$treeVisitor:Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/persistence/PruneForest;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/firebase/client/core/persistence/PruneForest$3;->this$0:Lcom/firebase/client/core/persistence/PruneForest;

    iput-object p2, p0, Lcom/firebase/client/core/persistence/PruneForest$3;->val$treeVisitor:Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "relativePath"    # Lcom/firebase/client/core/Path;
    .param p2, "prune"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/lang/Boolean;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "accum":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest$3;->val$treeVisitor:Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 103
    .end local p3    # "accum":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p3
.end method

.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/core/Path;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/persistence/PruneForest$3;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
