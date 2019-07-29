.class Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;
.super Lcom/google/common/collect/Maps$NavigableKeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->createKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$NavigableKeySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V
    .locals 0

    .prologue
    .line 2828
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lcom/google/common/collect/Maps$FilteredEntryNavigableMap.1;"
    .local p2, "x0":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2831
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lcom/google/common/collect/Maps$FilteredEntryNavigableMap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 2832
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2833
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2834
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2835
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2836
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2837
    const/4 v0, 0x1

    goto :goto_0

    .line 2840
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2845
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lcom/google/common/collect/Maps$FilteredEntryNavigableMap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 2846
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2847
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2848
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2849
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2850
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2851
    const/4 v0, 0x1

    goto :goto_0

    .line 2854
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method
