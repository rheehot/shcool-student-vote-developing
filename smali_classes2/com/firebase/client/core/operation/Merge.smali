.class public Lcom/firebase/client/core/operation/Merge;
.super Lcom/firebase/client/core/operation/Operation;
.source "Merge.java"


# instance fields
.field private final children:Lcom/firebase/client/core/CompoundWrite;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 1
    .param p1, "source"    # Lcom/firebase/client/core/operation/OperationSource;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "children"    # Lcom/firebase/client/core/CompoundWrite;

    .prologue
    .line 17
    sget-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->Merge:Lcom/firebase/client/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/firebase/client/core/operation/Operation;-><init>(Lcom/firebase/client/core/operation/Operation$OperationType;Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    .line 18
    iput-object p3, p0, Lcom/firebase/client/core/operation/Merge;->children:Lcom/firebase/client/core/CompoundWrite;

    .line 19
    return-void
.end method


# virtual methods
.method public getChildren()Lcom/firebase/client/core/CompoundWrite;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/firebase/client/core/operation/Merge;->children:Lcom/firebase/client/core/CompoundWrite;

    return-object v0
.end method

.method public operationForChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/operation/Operation;
    .locals 6
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/firebase/client/core/operation/Merge;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    iget-object v2, p0, Lcom/firebase/client/core/operation/Merge;->children:Lcom/firebase/client/core/CompoundWrite;

    new-instance v3, Lcom/firebase/client/core/Path;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 28
    .local v0, "childTree":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    .end local v0    # "childTree":Lcom/firebase/client/core/CompoundWrite;
    :cond_0
    :goto_0
    return-object v1

    .line 31
    .restart local v0    # "childTree":Lcom/firebase/client/core/CompoundWrite;
    :cond_1
    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 33
    new-instance v1, Lcom/firebase/client/core/operation/Overwrite;

    iget-object v2, p0, Lcom/firebase/client/core/operation/Merge;->source:Lcom/firebase/client/core/operation/OperationSource;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/core/operation/Overwrite;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 35
    :cond_2
    new-instance v1, Lcom/firebase/client/core/operation/Merge;

    iget-object v2, p0, Lcom/firebase/client/core/operation/Merge;->source:Lcom/firebase/client/core/operation/OperationSource;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/firebase/client/core/operation/Merge;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    goto :goto_0

    .line 37
    .end local v0    # "childTree":Lcom/firebase/client/core/CompoundWrite;
    :cond_3
    iget-object v2, p0, Lcom/firebase/client/core/operation/Merge;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v1, Lcom/firebase/client/core/operation/Merge;

    iget-object v2, p0, Lcom/firebase/client/core/operation/Merge;->source:Lcom/firebase/client/core/operation/OperationSource;

    iget-object v3, p0, Lcom/firebase/client/core/operation/Merge;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v3}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/operation/Merge;->children:Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/core/operation/Merge;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    const-string v0, "Merge { path=%s, source=%s, children=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/Merge;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/Merge;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/firebase/client/core/operation/Merge;->children:Lcom/firebase/client/core/CompoundWrite;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
