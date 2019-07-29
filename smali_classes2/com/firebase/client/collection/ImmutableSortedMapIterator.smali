.class public Lcom/firebase/client/collection/ImmutableSortedMapIterator;
.super Ljava/lang/Object;
.source "ImmutableSortedMapIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final isReverse:Z

.field private final nodeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/firebase/client/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .locals 4
    .param p4, "isReverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;TK;",
            "Ljava/util/Comparator",
            "<TK;>;Z)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/firebase/client/collection/ImmutableSortedMapIterator;, "Lcom/firebase/client/collection/ImmutableSortedMapIterator<TK;TV;>;"
    .local p1, "root":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .local p2, "startKey":Ljava/lang/Object;, "TK;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/Stack;

    .line 18
    iput-boolean p4, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->isReverse:Z

    .line 20
    move-object v1, p1

    .line 21
    .local v1, "node":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :goto_0
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 23
    if-eqz p2, :cond_1

    .line 24
    if-eqz p4, :cond_0

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, p2, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 28
    .local v0, "cmp":I
    :goto_1
    if-gez v0, :cond_3

    .line 30
    if-eqz p4, :cond_2

    .line 31
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    goto :goto_0

    .line 24
    .end local v0    # "cmp":I
    :cond_0
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 26
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "cmp":I
    goto :goto_1

    .line 33
    :cond_2
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_3
    if-nez v0, :cond_5

    .line 37
    iget-object v2, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/Stack;

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    .end local v1    # "node":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "cmp":I
    :cond_4
    return-void

    .line 40
    .restart local v0    # "cmp":I
    .restart local v1    # "node":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_5
    iget-object v3, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/Stack;

    move-object v2, v1

    check-cast v2, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    if-eqz p4, :cond_6

    .line 42
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_6
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/firebase/client/collection/ImmutableSortedMapIterator;, "Lcom/firebase/client/collection/ImmutableSortedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lcom/firebase/client/collection/ImmutableSortedMapIterator;, "Lcom/firebase/client/collection/ImmutableSortedMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/firebase/client/collection/ImmutableSortedMapIterator;, "Lcom/firebase/client/collection/ImmutableSortedMapIterator<TK;TV;>;"
    :try_start_0
    iget-object v5, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/collection/LLRBValueNode;

    .line 59
    .local v4, "node":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v4}, Lcom/firebase/client/collection/LLRBValueNode;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lcom/firebase/client/collection/LLRBValueNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-boolean v5, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->isReverse:Z

    if-eqz v5, :cond_0

    .line 61
    invoke-virtual {v4}, Lcom/firebase/client/collection/LLRBValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v3

    .line 62
    .local v3, "next":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :goto_0
    invoke-interface {v3}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    iget-object v6, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/Stack;

    move-object v0, v3

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    move-object v5, v0

    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-interface {v3}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v3

    goto :goto_0

    .line 67
    .end local v3    # "next":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_0
    invoke-virtual {v4}, Lcom/firebase/client/collection/LLRBValueNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v3

    .line 68
    .restart local v3    # "next":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :goto_1
    invoke-interface {v3}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    iget-object v6, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/Stack;

    move-object v0, v3

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    move-object v5, v0

    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v3}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 74
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "next":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .end local v4    # "node":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/util/EmptyStackException;
    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5

    .line 73
    .end local v1    # "e":Ljava/util/EmptyStackException;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v3    # "next":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .restart local v4    # "node":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :cond_1
    return-object v2
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Lcom/firebase/client/collection/ImmutableSortedMapIterator;, "Lcom/firebase/client/collection/ImmutableSortedMapIterator<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
