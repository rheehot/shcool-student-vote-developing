.class public Lcom/firebase/client/core/view/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field private final childKey:Lcom/firebase/client/snapshot/ChildKey;

.field private final eventType:Lcom/firebase/client/core/view/Event$EventType;

.field private final indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

.field private final oldIndexedNode:Lcom/firebase/client/snapshot/IndexedNode;

.field private final prevName:Lcom/firebase/client/snapshot/ChildKey;


# direct methods
.method private constructor <init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)V
    .locals 0
    .param p1, "eventType"    # Lcom/firebase/client/core/view/Event$EventType;
    .param p2, "indexedNode"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p3, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p4, "prevName"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p5, "oldIndexedNode"    # Lcom/firebase/client/snapshot/IndexedNode;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    .line 17
    iput-object p2, p0, Lcom/firebase/client/core/view/Change;->indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    .line 18
    iput-object p3, p0, Lcom/firebase/client/core/view/Change;->childKey:Lcom/firebase/client/snapshot/ChildKey;

    .line 19
    iput-object p4, p0, Lcom/firebase/client/core/view/Change;->prevName:Lcom/firebase/client/snapshot/ChildKey;

    .line 20
    iput-object p5, p0, Lcom/firebase/client/core/view/Change;->oldIndexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    .line 21
    return-void
.end method

.method public static childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/firebase/client/snapshot/IndexedNode;

    .prologue
    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;
    .locals 1
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "newSnapshot"    # Lcom/firebase/client/snapshot/IndexedNode;
    .param p2, "oldSnapshot"    # Lcom/firebase/client/snapshot/IndexedNode;

    .prologue
    .line 48
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;
    .locals 2
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "newSnapshot"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "oldSnapshot"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p2}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static childMovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/firebase/client/snapshot/IndexedNode;

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->CHILD_MOVED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childMovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;
    .locals 1
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/firebase/client/core/view/Change;->childMovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;
    .locals 6
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/firebase/client/snapshot/IndexedNode;

    .prologue
    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public static childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;
    .locals 1
    .param p0, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "snapshot"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    return-object v0
.end method

.method public static valueChange(Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;
    .locals 6
    .param p0, "snapshot"    # Lcom/firebase/client/snapshot/IndexedNode;

    .prologue
    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v0
.end method


# virtual methods
.method public changeWithPrevName(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/view/Change;
    .locals 6
    .param p1, "prevName"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 60
    new-instance v0, Lcom/firebase/client/core/view/Change;

    iget-object v1, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    iget-object v2, p0, Lcom/firebase/client/core/view/Change;->indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    iget-object v3, p0, Lcom/firebase/client/core/view/Change;->childKey:Lcom/firebase/client/snapshot/ChildKey;

    iget-object v5, p0, Lcom/firebase/client/core/view/Change;->oldIndexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v0
.end method

.method public getChildKey()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->childKey:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getEventType()Lcom/firebase/client/core/view/Event$EventType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    return-object v0
.end method

.method public getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->indexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    return-object v0
.end method

.method public getOldIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->oldIndexedNode:Lcom/firebase/client/snapshot/IndexedNode;

    return-object v0
.end method

.method public getPrevName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->prevName:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/Change;->childKey:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
