.class public Lcom/firebase/client/core/CompoundWrite;
.super Ljava/lang/Object;
.source "CompoundWrite.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/firebase/client/core/Path;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY:Lcom/firebase/client/core/CompoundWrite;


# instance fields
.field private final writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/CompoundWrite;->$assertionsDisabled:Z

    .line 20
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    new-instance v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    sput-object v0, Lcom/firebase/client/core/CompoundWrite;->EMPTY:Lcom/firebase/client/core/CompoundWrite;

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "writeTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 26
    return-void
.end method

.method private applySubtreeWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 7
    .param p1, "relativePath"    # Lcom/firebase/client/core/Path;
    .param p3, "node"    # Lcom/firebase/client/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            ")",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "writeTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 194
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/Node;

    invoke-interface {p3, p1, v5}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 213
    :goto_0
    return-object v5

    .line 196
    :cond_0
    const/4 v4, 0x0

    .line 197
    .local v4, "priorityWrite":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 198
    .local v2, "childTreeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 199
    .local v1, "childTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 200
    .local v0, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    sget-boolean v5, Lcom/firebase/client/core/CompoundWrite;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Priority writes must always be leaf nodes"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 204
    :cond_1
    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "priorityWrite":Lcom/firebase/client/snapshot/Node;
    check-cast v4, Lcom/firebase/client/snapshot/Node;

    .restart local v4    # "priorityWrite":Lcom/firebase/client/snapshot/Node;
    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-direct {p0, v5, v1, p3}, Lcom/firebase/client/core/CompoundWrite;->applySubtreeWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p3

    goto :goto_1

    .line 210
    .end local v0    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v1    # "childTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    .end local v2    # "childTreeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;>;"
    :cond_3
    invoke-interface {p3, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-interface {v5}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    .line 211
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-interface {p3, v5, v4}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p3

    :cond_4
    move-object v5, p3

    .line 213
    goto :goto_0
.end method

.method public static emptyWrite()Lcom/firebase/client/core/CompoundWrite;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/firebase/client/core/CompoundWrite;->EMPTY:Lcom/firebase/client/core/CompoundWrite;

    return-object v0
.end method

.method public static fromChildMerge(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "merge":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    .line 43
    .local v3, "writeTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    new-instance v2, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 45
    .local v2, "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    new-instance v5, Lcom/firebase/client/core/Path;

    const/4 v4, 0x1

    new-array v6, v4, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/ChildKey;

    aput-object v4, v6, v7

    invoke-direct {v5, v6}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v3, v5, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    .end local v2    # "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    :cond_0
    new-instance v4, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v4, v3}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v4
.end method

.method public static fromPathMerge(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "merge":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    .line 52
    .local v3, "writeTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    new-instance v2, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 54
    .local v2, "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/Path;

    invoke-virtual {v3, v4, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    .line 55
    goto :goto_0

    .line 56
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    .end local v2    # "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    :cond_0
    new-instance v4, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v4, v3}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v4
.end method

.method public static fromValue(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "merge":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    .line 34
    .local v3, "writeTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 36
    .local v2, "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    new-instance v5, Lcom/firebase/client/core/Path;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "tree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    :cond_0
    new-instance v4, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v4, v3}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v4
.end method


# virtual methods
.method public addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;
    .locals 8
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    new-instance p0, Lcom/firebase/client/core/CompoundWrite;

    .end local p0    # "this":Lcom/firebase/client/core/CompoundWrite;
    new-instance v6, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v6, p2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    .line 78
    :cond_0
    :goto_0
    return-object p0

    .line 63
    .restart local p0    # "this":Lcom/firebase/client/core/CompoundWrite;
    :cond_1
    iget-object v6, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v6, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->findRootMostPathWithValue(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 64
    .local v3, "rootMostPath":Lcom/firebase/client/core/Path;
    if-eqz v3, :cond_3

    .line 65
    invoke-static {v3, p1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 66
    .local v2, "relativePath":Lcom/firebase/client/core/Path;
    iget-object v6, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v6, v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/Node;

    .line 67
    .local v5, "value":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 68
    .local v0, "back":Lcom/firebase/client/snapshot/ChildKey;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-interface {v6}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 72
    :cond_2
    invoke-interface {v5, v2, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 73
    new-instance v6, Lcom/firebase/client/core/CompoundWrite;

    iget-object v7, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v7, v3, v5}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    move-object p0, v6

    goto :goto_0

    .line 76
    .end local v0    # "back":Lcom/firebase/client/snapshot/ChildKey;
    .end local v2    # "relativePath":Lcom/firebase/client/core/Path;
    .end local v5    # "value":Lcom/firebase/client/snapshot/Node;
    :cond_3
    new-instance v4, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v4, p2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 77
    .local v4, "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    iget-object v6, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v6, p1, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v1

    .line 78
    .local v1, "newWriteTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    new-instance p0, Lcom/firebase/client/core/CompoundWrite;

    .end local p0    # "this":Lcom/firebase/client/core/CompoundWrite;
    invoke-direct {p0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public addWrite(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;
    .locals 3
    .param p1, "key"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 84
    new-instance v0, Lcom/firebase/client/core/Path;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {p0, v0, p2}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    return-object v0
.end method

.method public addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "updates"    # Lcom/firebase/client/core/CompoundWrite;

    .prologue
    .line 88
    iget-object v0, p2, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v1, Lcom/firebase/client/core/CompoundWrite$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/CompoundWrite$1;-><init>(Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/Path;)V

    invoke-virtual {v0, p0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->fold(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/CompoundWrite;

    return-object v0
.end method

.method public apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 224
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {p0, v0, v1, p1}, Lcom/firebase/client/core/CompoundWrite;->applySubtreeWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;
    .locals 3
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    .end local p0    # "this":Lcom/firebase/client/core/CompoundWrite;
    :goto_0
    return-object p0

    .line 165
    .restart local p0    # "this":Lcom/firebase/client/core/CompoundWrite;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 166
    .local v0, "shadowingNode":Lcom/firebase/client/snapshot/Node;
    if-eqz v0, :cond_1

    .line 167
    new-instance p0, Lcom/firebase/client/core/CompoundWrite;

    .end local p0    # "this":Lcom/firebase/client/core/CompoundWrite;
    new-instance v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0

    .line 170
    .restart local p0    # "this":Lcom/firebase/client/core/CompoundWrite;
    :cond_1
    new-instance v1, Lcom/firebase/client/core/CompoundWrite;

    iget-object v2, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public childCompoundWrites()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/CompoundWrite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "children":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/CompoundWrite;>;"
    iget-object v3, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/firebase/client/core/CompoundWrite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v5, v3}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    .end local v1    # "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;>;"
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 251
    if-ne p1, p0, :cond_0

    .line 254
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 252
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_2
    check-cast p1, Lcom/firebase/client/core/CompoundWrite;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCompleteChildren()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/snapshot/NamedNode;>;"
    iget-object v5, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v5}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v5}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v5}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/NamedNode;

    .line 148
    .local v2, "entry":Lcom/firebase/client/snapshot/NamedNode;
    new-instance v5, Lcom/firebase/client/snapshot/NamedNode;

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v2    # "entry":Lcom/firebase/client/snapshot/NamedNode;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v5}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 152
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 153
    .local v0, "childTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 154
    new-instance v7, Lcom/firebase/client/snapshot/NamedNode;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/snapshot/Node;

    invoke-direct {v7, v5, v6}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v0    # "childTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;>;"
    :cond_2
    return-object v1
.end method

.method public getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 3
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->findRootMostPathWithValue(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 133
    .local v0, "rootMost":Lcom/firebase/client/core/Path;
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/Node;

    invoke-static {v0, p1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Z)Ljava/util/Map;
    .locals 3
    .param p1, "exportFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, "writes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v2, Lcom/firebase/client/core/CompoundWrite$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/firebase/client/core/CompoundWrite$2;-><init>(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;Z)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 241
    return-object v0
.end method

.method public hasCompleteWrite(Lcom/firebase/client/core/Path;)Z
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;
    .locals 3
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/firebase/client/core/CompoundWrite;->EMPTY:Lcom/firebase/client/core/CompoundWrite;

    .line 107
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 107
    .local v0, "newWriteTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/snapshot/Node;>;"
    new-instance v1, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v1, v0}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public rootWrite()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompoundWrite{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
