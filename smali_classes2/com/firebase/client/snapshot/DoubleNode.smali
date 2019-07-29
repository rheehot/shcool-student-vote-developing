.class public Lcom/firebase/client/snapshot/DoubleNode;
.super Lcom/firebase/client/snapshot/LeafNode;
.source "DoubleNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/snapshot/LeafNode",
        "<",
        "Lcom/firebase/client/snapshot/DoubleNode;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final value:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/firebase/client/snapshot/DoubleNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/snapshot/DoubleNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 15
    invoke-direct {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 16
    iput-object p1, p0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    .line 17
    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/firebase/client/snapshot/DoubleNode;)I
    .locals 2
    .param p1, "other"    # Lcom/firebase/client/snapshot/DoubleNode;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object v1, p1, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic compareLeafValues(Lcom/firebase/client/snapshot/LeafNode;)I
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/snapshot/LeafNode;

    .prologue
    .line 10
    check-cast p1, Lcom/firebase/client/snapshot/DoubleNode;

    .end local p1    # "x0":Lcom/firebase/client/snapshot/LeafNode;
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DoubleNode;->compareLeafValues(Lcom/firebase/client/snapshot/DoubleNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    instance-of v2, p1, Lcom/firebase/client/snapshot/DoubleNode;

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/firebase/client/snapshot/DoubleNode;

    .line 55
    .local v0, "otherDoubleNode":Lcom/firebase/client/snapshot/DoubleNode;
    iget-object v2, p0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object v3, v0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/snapshot/DoubleNode;->priority:Lcom/firebase/client/snapshot/Node;

    iget-object v3, v0, Lcom/firebase/client/snapshot/DoubleNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 4
    .param p1, "version"    # Lcom/firebase/client/snapshot/Node$HashVersion;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DoubleNode;->getPriorityHash(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "toHash":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/firebase/client/utilities/Utilities;->doubleToHashString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method protected getLeafType()Lcom/firebase/client/snapshot/LeafNode$LeafType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->Number:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/DoubleNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/DoubleNode;
    .locals 2
    .param p1, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 34
    sget-boolean v0, Lcom/firebase/client/snapshot/DoubleNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    new-instance v0, Lcom/firebase/client/snapshot/DoubleNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DoubleNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/DoubleNode;

    move-result-object v0

    return-object v0
.end method
