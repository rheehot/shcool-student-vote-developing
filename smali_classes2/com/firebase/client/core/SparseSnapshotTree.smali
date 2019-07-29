.class Lcom/firebase/client/core/SparseSnapshotTree;
.super Ljava/lang/Object;
.source "SparseSnapshotTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotChildVisitor;,
        Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;
    }
.end annotation


# instance fields
.field private children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/SparseSnapshotTree;",
            ">;"
        }
    .end annotation
.end field

.field private value:Lcom/firebase/client/snapshot/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    .line 23
    iput-object v0, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public forEachChild(Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotChildVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotChildVisitor;

    .prologue
    .line 117
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/SparseSnapshotTree;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-interface {p1, v2, v3}, Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotChildVisitor;->visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/SparseSnapshotTree;)V

    goto :goto_0

    .line 122
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/SparseSnapshotTree;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public forEachTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V
    .locals 1
    .param p1, "prefixPath"    # Lcom/firebase/client/core/Path;
    .param p2, "visitor"    # Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    invoke-interface {p2, p1, v0}, Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;->visitTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/firebase/client/core/SparseSnapshotTree$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/client/core/SparseSnapshotTree$2;-><init>(Lcom/firebase/client/core/SparseSnapshotTree;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/SparseSnapshotTree;->forEachChild(Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotChildVisitor;)V

    goto :goto_0
.end method

.method public forget(Lcom/firebase/client/core/Path;)Z
    .locals 9
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 57
    iput-object v8, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    .line 58
    iput-object v8, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 98
    :cond_0
    :goto_0
    return v5

    .line 61
    :cond_1
    iget-object v7, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    if-eqz v7, :cond_3

    .line 62
    iget-object v5, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v5}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    check-cast v3, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 67
    .local v3, "childrenNode":Lcom/firebase/client/snapshot/ChildrenNode;
    iput-object v8, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    .line 69
    new-instance v5, Lcom/firebase/client/core/SparseSnapshotTree$1;

    invoke-direct {v5, p0, p1}, Lcom/firebase/client/core/SparseSnapshotTree$1;-><init>(Lcom/firebase/client/core/SparseSnapshotTree;Lcom/firebase/client/core/Path;)V

    invoke-virtual {v3, v5}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/SparseSnapshotTree;->forget(Lcom/firebase/client/core/Path;)Z

    move-result v5

    goto :goto_0

    .line 79
    .end local v3    # "childrenNode":Lcom/firebase/client/snapshot/ChildrenNode;
    :cond_3
    iget-object v7, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    if-eqz v7, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 81
    .local v1, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 83
    .local v2, "childPath":Lcom/firebase/client/core/Path;
    iget-object v7, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 84
    iget-object v7, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/SparseSnapshotTree;

    .line 85
    .local v0, "child":Lcom/firebase/client/core/SparseSnapshotTree;
    invoke-virtual {v0, v2}, Lcom/firebase/client/core/SparseSnapshotTree;->forget(Lcom/firebase/client/core/Path;)Z

    move-result v4

    .line 86
    .local v4, "safeToRemove":Z
    if-eqz v4, :cond_4

    .line 87
    iget-object v7, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v0    # "child":Lcom/firebase/client/core/SparseSnapshotTree;
    .end local v4    # "safeToRemove":Z
    :cond_4
    iget-object v7, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    iput-object v8, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    goto :goto_0

    :cond_5
    move v5, v6

    .line 95
    goto :goto_0
.end method

.method public remember(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 4
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "data"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    iput-object p2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    .line 37
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 53
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    iput-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->value:Lcom/firebase/client/snapshot/Node;

    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 46
    .local v1, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    new-instance v3, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-direct {v3}, Lcom/firebase/client/core/SparseSnapshotTree;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_3
    iget-object v2, p0, Lcom/firebase/client/core/SparseSnapshotTree;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/SparseSnapshotTree;

    .line 51
    .local v0, "child":Lcom/firebase/client/core/SparseSnapshotTree;
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/firebase/client/core/SparseSnapshotTree;->remember(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0
.end method
