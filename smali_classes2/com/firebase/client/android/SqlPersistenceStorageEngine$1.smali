.class Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/android/SqlPersistenceStorageEngine;

.field final synthetic val$rowIdsToKeep:Lcom/firebase/client/core/utilities/ImmutableTree;


# direct methods
.method constructor <init>(Lcom/firebase/client/android/SqlPersistenceStorageEngine;Lcom/firebase/client/core/utilities/ImmutableTree;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;->this$0:Lcom/firebase/client/android/SqlPersistenceStorageEngine;

    iput-object p2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;->val$rowIdsToKeep:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "keepPath"    # Lcom/firebase/client/core/Path;
    .param p2, "ignore"    # Ljava/lang/Void;
    .param p3, "nodesToResave"    # Ljava/lang/Integer;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;->val$rowIdsToKeep:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/core/Path;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 572
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
