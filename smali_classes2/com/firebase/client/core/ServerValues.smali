.class public Lcom/firebase/client/core/ServerValues;
.super Ljava/lang/Object;
.source "ServerValues.java"


# static fields
.field public static final NAME_SUBKEY_SERVERVALUE:Ljava/lang/String; = ".sv"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;
    .locals 4
    .param p0, "clock"    # Lcom/firebase/client/utilities/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/utilities/Clock;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "timestamp"

    invoke-interface {p0}, Lcom/firebase/client/utilities/Clock;->millis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object v0
.end method

.method public static resolveDeferredValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 27
    check-cast v0, Ljava/util/Map;

    .line 28
    .local v0, "mapValue":Ljava/util/Map;
    const-string v2, ".sv"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, ".sv"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, "serverValueKey":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 35
    .end local v0    # "mapValue":Ljava/util/Map;
    .end local v1    # "serverValueKey":Ljava/lang/String;
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public static resolveDeferredValueMerge(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 5
    .param p0, "merge"    # Lcom/firebase/client/core/CompoundWrite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/CompoundWrite;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    .line 90
    .local v2, "write":Lcom/firebase/client/core/CompoundWrite;
    invoke-virtual {p0}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/Path;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/Node;

    invoke-static {v4, p1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    .line 92
    goto :goto_0

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :cond_0
    return-object v2
.end method

.method public static resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;
    .locals 8
    .param p0, "data"    # Lcom/firebase/client/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 51
    .local v4, "priorityVal":Ljava/lang/Object;
    instance-of v7, v4, Ljava/util/Map;

    if-eqz v7, :cond_0

    move-object v3, v4

    .line 52
    check-cast v3, Ljava/util/Map;

    .line 53
    .local v3, "priorityMapValue":Ljava/util/Map;
    const-string v7, ".sv"

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 54
    const-string v7, ".sv"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 55
    .local v5, "serverValueKey":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .end local v3    # "priorityMapValue":Ljava/util/Map;
    .end local v5    # "serverValueKey":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 60
    .local v2, "priority":Lcom/firebase/client/snapshot/Node;
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    .line 62
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 63
    :cond_1
    invoke-static {v6, v2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    .line 83
    .end local v6    # "value":Ljava/lang/Object;
    .end local p0    # "data":Lcom/firebase/client/snapshot/Node;
    :cond_2
    :goto_0
    return-object p0

    .line 66
    .restart local p0    # "data":Lcom/firebase/client/snapshot/Node;
    :cond_3
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v0, p0

    .line 69
    check-cast v0, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 70
    .local v0, "childNode":Lcom/firebase/client/snapshot/ChildrenNode;
    new-instance v1, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v1, v0}, Lcom/firebase/client/core/SnapshotHolder;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 71
    .local v1, "holder":Lcom/firebase/client/core/SnapshotHolder;
    new-instance v7, Lcom/firebase/client/core/ServerValues$2;

    invoke-direct {v7, p1, v1}, Lcom/firebase/client/core/ServerValues$2;-><init>(Ljava/util/Map;Lcom/firebase/client/core/SnapshotHolder;)V

    invoke-virtual {v0, v7}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    .line 80
    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 81
    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public static resolveDeferredValueTree(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)Lcom/firebase/client/core/SparseSnapshotTree;
    .locals 3
    .param p0, "tree"    # Lcom/firebase/client/core/SparseSnapshotTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/SparseSnapshotTree;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/SparseSnapshotTree;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-direct {v0}, Lcom/firebase/client/core/SparseSnapshotTree;-><init>()V

    .line 40
    .local v0, "resolvedTree":Lcom/firebase/client/core/SparseSnapshotTree;
    new-instance v1, Lcom/firebase/client/core/Path;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/firebase/client/core/ServerValues$1;

    invoke-direct {v2, v0, p1}, Lcom/firebase/client/core/ServerValues$1;-><init>(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)V

    invoke-virtual {p0, v1, v2}, Lcom/firebase/client/core/SparseSnapshotTree;->forEachTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    .line 46
    return-object v0
.end method
