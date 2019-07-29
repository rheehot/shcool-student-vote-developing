.class public Lcom/firebase/client/collection/ArraySortedMap;
.super Lcom/firebase/client/collection/ImmutableSortedMap;
.source "ArraySortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/client/collection/ImmutableSortedMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>()V

    .line 41
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    .line 42
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;[TK;[TV;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    .local p2, "keys":[Ljava/lang/Object;, "[TK;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    .line 49
    iput-object p3, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/collection/ArraySortedMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/collection/ArraySortedMap;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/collection/ArraySortedMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/collection/ArraySortedMap;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method private static addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 220
    array-length v2, p0

    add-int/lit8 v1, v2, 0x1

    .line 221
    .local v1, "newSize":I
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 222
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    aput-object p2, v0, p1

    .line 224
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    return-object v0
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/firebase/client/collection/ArraySortedMap",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<TA;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<TB;TC;>;"
    .local p2, "translator":Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;, "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<TA;TB;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 19
    .local v4, "size":I
    new-array v2, v4, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 20
    .local v2, "keyArray":[Ljava/lang/Object;, "[TA;"
    new-array v6, v4, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 21
    .local v6, "valueArray":[Ljava/lang/Object;, "[TC;"
    const/4 v3, 0x0

    .line 22
    .local v3, "pos":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 23
    .local v1, "k":Ljava/lang/Object;, "TA;"
    aput-object v1, v2, v3

    .line 24
    invoke-interface {p2, v1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 25
    .local v5, "value":Ljava/lang/Object;, "TC;"
    aput-object v5, v6, v3

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    .end local v1    # "k":Ljava/lang/Object;, "TA;"
    .end local v5    # "value":Ljava/lang/Object;, "TC;"
    :cond_0
    new-instance v7, Lcom/firebase/client/collection/ArraySortedMap;

    invoke-direct {v7, p3, v2, v6}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v7
.end method

.method private findKey(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 255
    .local v1, "i":I
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 256
    .local v4, "otherKey":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_0

    .line 261
    .end local v1    # "i":I
    .end local v4    # "otherKey":Ljava/lang/Object;, "TK;"
    :goto_1
    return v1

    .line 259
    .restart local v1    # "i":I
    .restart local v4    # "otherKey":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v4    # "otherKey":Ljava/lang/Object;, "TK;"
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findKeyOrInsertPosition(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 243
    .local v0, "newPos":I
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/ArraySortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->identityTranslator()Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/firebase/client/collection/ArraySortedMap;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;

    move-result-object v0

    return-object v0
.end method

.method private iterator(IZ)Ljava/util/Iterator;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    new-instance v0, Lcom/firebase/client/collection/ArraySortedMap$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/client/collection/ArraySortedMap$1;-><init>(Lcom/firebase/client/collection/ArraySortedMap;IZ)V

    return-object v0
.end method

.method private static removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 211
    array-length v2, p0

    add-int/lit8 v1, v2, -0x1

    .line 212
    .local v1, "newSize":I
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 213
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    invoke-static {p0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    return-object v0
.end method

.method private static replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 230
    array-length v1, p0

    .line 231
    .local v1, "size":I
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 232
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    aput-object p2, v0, p1

    .line 234
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getMaxKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t find predecessor of nonexistent key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t find successor of nonexistent key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "visitor":Lcom/firebase/client/collection/LLRBNode$NodeVisitor;, "Lcom/firebase/client/collection/LLRBNode$NodeVisitor<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v6

    .line 79
    .local v6, "pos":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 80
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v8, v8, v6

    if-ne v8, p1, :cond_0

    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v8, v8, v6

    if-ne v8, p2, :cond_0

    .line 101
    .end local p0    # "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    :goto_0
    return-object p0

    .line 84
    .restart local p0    # "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    :cond_0
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v8, v6, p1}, Lcom/firebase/client/collection/ArraySortedMap;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v8, v6, p2}, Lcom/firebase/client/collection/ArraySortedMap;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 86
    .local v5, "newValues":[Ljava/lang/Object;, "[TV;"
    new-instance v8, Lcom/firebase/client/collection/ArraySortedMap;

    iget-object v9, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v8, v9, v3, v5}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v8

    goto :goto_0

    .line 89
    .end local v3    # "newKeys":[Ljava/lang/Object;, "[TK;"
    .end local v5    # "newValues":[Ljava/lang/Object;, "[TV;"
    :cond_1
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v8, v8

    const/16 v9, 0x19

    if-le v8, v9, :cond_3

    .line 91
    new-instance v2, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v8, v8

    if-ge v0, v8, :cond_2

    .line 93
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v8, v8, v0

    iget-object v9, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v9, v9, v0

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v2, v8}, Lcom/firebase/client/collection/RBTreeSortedMap;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;

    move-result-object p0

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v4

    .line 99
    .local v4, "newPos":I
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v8, v4, p1}, Lcom/firebase/client/collection/ArraySortedMap;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v8, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v8, v4, p2}, Lcom/firebase/client/collection/ArraySortedMap;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 101
    .local v7, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v8, Lcom/firebase/client/collection/ArraySortedMap;

    iget-object v9, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v8, v9, v1, v7}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v8

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v0}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 164
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v1

    .line 67
    .local v1, "pos":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 72
    .end local p0    # "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    :goto_0
    return-object p0

    .line 70
    .restart local p0    # "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    :cond_0
    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/firebase/client/collection/ArraySortedMap;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/firebase/client/collection/ArraySortedMap;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v3, Lcom/firebase/client/collection/ArraySortedMap;

    iget-object v4, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v3, v4, v0, v2}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x1

    .line 169
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 172
    .local v0, "pos":I
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0, v0, v3}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, v3}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/firebase/client/collection/ArraySortedMap;, "Lcom/firebase/client/collection/ArraySortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
