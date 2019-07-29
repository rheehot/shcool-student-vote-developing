.class public Lcom/firebase/client/core/utilities/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/utilities/Tree$TreeFilter;,
        Lcom/firebase/client/core/utilities/Tree$TreeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private name:Lcom/firebase/client/snapshot/ChildKey;

.field private node:Lcom/firebase/client/core/utilities/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/TreeNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/firebase/client/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Tree",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/utilities/Tree;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/firebase/client/core/utilities/TreeNode;

    invoke-direct {v0}, Lcom/firebase/client/core/utilities/TreeNode;-><init>()V

    invoke-direct {p0, v1, v1, v0}, Lcom/firebase/client/core/utilities/Tree;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V
    .locals 0
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/utilities/Tree",
            "<TT;>;",
            "Lcom/firebase/client/core/utilities/TreeNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p2, "parent":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p3, "node":Lcom/firebase/client/core/utilities/TreeNode;, "Lcom/firebase/client/core/utilities/TreeNode<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    .line 29
    iput-object p2, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    .line 30
    iput-object p3, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    .line 31
    return-void
.end method

.method private updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 4
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/utilities/Tree",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p2, "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->isEmpty()Z

    move-result v0

    .line 158
    .local v0, "childEmpty":Z
    iget-object v2, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 159
    .local v1, "childExists":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 160
    iget-object v2, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-direct {p0}, Lcom/firebase/client/core/utilities/Tree;->updateParents()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    iget-object v3, p2, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-direct {p0}, Lcom/firebase/client/core/utilities/Tree;->updateParents()V

    goto :goto_0
.end method

.method private updateParents()V
    .locals 2

    .prologue
    .line 151
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    invoke-direct {v0, v1, p0}, Lcom/firebase/client/core/utilities/Tree;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/Tree;)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeFilter",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p1, "filter":Lcom/firebase/client/core/utilities/Tree$TreeFilter;, "Lcom/firebase/client/core/utilities/Tree$TreeFilter<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;Z)Z

    move-result v0

    return v0
.end method

.method public forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;Z)Z
    .locals 2
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeFilter",
            "<TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p1, "filter":Lcom/firebase/client/core/utilities/Tree$TreeFilter;, "Lcom/firebase/client/core/utilities/Tree$TreeFilter<TT;>;"
    if-eqz p2, :cond_0

    move-object v0, p0

    .line 129
    .local v0, "tree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 130
    invoke-interface {p1, v0}, Lcom/firebase/client/core/utilities/Tree$TreeFilter;->filterTreeNode(Lcom/firebase/client/core/utilities/Tree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const/4 v1, 0x1

    .line 135
    :goto_1
    return v1

    .line 128
    .end local v0    # "tree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    goto :goto_0

    .line 133
    .restart local v0    # "tree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    :cond_1
    iget-object v0, v0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    goto :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/firebase/client/core/utilities/Tree$TreeVisitor;, "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<TT;>;"
    iget-object v4, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v4, v4, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "entries":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 143
    aget-object v1, v0, v2

    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/TreeNode<TT;>;>;"
    new-instance v3, Lcom/firebase/client/core/utilities/Tree;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/ChildKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/core/utilities/TreeNode;

    invoke-direct {v3, v4, p0, v5}, Lcom/firebase/client/core/utilities/Tree;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V

    .line 146
    .local v3, "subTree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    invoke-interface {p1, v3}, Lcom/firebase/client/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/firebase/client/core/utilities/Tree;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/TreeNode<TT;>;>;"
    .end local v3    # "subTree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    :cond_0
    return-void
.end method

.method public forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/firebase/client/core/utilities/Tree$TreeVisitor;, "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<TT;>;"
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V

    .line 100
    return-void
.end method

.method public forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;Z)V
    .locals 1
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/firebase/client/core/utilities/Tree$TreeVisitor;, "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V

    .line 104
    return-void
.end method

