.class public Lcom/firebase/client/snapshot/ChildrenNode;
.super Ljava/lang/Object;
.source "ChildrenNode.java"

# interfaces
.implements Lcom/firebase/client/snapshot/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;,
        Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static NAME_ONLY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final children:Lcom/firebase/client/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field

.field private lazyHash:Ljava/lang/String;

.field private final priority:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/snapshot/ChildrenNode;->$assertionsDisabled:Z

    .line 17
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode$1;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/ChildrenNode$1;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/firebase/client/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 66
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V
    .locals 2
    .param p2, "priority"    # Lcom/firebase/client/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "children":Lcom/firebase/client/collection/ImmutableSortedMap;, "Lcom/firebase/client/collection/ImmutableSortedMap<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create empty ChildrenNode with priority!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 74
    iput-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 75
    return-void
.end method

.method private static addIndentation(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "indentation"    # I

    .prologue
    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 385
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "indentation"    # I

    .prologue
    .line 390
    iget-object v3, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v3}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    const-string v3, "{ }"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :goto_0
    return-void

    .line 393
    :cond_0
    const-string v3, "{\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v3, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v3}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    .local v0, "childEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    add-int/lit8 v3, p2, 0x2

    invoke-static {p1, v3}, Lcom/firebase/client/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v3, :cond_1

    .line 399
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 400
    .local v1, "childrenNode":Lcom/firebase/client/snapshot/ChildrenNode;
    add-int/lit8 v3, p2, 0x2

    invoke-direct {v1, p1, v3}, Lcom/firebase/client/snapshot/ChildrenNode;->toString(Ljava/lang/StringBuilder;I)V

    .line 404
    .end local v1    # "childrenNode":Lcom/firebase/client/snapshot/ChildrenNode;
    :goto_2
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 402
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 406
    .end local v0    # "childEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    :cond_2
    iget-object v3, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 407
    add-int/lit8 v3, p2, 0x2

    invoke-static {p1, v3}, Lcom/firebase/client/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 408
    const-string v3, ".priority="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v3, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_3
    invoke-static {p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 413
    const-string v3, "}"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/Node;)I
    .locals 4
    .param p1, "o"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 313
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 317
    goto :goto_0

    .line 319
    :cond_2
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 321
    goto :goto_0

    .line 322
    :cond_3
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .line 323
    goto :goto_0

    .line 324
    :cond_4
    sget-object v2, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 325
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/firebase/client/snapshot/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;->compareTo(Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 334
    if-nez p1, :cond_0

    move v5, v6

    .line 362
    :goto_0
    return v5

    .line 337
    :cond_0
    if-ne p1, p0, :cond_1

    move v5, v7

    .line 338
    goto :goto_0

    .line 340
    :cond_1
    instance-of v5, p1, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v5, :cond_2

    move v5, v6

    .line 341
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 343
    check-cast v0, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 344
    .local v0, "other":Lcom/firebase/client/snapshot/ChildrenNode;
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    .line 345
    goto :goto_0

    .line 346
    :cond_3
    iget-object v5, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v5}, Lcom/firebase/client/collection/ImmutableSortedMap;->size()I

    move-result v5

    iget-object v8, v0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v8}, Lcom/firebase/client/collection/ImmutableSortedMap;->size()I

    move-result v8

    if-eq v5, v8, :cond_4

    move v5, v6

    .line 347
    goto :goto_0

    .line 349
    :cond_4
    iget-object v5, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v5}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 350
    .local v3, "thisIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;>;"
    iget-object v5, v0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v5}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 353
    .local v4, "thisNameNode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 354
    .local v2, "otherNamedNode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/ChildKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_6
    move v5, v6

    .line 356
    goto :goto_0

    .line 359
    .end local v2    # "otherNamedNode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    .end local v4    # "thisNameNode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 360
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Something went wrong internally."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    move v5, v7

    .line 362
    goto/16 :goto_0
.end method

.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;Z)V

    .line 239
    return-void
.end method

