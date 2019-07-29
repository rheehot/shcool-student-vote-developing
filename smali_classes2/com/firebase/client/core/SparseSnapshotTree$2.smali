.class Lcom/firebase/client/core/SparseSnapshotTree$2;
.super Ljava/lang/Object;
.source "SparseSnapshotTree.java"

# interfaces
.implements Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotChildVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SparseSnapshotTree;->forEachTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SparseSnapshotTree;

.field final synthetic val$prefixPath:Lcom/firebase/client/core/Path;

.field final synthetic val$visitor:Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SparseSnapshotTree;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/firebase/client/core/SparseSnapshotTree$2;->this$0:Lcom/firebase/client/core/SparseSnapshotTree;

    iput-object p2, p0, Lcom/firebase/client/core/SparseSnapshotTree$2;->val$prefixPath:Lcom/firebase/client/core/Path;

    iput-object p3, p0, Lcom/firebase/client/core/SparseSnapshotTree$2;->val$visitor:Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/SparseSnapshotTree;)V
    .locals 2
    .param p1, "key"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "tree"    # Lcom/firebase/client/core/SparseSnapshotTree;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/firebase/client/core/SparseSnapshotTree$2;->val$prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/SparseSnapshotTree$2;->val$visitor:Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;

    invoke-virtual {p2, v0, v1}, Lcom/firebase/client/core/SparseSnapshotTree;->forEachTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    .line 111
    return-void
.end method