.method public forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V
    .locals 1
    .param p2, "includeSelf"    # Z
    .param p3, "childrenFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor",
            "<TT;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/firebase/client/core/utilities/Tree$TreeVisitor;, "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<TT;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 108
    invoke-interface {p1, p0}, Lcom/firebase/client/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/firebase/client/core/utilities/Tree;)V

    .line 111
    :cond_0
    new-instance v0, Lcom/firebase/client/core/utilities/Tree$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/firebase/client/core/utilities/Tree$1;-><init>(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/Tree$TreeVisitor;Z)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    .line 118
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 119
    invoke-interface {p1, p0}, Lcom/firebase/client/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/firebase/client/core/utilities/Tree;)V

    .line 121
    :cond_1
    return-void
.end method

.method public getName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getParent()Lcom/firebase/client/core/utilities/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/core/utilities/Tree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 4

    .prologue
    .line 82
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    if-eqz v0, :cond_1

    .line 83
    sget-boolean v0, Lcom/firebase/client/core/utilities/Tree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/firebase/client/core/Path;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastNodeOnPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/TreeNode;
    .locals 4
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/utilities/TreeNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    .line 39
    .local v1, "current":Lcom/firebase/client/core/utilities/TreeNode;, "Lcom/firebase/client/core/utilities/TreeNode<TT;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 40
    .local v2, "next":Lcom/firebase/client/snapshot/ChildKey;
    :goto_0
    if-eqz v2, :cond_0

    .line 41
    iget-object v3, v1, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/utilities/TreeNode;

    move-object v0, v3

    .line 42
    .local v0, "childNode":Lcom/firebase/client/core/utilities/TreeNode;, "Lcom/firebase/client/core/utilities/TreeNode<TT;>;"
    :goto_1
    if-nez v0, :cond_2

    .line 49
    .end local v0    # "childNode":Lcom/firebase/client/core/utilities/TreeNode;, "Lcom/firebase/client/core/utilities/TreeNode<TT;>;"
    :cond_0
    return-object v1

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 45
    .restart local v0    # "childNode":Lcom/firebase/client/core/utilities/TreeNode;, "Lcom/firebase/client/core/utilities/TreeNode<TT;>;"
    :cond_2
    move-object v1, v0

    .line 46
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 48
    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iput-object p1, v0, Lcom/firebase/client/core/utilities/TreeNode;->value:Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Lcom/firebase/client/core/utilities/Tree;->updateParents()V

    .line 71
    return-void
.end method

.method public subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;
    .locals 5
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/utilities/Tree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    move-object v0, p0

    .line 54
    .local v0, "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    .local v3, "next":Lcom/firebase/client/snapshot/ChildKey;
    move-object v1, v0

    .line 55
    .end local v0    # "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .local v1, "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 56
    iget-object v4, v1, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v4, v4, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v4, v4, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/utilities/TreeNode;

    move-object v2, v4

    .line 57
    .local v2, "childNode":Lcom/firebase/client/core/utilities/TreeNode;, "Lcom/firebase/client/core/utilities/TreeNode<TT;>;"
    :goto_1
    new-instance v0, Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {v0, v3, v1, v2}, Lcom/firebase/client/core/utilities/Tree;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V

    .line 58
    .end local v1    # "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .restart local v0    # "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    move-object v1, v0

    .line 60
    .end local v0    # "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    .restart local v1    # "child":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    goto :goto_0

    .line 56
    .end local v2    # "childNode":Lcom/firebase/client/core/utilities/TreeNode;, "Lcom/firebase/client/core/utilities/TreeNode<TT;>;"
    :cond_0
    new-instance v2, Lcom/firebase/client/core/utilities/TreeNode;

    invoke-direct {v2}, Lcom/firebase/client/core/utilities/TreeNode;-><init>()V

    goto :goto_1

    .line 61
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/utilities/Tree;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 174
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    if-nez v1, :cond_0

    const-string v0, "<anon>"

    .line 175
    .local v0, "nodeName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/utilities/TreeNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
