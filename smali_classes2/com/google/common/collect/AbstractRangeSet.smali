.class abstract Lcom/google/common/collect/AbstractRangeSet;
.super Ljava/lang/Object;
.source "AbstractRangeSet.java"

# interfaces
.implements Lcom/google/common/collect/RangeSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeSet",
        "<TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 78
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractRangeSet;->add(Lcom/google/common/collect/Range;)V

    goto :goto_0

    .line 80
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 63
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "otherRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 92
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x1

    .line 96
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 68
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractRangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const/4 v2, 0x0

    .line 72
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    instance-of v1, p1, Lcom/google/common/collect/RangeSet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/google/common/collect/RangeSet;

    .line 103
    .local v0, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    .end local v0    # "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 38
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 85
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractRangeSet;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_0

    .line 87
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 118
    .local v2, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .end local v2    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