.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
    .param p2, "includePriority"    # Z

    .prologue
    .line 242
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    .line 257
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    new-instance v1, Lcom/firebase/client/snapshot/ChildrenNode$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/snapshot/ChildrenNode$2;-><init>(Lcom/firebase/client/snapshot/ChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    goto :goto_0
.end method

.method public getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 3
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 230
    .local v0, "front":Lcom/firebase/client/snapshot/ChildKey;
    if-nez v0, :cond_0

    .line 233
    .end local p0    # "this":Lcom/firebase/client/snapshot/ChildrenNode;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/firebase/client/snapshot/ChildrenNode;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getFirstChildKey()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMinKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 190
    sget-object v1, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-virtual {p0, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "hashString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 193
    .end local v0    # "hashString":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    return-object v1

    .line 191
    .restart local v0    # "hashString":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 8
    .param p1, "version"    # Lcom/firebase/client/snapshot/Node$HashVersion;

    .prologue
    .line 157
    sget-object v6, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    if-eq p1, v6, :cond_0

    .line 158
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Hashes on children nodes only supported for V1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v5, "toHash":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v6}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 162
    const-string v6, "priority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v6, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    sget-object v7, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-interface {v6, v7}, Lcom/firebase/client/snapshot/Node;->getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v3, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/snapshot/NamedNode;>;"
    const/4 v4, 0x0

    .line 168
    .local v4, "sawPriority":Z
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/NamedNode;

    .line 169
    .local v2, "node":Lcom/firebase/client/snapshot/NamedNode;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-interface {v6}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-interface {v6}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 171
    :goto_1
    goto :goto_0

    .line 170
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 172
    .end local v2    # "node":Lcom/firebase/client/snapshot/NamedNode;
    :cond_4
    if-eqz v4, :cond_5

    .line 173
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/NamedNode;

    .line 176
    .restart local v2    # "node":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v2}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-interface {v6}, Lcom/firebase/client/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "hashString":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 178
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 184
    .end local v0    # "hashString":Ljava/lang/String;
    .end local v2    # "node":Lcom/firebase/client/snapshot/NamedNode;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 223
    :goto_0
    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastChildKey()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMaxKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getPredecessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getPriority()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public getSuccessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 12
    .param p1, "useExportFormat"    # Z

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 141
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    const/4 v8, 0x0

    .line 104
    .local v8, "numKeys":I
    const/4 v7, 0x0

    .line 105
    .local v7, "maxKey":I
    const/4 v0, 0x1

    .line 106
    .local v0, "allIntegerKeys":Z
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v9, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v10, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v10}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v10}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v10, p1}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v8, v8, 0x1

    .line 112
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_3

    .line 114
    const/4 v0, 0x0

    goto :goto_1

    .line 116
    :cond_3
    invoke-static {v5}, Lcom/firebase/client/utilities/Utilities;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 117
    .local v6, "keyAsInt":Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_4

    .line 118
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v7, :cond_2

    .line 119
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .line 122
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 128
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keyAsInt":Ljava/lang/Integer;
    :cond_5
    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    mul-int/lit8 v10, v8, 0x2

    if-ge v7, v10, :cond_6

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v1, "arrayResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-gt v3, v7, :cond_0

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 138
    .end local v1    # "arrayResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "i":I
    :cond_6
    if-eqz p1, :cond_7

    iget-object v10, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v10}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 139
    const-string v10, ".priority"

    iget-object v11, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v11}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v1, v9

    .line 141
    goto/16 :goto_0
.end method

.method public hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "hashCode":I
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 370
    .local v0, "entry":Lcom/firebase/client/snapshot/NamedNode;
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/snapshot/ChildKey;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 371
    mul-int/lit8 v3, v1, 0x11

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 372
    goto :goto_0

    .line 373
    .end local v0    # "entry":Lcom/firebase/client/snapshot/NamedNode;
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->reverseIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->toString(Ljava/lang/StringBuilder;I)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 4
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "newChildNode"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 270
    .local v0, "front":Lcom/firebase/client/snapshot/ChildKey;
    if-nez v0, :cond_0

    .line 277
    .end local p2    # "newChildNode":Lcom/firebase/client/snapshot/Node;
    :goto_0
    return-object p2

    .line 272
    .restart local p2    # "newChildNode":Lcom/firebase/client/snapshot/Node;
    :cond_0
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    sget-boolean v2, Lcom/firebase/client/snapshot/ChildrenNode;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 274
    :cond_1
    invoke-virtual {p0, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 277
    .local v1, "newImmediateChild":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0
.end method

.method public updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 3
    .param p1, "key"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "newChildNode"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 296
    .local v0, "newChildren":Lcom/firebase/client/collection/ImmutableSortedMap;, "Lcom/firebase/client/collection/ImmutableSortedMap<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 299
    :cond_1
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 302
    :cond_2
    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_3
    new-instance v1, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object v2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v1, v0, v2}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2
    .param p1, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0
.end method
