.class public Lcom/firebase/client/core/SnapshotHolder;
.super Ljava/lang/Object;
.source "SnapshotHolder.java"


# instance fields
.field private rootNode:Lcom/firebase/client/snapshot/Node;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/SnapshotHolder;->rootNode:Lcom/firebase/client/snapshot/Node;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/firebase/client/core/SnapshotHolder;->rootNode:Lcom/firebase/client/snapshot/Node;

    .line 21
    return-void
.end method


# virtual methods
.method public getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/firebase/client/core/SnapshotHolder;->rootNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getRootNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/firebase/client/core/SnapshotHolder;->rootNode:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/firebase/client/core/SnapshotHolder;->rootNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/SnapshotHolder;->rootNode:Lcom/firebase/client/snapshot/Node;

    .line 33
    return-void
.end method
