.class public Lcom/firebase/client/core/RangeMerge;
.super Ljava/lang/Object;
.source "RangeMerge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final optExclusiveStart:Lcom/firebase/client/core/Path;

.field private final optInclusiveEnd:Lcom/firebase/client/core/Path;

.field private final snap:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/firebase/client/core/RangeMerge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "optExclusiveStart"    # Lcom/firebase/client/core/Path;
    .param p2, "optInclusiveEnd"    # Lcom/firebase/client/core/Path;
    .param p3, "snap"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    .line 26
    iput-object p2, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    .line 27
    iput-object p3, p0, Lcom/firebase/client/core/RangeMerge;->snap:Lcom/firebase/client/snapshot/Node;

    .line 28
    return-void
.end method

.method private updateRangeInNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 16
    .param p1, "currentPath"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "updateNode"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    if-nez v13, :cond_1

    const/4 v10, 0x1

    .line 44
    .local v10, "startComparison":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    if-nez v13, :cond_2

    const/4 v4, -0x1

    .line 45
    .local v4, "endComparison":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 46
    .local v11, "startInNode":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v5, 0x1

    .line 47
    .local v5, "endInNode":Z
    :goto_3
    if-lez v10, :cond_5

    if-gez v4, :cond_5

    if-nez v5, :cond_5

    .line 91
    .end local p3    # "updateNode":Lcom/firebase/client/snapshot/Node;
    :cond_0
    :goto_4
    return-object p3

    .line 43
    .end local v4    # "endComparison":I
    .end local v5    # "endInNode":Z
    .end local v10    # "startComparison":I
    .end local v11    # "startInNode":Z
    .restart local p3    # "updateNode":Lcom/firebase/client/snapshot/Node;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/firebase/client/core/Path;->compareTo(Lcom/firebase/client/core/Path;)I

    move-result v10

    goto :goto_0

    .line 44
    .restart local v10    # "startComparison":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/firebase/client/core/Path;->compareTo(Lcom/firebase/client/core/Path;)I

    move-result v4

    goto :goto_1

    .line 45
    .restart local v4    # "endComparison":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 46
    .restart local v11    # "startInNode":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 50
    .restart local v5    # "endInNode":Z
    :cond_5
    if-lez v10, :cond_6

    if-eqz v5, :cond_6

    invoke-interface/range {p3 .. p3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v13

    if-nez v13, :cond_0

    .line 52
    :cond_6
    if-lez v10, :cond_a

    if-nez v4, :cond_a

    .line 53
    sget-boolean v13, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    if-nez v13, :cond_7

    if-nez v5, :cond_7

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 54
    :cond_7
    sget-boolean v13, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    if-nez v13, :cond_8

    invoke-interface/range {p3 .. p3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 55
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 57
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object p3

    goto :goto_4

    :cond_9
    move-object/from16 p3, p2

    .line 60
    goto :goto_4

    .line 62
    :cond_a
    if-nez v11, :cond_b

    if-eqz v5, :cond_12

    .line 65
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v1, "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    invoke-interface/range {p2 .. p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/NamedNode;

    .line 67
    .local v2, "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 69
    .end local v2    # "child":Lcom/firebase/client/snapshot/NamedNode;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/NamedNode;

    .line 70
    .restart local v2    # "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 72
    .end local v2    # "child":Lcom/firebase/client/snapshot/NamedNode;
    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v7, "inOrder":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/snapshot/ChildKey;>;"
    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-interface/range {p3 .. p3}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v13

    invoke-interface {v13}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface/range {p2 .. p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v13

    invoke-interface {v13}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f

    .line 76
    :cond_e
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_f
    move-object/from16 v9, p2

    .line 79
    .local v9, "newNode":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/firebase/client/snapshot/ChildKey;

    .line 80
    .local v8, "key":Lcom/firebase/client/snapshot/ChildKey;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 81
    .local v3, "currentChild":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/firebase/client/core/RangeMerge;->updateRangeInNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v12

    .line 83
    .local v12, "updatedChild":Lcom/firebase/client/snapshot/Node;
    if-eq v12, v3, :cond_10

    .line 84
    invoke-interface {v9, v8, v12}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    goto :goto_7

    .end local v3    # "currentChild":Lcom/firebase/client/snapshot/Node;
    .end local v8    # "key":Lcom/firebase/client/snapshot/ChildKey;
    .end local v12    # "updatedChild":Lcom/firebase/client/snapshot/Node;
    :cond_11
    move-object/from16 p3, v9

    .line 87
    goto/16 :goto_4

    .line 90
    .end local v1    # "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "inOrder":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/snapshot/ChildKey;>;"
    .end local v9    # "newNode":Lcom/firebase/client/snapshot/Node;
    :cond_12
    sget-boolean v13, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    if-nez v13, :cond_13

    if-gtz v4, :cond_13

    if-lez v10, :cond_13

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    :cond_13
    move-object/from16 p3, p2

    .line 91
    goto/16 :goto_4
.end method


# virtual methods
.method public applyTo(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 31
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->snap:Lcom/firebase/client/snapshot/Node;

    invoke-direct {p0, v0, p1, v1}, Lcom/firebase/client/core/RangeMerge;->updateRangeInNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEnd()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method getStart()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangeMerge{optExclusiveStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", optInclusiveEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->snap:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
