.class public Lcom/firebase/client/snapshot/PriorityUtilities;
.super Ljava/lang/Object;
.source "PriorityUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NullPriority()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    return-object v0
.end method

.method public static isValidPriority(Lcom/firebase/client/snapshot/Node;)Z
    .locals 1
    .param p0, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 21
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/firebase/client/snapshot/DoubleNode;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/firebase/client/snapshot/StringNode;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/firebase/client/snapshot/DeferredValueNode;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 30
    .local v0, "priority":Lcom/firebase/client/snapshot/Node;
    instance-of v2, v0, Lcom/firebase/client/snapshot/LongNode;

    if-eqz v2, :cond_0

    .line 31
    new-instance v1, Lcom/firebase/client/snapshot/DoubleNode;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/Node;)V

    .end local v0    # "priority":Lcom/firebase/client/snapshot/Node;
    .local v1, "priority":Lcom/firebase/client/snapshot/Node;
    move-object v0, v1

    .line 33
    .end local v1    # "priority":Lcom/firebase/client/snapshot/Node;
    .restart local v0    # "priority":Lcom/firebase/client/snapshot/Node;
    :cond_0
    invoke-static {v0}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    new-instance v2, Lcom/firebase/client/FirebaseException;

    const-string v3, "Invalid Firebase priority (must be a string, double, ServerValue, or null)"

    invoke-direct {v2, v3}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_1
    return-object v0
.end method
