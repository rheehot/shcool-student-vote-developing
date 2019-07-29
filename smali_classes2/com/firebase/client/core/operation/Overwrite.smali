.class public Lcom/firebase/client/core/operation/Overwrite;
.super Lcom/firebase/client/core/operation/Operation;
.source "Overwrite.java"


# instance fields
.field private final snapshot:Lcom/firebase/client/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 1
    .param p1, "source"    # Lcom/firebase/client/core/operation/OperationSource;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "snapshot"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 12
    sget-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->Overwrite:Lcom/firebase/client/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/firebase/client/core/operation/Operation;-><init>(Lcom/firebase/client/core/operation/Operation$OperationType;Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    .line 13
    iput-object p3, p0, Lcom/firebase/client/core/operation/Overwrite;->snapshot:Lcom/firebase/client/snapshot/Node;

    .line 14
    return-void
.end method


# virtual methods
.method public getSnapshot()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/firebase/client/core/operation/Overwrite;->snapshot:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public operationForChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/operation/Operation;
    .locals 4
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/operation/Overwrite;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/firebase/client/core/operation/Overwrite;

    iget-object v1, p0, Lcom/firebase/client/core/operation/Overwrite;->source:Lcom/firebase/client/core/operation/OperationSource;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/operation/Overwrite;->snapshot:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3, p1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/operation/Overwrite;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/firebase/client/core/operation/Overwrite;

    iget-object v1, p0, Lcom/firebase/client/core/operation/Overwrite;->source:Lcom/firebase/client/core/operation/OperationSource;

    iget-object v2, p0, Lcom/firebase/client/core/operation/Overwrite;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/operation/Overwrite;->snapshot:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/operation/Overwrite;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v0, "Overwrite { path=%s, source=%s, snapshot=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/Overwrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/Overwrite;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/firebase/client/core/operation/Overwrite;->snapshot:Lcom/firebase/client/snapshot/Node;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
