.class Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 46
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 39
    iput p2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 40
    iput p3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v7

    .line 104
    :cond_1
    instance-of v9, p1, Ljava/util/List;

    if-nez v9, :cond_2

    move v7, v8

    .line 105
    goto :goto_0

    :cond_2
    move-object v6, p1

    .line 108
    check-cast v6, Ljava/util/List;

    .line 109
    .local v6, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_3

    move v7, v8

    .line 110
    goto :goto_0

    .line 113
    :cond_3
    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 114
    .local v3, "index":I
    instance-of v9, p1, Lcom/google/common/collect/RegularImmutableList;

    if-eqz v9, :cond_5

    move-object v5, p1

    .line 115
    check-cast v5, Lcom/google/common/collect/RegularImmutableList;

    .line 116
    .local v5, "other":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<*>;"
    iget v1, v5, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v1, "i":I
    :goto_1
    iget v9, v5, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v10, v5, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v9, v10

    if-ge v1, v9, :cond_0

    .line 117
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aget-object v9, v9, v3

    iget-object v10, v5, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    move v7, v8

    .line 118
    goto :goto_0

    .line 116
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    .line 122
    .end local v1    # "i":I
    .end local v5    # "other":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<*>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "element":Ljava/lang/Object;
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget-object v9, v9, v3

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    move v7, v8

    .line 124
    goto :goto_0

    :cond_6
    move v3, v4

    .line 126
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 82
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return v0
.end method

.method subListUnchecked(II)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 63
    .local v0, "newArray":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v0, v1, :cond_1

    .line 69
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object p1

    .line 70
    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-le v0, v1, :cond_0

    .line 71
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/lit8 v0, v2, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 135
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
