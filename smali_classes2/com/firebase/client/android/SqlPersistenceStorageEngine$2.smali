.class Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;
.super Ljava/lang/Object;
.source "SqlPersistenceStorageEngine.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/persistence/PruneForest;Ljava/util/List;)V
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/android/SqlPersistenceStorageEngine;

.field final synthetic val$currentNode:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$relativePath:Lcom/firebase/client/core/Path;

.field final synthetic val$rowIdsToKeep:Lcom/firebase/client/core/utilities/ImmutableTree;

.field final synthetic val$rowsToResaveAccumulator:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/android/SqlPersistenceStorageEngine;Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/List;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->this$0:Lcom/firebase/client/android/SqlPersistenceStorageEngine;

    iput-object p2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$rowIdsToKeep:Lcom/firebase/client/core/utilities/ImmutableTree;

    iput-object p3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$rowsToResaveAccumulator:Ljava/util/List;

    iput-object p4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$relativePath:Lcom/firebase/client/core/Path;

    iput-object p5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$currentNode:Lcom/firebase/client/snapshot/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/core/Path;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 583
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Void;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "keepPath"    # Lcom/firebase/client/core/Path;
    .param p2, "ignore"    # Ljava/lang/Void;
    .param p3, "ignore2"    # Ljava/lang/Void;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$rowIdsToKeep:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$rowsToResaveAccumulator:Ljava/util/List;

    new-instance v1, Lcom/firebase/client/utilities/Pair;

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$relativePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;->val$currentNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
