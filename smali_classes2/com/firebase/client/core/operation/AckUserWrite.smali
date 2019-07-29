.class public Lcom/firebase/client/core/operation/AckUserWrite;
.super Lcom/firebase/client/core/operation/Operation;
.source "AckUserWrite.java"


# instance fields
.field private final affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final revert:Z


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Z)V
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "revert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "affectedTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->AckUserWrite:Lcom/firebase/client/core/operation/Operation$OperationType;

    sget-object v1, Lcom/firebase/client/core/operation/OperationSource;->USER:Lcom/firebase/client/core/operation/OperationSource;

    invoke-direct {p0, v0, v1, p1}, Lcom/firebase/client/core/operation/Operation;-><init>(Lcom/firebase/client/core/operation/Operation$OperationType;Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    .line 17
    iput-object p2, p0, Lcom/firebase/client/core/operation/AckUserWrite;->affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 18
    iput-boolean p3, p0, Lcom/firebase/client/core/operation/AckUserWrite;->revert:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getAffectedTree()Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/firebase/client/core/operation/AckUserWrite;->affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    return-object v0
.end method

.method public isRevert()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/firebase/client/core/operation/AckUserWrite;->revert:Z

    return v0
.end method

.method public operationForChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/operation/Operation;
    .locals 5
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/firebase/client/core/operation/AckUserWrite;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/firebase/client/core/operation/AckUserWrite;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "operationForChild called for unrelated child."

    invoke-static {v1, v2}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 32
    new-instance v1, Lcom/firebase/client/core/operation/AckUserWrite;

    iget-object v2, p0, Lcom/firebase/client/core/operation/AckUserWrite;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/operation/AckUserWrite;->affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-boolean v4, p0, Lcom/firebase/client/core/operation/AckUserWrite;->revert:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/core/operation/AckUserWrite;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Z)V

    move-object p0, v1

    .line 39
    .end local p0    # "this":Lcom/firebase/client/core/operation/AckUserWrite;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "this":Lcom/firebase/client/core/operation/AckUserWrite;
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/operation/AckUserWrite;->affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/firebase/client/core/operation/AckUserWrite;->affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    const-string v2, "affectedTree should not have overlapping affected paths."

    invoke-static {v1, v2}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/core/operation/AckUserWrite;->affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v2, Lcom/firebase/client/core/Path;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 39
    .local v0, "childTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/firebase/client/core/operation/AckUserWrite;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    iget-boolean v3, p0, Lcom/firebase/client/core/operation/AckUserWrite;->revert:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/firebase/client/core/operation/AckUserWrite;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Z)V

    move-object p0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/AckUserWrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/firebase/client/core/operation/AckUserWrite;->revert:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/firebase/client/core/operation/AckUserWrite;->affectedTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
