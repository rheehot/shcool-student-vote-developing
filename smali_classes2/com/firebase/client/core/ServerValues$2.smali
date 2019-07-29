.class final Lcom/firebase/client/core/ServerValues$2;
.super Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.source "ServerValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$holder:Lcom/firebase/client/core/SnapshotHolder;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/firebase/client/core/SnapshotHolder;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/firebase/client/core/ServerValues$2;->val$serverValues:Ljava/util/Map;

    iput-object p2, p0, Lcom/firebase/client/core/ServerValues$2;->val$holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
    .locals 4
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "child"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/firebase/client/core/ServerValues$2;->val$serverValues:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 75
    .local v0, "newChildNode":Lcom/firebase/client/snapshot/Node;
    if-eq v0, p2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/firebase/client/core/ServerValues$2;->val$holder:Lcom/firebase/client/core/SnapshotHolder;

    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 78
    :cond_0
    return-void
.end method
