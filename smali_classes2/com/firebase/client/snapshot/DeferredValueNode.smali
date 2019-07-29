.class public Lcom/firebase/client/snapshot/DeferredValueNode;
.super Lcom/firebase/client/snapshot/LeafNode;
.source "DeferredValueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/snapshot/LeafNode",
        "<",
        "Lcom/firebase/client/snapshot/DeferredValueNode;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/firebase/client/snapshot/DeferredValueNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/snapshot/DeferredValueNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p2, "priority"    # Lcom/firebase/client/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 13
    iput-object p1, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/firebase/client/snapshot/DeferredValueNode;)I
    .locals 1
    .param p1, "other"    # Lcom/firebase/client/snapshot/DeferredValueNode;

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic compareLeafValues(Lcom/firebase/client/snapshot/LeafNode;)I
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/snapshot/LeafNode;

    .prologue
    .line 7
    check-cast p1, Lcom/firebase/client/snapshot/DeferredValueNode;

    .end local p1    # "x0":Lcom/firebase/client/snapshot/LeafNode;
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;->compareLeafValues(Lcom/firebase/client/snapshot/DeferredValueNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 45
    instance-of v2, p1, Lcom/firebase/client/snapshot/DeferredValueNode;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/firebase/client/snapshot/DeferredValueNode;

    .line 49
    .local v0, "otherDeferredValueNode":Lcom/firebase/client/snapshot/DeferredValueNode;
    iget-object v2, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    iget-object v3, v0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->priority:Lcom/firebase/client/snapshot/Node;

    iget-object v3, v0, Lcom/firebase/client/snapshot/DeferredValueNode;->priority:Lcom/firebase/client/snapshot/Node;

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
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;->getPriorityHash(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deferredValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeafType()Lcom/firebase/client/snapshot/LeafNode$LeafType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->DeferredValue:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/DeferredValueNode;
    .locals 2
    .param p1, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 28
    sget-boolean v0, Lcom/firebase/client/snapshot/DeferredValueNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Lcom/firebase/client/snapshot/DeferredValueNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;-><init>(Ljava/util/Map;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/DeferredValueNode;

    move-result-object v0

    return-object v0
.end method
