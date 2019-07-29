.class public Lcom/firebase/client/core/persistence/PruneForest;
.super Ljava/lang/Object;
.source "PruneForest.java"


# static fields
.field private static final KEEP_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/firebase/client/core/persistence/PruneForest$1;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/PruneForest$1;-><init>()V

    sput-object v0, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    .line 33
    new-instance v0, Lcom/firebase/client/core/persistence/PruneForest$2;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/PruneForest$2;-><init>()V

    sput-object v0, Lcom/firebase/client/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    .line 40
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/firebase/client/core/persistence/PruneForest;->PRUNE_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 41
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "pruneForest":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 49
    return-void
.end method

.method private doAll(Lcom/firebase/client/core/Path;Ljava/util/Set;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 8
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/firebase/client/core/persistence/PruneForest;"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "children":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    .local p3, "keepOrPruneTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v4, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    .line 156
    .local v3, "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 157
    .local v0, "childrenMap":Lcom/firebase/client/collection/ImmutableSortedMap;, "Lcom/firebase/client/collection/ImmutableSortedMap<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    .line 158
    .local v2, "key":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {v0, v2, p3}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 160
    .end local v2    # "key":Lcom/firebase/client/snapshot/ChildKey;
    :cond_0
    new-instance v4, Lcom/firebase/client/core/persistence/PruneForest;

    iget-object v5, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v6, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    invoke-virtual {v5, p1, v6}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/firebase/client/core/persistence/PruneForest;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v4
.end method


# virtual methods
.method public affectsPath(Lcom/firebase/client/core/Path;)Z
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValue(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    .end local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/persistence/PruneForest;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/persistence/PruneForest;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object p0

    goto :goto_0
.end method

.method public child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 3
    .param p1, "key"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 78
    .local v0, "childPruneTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .end local v0    # "childPruneTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 85
    .restart local v0    # "childPruneTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    new-instance v1, Lcom/firebase/client/core/persistence/PruneForest;

    invoke-direct {v1, v0}, Lcom/firebase/client/core/persistence/PruneForest;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v1

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    if-ne p0, p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    instance-of v3, p1, Lcom/firebase/client/core/persistence/PruneForest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 168
    check-cast v0, Lcom/firebase/client/core/persistence/PruneForest;

    .line 170
    .local v0, "that":Lcom/firebase/client/core/persistence/PruneForest;
    iget-object v3, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-object v4, v0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public foldKeptNodes(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
            "<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "startValue":Ljava/lang/Object;, "TT;"
    .local p2, "treeVisitor":Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;, "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor<Ljava/lang/Void;TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v1, Lcom/firebase/client/core/persistence/PruneForest$3;

    invoke-direct {v1, p0, p2}, Lcom/firebase/client/core/persistence/PruneForest$3;-><init>(Lcom/firebase/client/core/persistence/PruneForest;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->fold(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->hashCode()I

    move-result v0

    return v0
.end method

.method public keep(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 3
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v2, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v1, p1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    .end local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .line 127
    .restart local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v2, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 128
    .local v0, "newPruneTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    new-instance p0, Lcom/firebase/client/core/persistence/PruneForest;

    .end local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/PruneForest;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public keepAll(Lcom/firebase/client/core/Path;Ljava/util/Set;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)",
            "Lcom/firebase/client/core/persistence/PruneForest;"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "children":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v1, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    .end local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :cond_0
    sget-object v0, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/core/persistence/PruneForest;->doAll(Lcom/firebase/client/core/Path;Ljava/util/Set;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object p0

    goto :goto_0
.end method

.method public prune(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 3
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v2, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v1, p1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t prune path that was kept previously!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v2, Lcom/firebase/client/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v1, p1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    .end local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .line 117
    .restart local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v2, Lcom/firebase/client/core/persistence/PruneForest;->PRUNE_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 118
    .local v0, "newPruneTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    new-instance p0, Lcom/firebase/client/core/persistence/PruneForest;

    .end local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/PruneForest;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public pruneAll(Lcom/firebase/client/core/Path;Ljava/util/Set;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)",
            "Lcom/firebase/client/core/persistence/PruneForest;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "children":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v1, Lcom/firebase/client/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t prune path that was kept previously!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v1, Lcom/firebase/client/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    .end local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/firebase/client/core/persistence/PruneForest;
    :cond_1
    sget-object v0, Lcom/firebase/client/core/persistence/PruneForest;->PRUNE_TREE:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/core/persistence/PruneForest;->doAll(Lcom/firebase/client/core/Path;Ljava/util/Set;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object p0

    goto :goto_0
.end method

.method public prunesAnything()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v1, Lcom/firebase/client/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->containsMatchingValue(Lcom/firebase/client/core/utilities/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shouldKeep(Lcom/firebase/client/core/Path;)Z
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->leafMostValue(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 69
    .local v0, "shouldPrune":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldPruneUnkeptDescendants(Lcom/firebase/client/core/Path;)Z
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->leafMostValue(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 64
    .local v0, "shouldPrune":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{PruneForest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/persistence/PruneForest;->pruneForest:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->toString()Ljava/lang/String;

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
