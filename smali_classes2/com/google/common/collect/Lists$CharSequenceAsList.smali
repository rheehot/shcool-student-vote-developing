.class final Lcom/google/common/collect/Lists$CharSequenceAsList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharSequenceAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 757
    iput-object p1, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    .line 758
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$CharSequenceAsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 811
    instance-of v6, p1, Ljava/util/List;

    if-nez v6, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p1

    .line 814
    check-cast v3, Ljava/util/List;

    .line 815
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v6, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 816
    .local v4, "n":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 819
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 820
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 821
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 822
    .local v0, "elem":Ljava/lang/Object;
    instance-of v6, v0, Ljava/lang/Character;

    if-eqz v6, :cond_0

    check-cast v0, Ljava/lang/Character;

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v6

    iget-object v7, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_0

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 827
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Character;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$CharSequenceAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 762
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$CharSequenceAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 803
    const/4 v0, 0x1

    .line 804
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 805
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 770
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 771
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 772
    .local v0, "c":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 773
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    .line 778
    .end local v0    # "c":C
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 772
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 782
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 783
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 784
    .local v0, "c":C
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 785
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    .line 790
    .end local v0    # "c":C
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 784
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 790
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$CharSequenceAsList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 799
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->charactersOf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
