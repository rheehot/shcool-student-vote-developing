.class Lcom/firebase/client/collection/RBTreeSortedMap$Builder;
.super Ljava/lang/Object;
.source "RBTreeSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/RBTreeSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;,
        Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private leaf:Lcom/firebase/client/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private root:Lcom/firebase/client/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/firebase/client/collection/RBTreeSortedMap$Builder;, "Lcom/firebase/client/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TA;>;"
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<TB;TC;>;"
    .local p3, "translator":Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;, "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<TA;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    .line 252
    iput-object p2, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->values:Ljava/util/Map;

    .line 253
    iput-object p3, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    .line 254
    return-void
.end method

.method private buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;
    .locals 8
    .param p1, "start"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/RBTreeSortedMap$Builder;, "Lcom/firebase/client/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    const/4 v7, 0x0

    .line 262
    if-nez p2, :cond_0

    .line 263
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v5

    .line 273
    :goto_0
    return-object v5

    .line 264
    :cond_0
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 265
    iget-object v5, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 266
    .local v1, "key":Ljava/lang/Object;, "TA;"
    new-instance v5, Lcom/firebase/client/collection/LLRBBlackValueNode;

    invoke-direct {p0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v1, v6, v7, v7}, Lcom/firebase/client/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    goto :goto_0

    .line 268
    .end local v1    # "key":Ljava/lang/Object;, "TA;"
    :cond_1
    div-int/lit8 v0, p2, 0x2

    .line 269
    .local v0, "half":I
    add-int v3, p1, v0

    .line 270
    .local v3, "middle":I
    invoke-direct {p0, p1, v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    .line 271
    .local v2, "left":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TA;TC;>;"
    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v5, v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v4

    .line 272
    .local v4, "right":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TA;TC;>;"
    iget-object v5, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 273
    .restart local v1    # "key":Ljava/lang/Object;, "TA;"
    new-instance v5, Lcom/firebase/client/collection/LLRBBlackValueNode;

    invoke-direct {p0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v1, v6, v2, v4}, Lcom/firebase/client/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    goto :goto_0
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;
    .locals 7
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
            "Lcom/firebase/client/collection/RBTreeSortedMap",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<TA;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<TB;TC;>;"
    .local p2, "translator":Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;, "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<TA;TB;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    new-instance v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;)V

    .line 299
    .local v0, "builder":Lcom/firebase/client/collection/RBTreeSortedMap$Builder;, "Lcom/firebase/client/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 300
    new-instance v4, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;-><init>(I)V

    invoke-virtual {v4}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 301
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 302
    .local v1, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;

    .line 304
    .local v3, "next":Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;
    iget v4, v3, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr v1, v4

    .line 305
    iget-boolean v4, v3, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->isOne:Z

    if-eqz v4, :cond_0

    .line 306
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    iget v5, v3, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v0, v4, v5, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    goto :goto_0

    .line 308
    :cond_0
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    iget v5, v3, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v0, v4, v5, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    .line 309
    iget v4, v3, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr v1, v4

    .line 310
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iget v5, v3, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v0, v4, v5, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    goto :goto_0

    .line 313
    .end local v3    # "next":Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;
    :cond_1
    new-instance v5, Lcom/firebase/client/collection/RBTreeSortedMap;

    iget-object v4, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v4

    :goto_1
    const/4 v6, 0x0

    invoke-direct {v5, v4, p3, v6}, Lcom/firebase/client/collection/RBTreeSortedMap;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;Lcom/firebase/client/collection/RBTreeSortedMap$1;)V

    return-object v5

    :cond_2
    iget-object v4, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    goto :goto_1
.end method

.method private buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V
    .locals 6
    .param p1, "color"    # Lcom/firebase/client/collection/LLRBNode$Color;
    .param p2, "chunkSize"    # I
    .param p3, "start"    # I

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/RBTreeSortedMap$Builder;, "Lcom/firebase/client/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    const/4 v5, 0x0

    .line 278
    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, v3, v4}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    .line 279
    .local v2, "treeRoot":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TA;TC;>;"
    iget-object v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "key":Ljava/lang/Object;, "TA;"
    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    if-ne p1, v3, :cond_0

    .line 282
    new-instance v1, Lcom/firebase/client/collection/LLRBRedValueNode;

    invoke-direct {p0, v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v0, v3, v5, v2}, Lcom/firebase/client/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 286
    .local v1, "node":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TA;TC;>;"
    :goto_0
    iget-object v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    if-nez v3, :cond_1

    .line 287
    iput-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    .line 288
    iput-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    .line 293
    :goto_1
    return-void

    .line 284
    .end local v1    # "node":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TA;TC;>;"
    :cond_0
    new-instance v1, Lcom/firebase/client/collection/LLRBBlackValueNode;

    invoke-direct {p0, v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v0, v3, v5, v2}, Lcom/firebase/client/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .restart local v1    # "node":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TA;TC;>;"
    goto :goto_0

    .line 290
    :cond_1
    iget-object v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    invoke-virtual {v3, v1}, Lcom/firebase/client/collection/LLRBValueNode;->setLeft(Lcom/firebase/client/collection/LLRBNode;)V

    .line 291
    iput-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    goto :goto_1
.end method

.method private getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/firebase/client/collection/RBTreeSortedMap$Builder;, "Lcom/firebase/client/collection/RBTreeSortedMap$Builder<TA;TB;TC;>;"
    .local p1, "key":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    invoke-interface {v1, p1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
