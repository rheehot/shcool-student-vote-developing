.class public Lcom/firebase/client/utilities/tuple/NodeAndPath;
.super Ljava/lang/Object;
.source "NodeAndPath.java"


# instance fields
.field private node:Lcom/firebase/client/snapshot/Node;

.field private path:Lcom/firebase/client/core/Path;


# direct methods
.method public constructor <init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V
    .locals 0
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/utilities/tuple/NodeAndPath;->node:Lcom/firebase/client/snapshot/Node;

    .line 18
    iput-object p2, p0, Lcom/firebase/client/utilities/tuple/NodeAndPath;->path:Lcom/firebase/client/core/Path;

    .line 19
    return-void
.end method


# virtual methods
.method public getNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NodeAndPath;->node:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NodeAndPath;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public setNode(Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/firebase/client/utilities/tuple/NodeAndPath;->node:Lcom/firebase/client/snapshot/Node;

    .line 27
    return-void
.end method

.method public setPath(Lcom/firebase/client/core/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/firebase/client/utilities/tuple/NodeAndPath;->path:Lcom/firebase/client/core/Path;

    .line 35
    return-void
.end method
