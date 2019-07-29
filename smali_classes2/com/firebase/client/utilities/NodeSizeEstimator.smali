.class public Lcom/firebase/client/utilities/NodeSizeEstimator;
.super Ljava/lang/Object;
.source "NodeSizeEstimator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LEAF_PRIORITY_OVERHEAD:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/firebase/client/utilities/NodeSizeEstimator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/LeafNode",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "node":Lcom/firebase/client/snapshot/LeafNode;, "Lcom/firebase/client/snapshot/LeafNode<*>;"
    instance-of v2, p0, Lcom/firebase/client/snapshot/DoubleNode;

    if-eqz v2, :cond_0

    .line 19
    const-wide/16 v0, 0x8

    .line 29
    .local v0, "valueSize":J
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    .end local v0    # "valueSize":J
    :goto_1
    return-wide v0

    .line 20
    :cond_0
    instance-of v2, p0, Lcom/firebase/client/snapshot/LongNode;

    if-eqz v2, :cond_1

    .line 21
    const-wide/16 v0, 0x8

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 22
    .end local v0    # "valueSize":J
    :cond_1
    instance-of v2, p0, Lcom/firebase/client/snapshot/BooleanNode;

    if-eqz v2, :cond_2

    .line 23
    const-wide/16 v0, 0x4

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 24
    .end local v0    # "valueSize":J
    :cond_2
    instance-of v2, p0, Lcom/firebase/client/snapshot/StringNode;

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-long v0, v2

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 27
    .end local v0    # "valueSize":J
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown leaf node type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    .restart local v0    # "valueSize":J
    :cond_4
    const-wide/16 v2, 0x18

    add-long v4, v2, v0

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/LeafNode;

    invoke-static {v2}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J

    move-result-wide v2

    add-long v0, v4, v2

    goto :goto_1
.end method

.method public static estimateSerializedNodeSize(Lcom/firebase/client/snapshot/Node;)J
    .locals 8
    .param p0, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    const-wide/16 v4, 0x4

    .line 37
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-wide v2, v4

    .line 53
    .local v1, "i$":Ljava/util/Iterator;
    .local v2, "sum":J
    :cond_0
    :goto_0
    return-wide v2

    .line 39
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sum":J
    :cond_1
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    check-cast p0, Lcom/firebase/client/snapshot/LeafNode;

    .end local p0    # "node":Lcom/firebase/client/snapshot/Node;
    invoke-static {p0}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J

    move-result-wide v2

    goto :goto_0

    .line 42
    .restart local p0    # "node":Lcom/firebase/client/snapshot/Node;
    :cond_2
    sget-boolean v6, Lcom/firebase/client/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    instance-of v6, p0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v6, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected node type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 43
    :cond_3
    const-wide/16 v2, 0x1

    .line 44
    .restart local v2    # "sum":J
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 45
    .local v0, "entry":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 46
    add-long/2addr v2, v4

    .line 47
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-static {v6}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/firebase/client/snapshot/Node;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 48
    goto :goto_1

    .line 49
    .end local v0    # "entry":Lcom/firebase/client/snapshot/NamedNode;
    :cond_4
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    .line 51
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/LeafNode;

    invoke-static {v4}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static nodeCount(Lcom/firebase/client/snapshot/Node;)I
    .locals 6
    .param p0, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 58
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const/4 v2, 0x0

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 60
    :cond_1
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    :cond_2
    sget-boolean v3, Lcom/firebase/client/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    instance-of v3, p0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected node type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 64
    :cond_3
    const/4 v2, 0x0

    .line 65
    .local v2, "sum":I
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 66
    .local v0, "entry":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/client/utilities/NodeSizeEstimator;->nodeCount(Lcom/firebase/client/snapshot/Node;)I

    move-result v3

    add-int/2addr v2, v3

    .line 67
    goto :goto_1
.end method
