.class public Lcom/firebase/client/snapshot/BooleanNode;
.super Lcom/firebase/client/snapshot/LeafNode;
.source "BooleanNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/snapshot/LeafNode",
        "<",
        "Lcom/firebase/client/snapshot/BooleanNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/Node;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 10
    invoke-direct {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    .line 12
    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/firebase/client/snapshot/BooleanNode;)I
    .locals 2
    .param p1, "other"    # Lcom/firebase/client/snapshot/BooleanNode;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    iget-boolean v1, p1, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected bridge synthetic compareLeafValues(Lcom/firebase/client/snapshot/LeafNode;)I
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/snapshot/LeafNode;

    .prologue
    .line 5
    check-cast p1, Lcom/firebase/client/snapshot/BooleanNode;

    .end local p1    # "x0":Lcom/firebase/client/snapshot/LeafNode;
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/BooleanNode;->compareLeafValues(Lcom/firebase/client/snapshot/BooleanNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 41
    instance-of v2, p1, Lcom/firebase/client/snapshot/BooleanNode;

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/firebase/client/snapshot/BooleanNode;

    .line 45
    .local v0, "otherBooleanNode":Lcom/firebase/client/snapshot/BooleanNode;
    iget-boolean v2, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    iget-boolean v3, v0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/firebase/client/snapshot/BooleanNode;->priority:Lcom/firebase/client/snapshot/Node;

    iget-object v3, v0, Lcom/firebase/client/snapshot/BooleanNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # Lcom/firebase/client/snapshot/Node$HashVersion;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/BooleanNode;->getPriorityHash(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "boolean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeafType()Lcom/firebase/client/snapshot/LeafNode$LeafType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->Boolean:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/firebase/client/snapshot/BooleanNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/BooleanNode;
    .locals 2
    .param p1, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 26
    new-instance v0, Lcom/firebase/client/snapshot/BooleanNode;

    iget-boolean v1, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/BooleanNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/BooleanNode;

    move-result-object v0

    return-object v0
.end method
