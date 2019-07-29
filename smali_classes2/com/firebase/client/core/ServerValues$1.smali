.class final Lcom/firebase/client/core/ServerValues$1;
.super Ljava/lang/Object;
.source "ServerValues.java"

# interfaces
.implements Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ServerValues;->resolveDeferredValueTree(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)Lcom/firebase/client/core/SparseSnapshotTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resolvedTree:Lcom/firebase/client/core/SparseSnapshotTree;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/firebase/client/core/ServerValues$1;->val$resolvedTree:Lcom/firebase/client/core/SparseSnapshotTree;

    iput-object p2, p0, Lcom/firebase/client/core/ServerValues$1;->val$serverValues:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 2
    .param p1, "prefixPath"    # Lcom/firebase/client/core/Path;
    .param p2, "tree"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/firebase/client/core/ServerValues$1;->val$resolvedTree:Lcom/firebase/client/core/SparseSnapshotTree;

    iget-object v1, p0, Lcom/firebase/client/core/ServerValues$1;->val$serverValues:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/SparseSnapshotTree;->remember(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 44
    return-void
.end method
