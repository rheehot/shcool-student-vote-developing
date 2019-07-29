.class public Lcom/firebase/client/snapshot/NodeUtilities;
.super Ljava/lang/Object;
.source "NodeUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public static NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 16
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "priority"    # Lcom/firebase/client/snapshot/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 17
    :try_start_0
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/Map;

    if-eqz v13, :cond_1

    .line 18
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v11, v0

    .line 19
    .local v11, "mapValue":Ljava/util/Map;
    const-string v13, ".priority"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 20
    const-string v13, ".priority"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 23
    :cond_0
    const-string v13, ".value"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 24
    const-string v13, ".value"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 28
    .end local v11    # "mapValue":Ljava/util/Map;
    :cond_1
    if-nez p0, :cond_2

    .line 29
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v12

    .line 81
    :goto_0
    return-object v12

    .line 30
    :cond_2
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 31
    new-instance v12, Lcom/firebase/client/snapshot/StringNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/firebase/client/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v6

    .line 87
    .local v6, "e":Ljava/lang/ClassCastException;
    new-instance v13, Lcom/firebase/client/FirebaseException;

    const-string v14, "Failed to parse node"

    invoke-direct {v13, v14, v6}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 32
    .end local v6    # "e":Ljava/lang/ClassCastException;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Long;

    if-eqz v13, :cond_4

    .line 33
    new-instance v12, Lcom/firebase/client/snapshot/LongNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Long;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/firebase/client/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 34
    :cond_4
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Integer;

    if-eqz v13, :cond_5

    .line 35
    new-instance v12, Lcom/firebase/client/snapshot/LongNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v14, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/firebase/client/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 36
    :cond_5
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Double;

    if-eqz v13, :cond_6

    .line 37
    new-instance v12, Lcom/firebase/client/snapshot/DoubleNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/firebase/client/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 38
    :cond_6
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Boolean;

    if-eqz v13, :cond_7

    .line 39
    new-instance v12, Lcom/firebase/client/snapshot/BooleanNode;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Boolean;

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/firebase/client/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 40
    :cond_7
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/Map;

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/List;

    if-eqz v13, :cond_f

    .line 43
    :cond_8
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/util/Map;

    if-eqz v13, :cond_b

    .line 44
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v11, v0

    .line 45
    .restart local v11    # "mapValue":Ljava/util/Map;
    const-string v13, ".sv"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 46
    new-instance v12, Lcom/firebase/client/snapshot/DeferredValueNode;

    move-object/from16 v0, p1

    invoke-direct {v12, v11, v0}, Lcom/firebase/client/snapshot/DeferredValueNode;-><init>(Ljava/util/Map;Lcom/firebase/client/snapshot/Node;)V

    .line 47
    .local v12, "node":Lcom/firebase/client/snapshot/Node;
    goto/16 :goto_0

    .line 49
    .end local v12    # "node":Lcom/firebase/client/snapshot/Node;
    :cond_9
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v13

    invoke-direct {v2, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 50
    .local v2, "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 52
    .local v9, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 53
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 54
    .local v8, "key":Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 55
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 56
    .local v4, "childNode":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v4}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 57
    invoke-static {v8}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    .line 58
    .local v3, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 64
    .end local v2    # "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    .end local v3    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v4    # "childNode":Lcom/firebase/client/snapshot/Node;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "mapValue":Ljava/util/Map;
    :cond_b
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 65
    .local v10, "listValue":Ljava/util/List;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v2, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    .restart local v2    # "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_d

    .line 67
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    .restart local v8    # "key":Ljava/lang/String;
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 69
    .restart local v4    # "childNode":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v4}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    .line 70
    invoke-static {v8}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    .line 71
    .restart local v3    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v3    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 76
    .end local v4    # "childNode":Lcom/firebase/client/snapshot/Node;
    .end local v7    # "i":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "listValue":Ljava/util/List;
    :cond_d
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 77
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v12

    goto/16 :goto_0

    .line 79
    :cond_e
    sget-object v13, Lcom/firebase/client/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v13}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v5

    .line 81
    .local v5, "childSet":Lcom/firebase/client/collection/ImmutableSortedMap;, "Lcom/firebase/client/collection/ImmutableSortedMap<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    new-instance v12, Lcom/firebase/client/snapshot/ChildrenNode;

    move-object/from16 v0, p1

    invoke-direct {v12, v5, v0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V

    goto/16 :goto_0

    .line 84
    .end local v2    # "childData":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    .end local v5    # "childSet":Lcom/firebase/client/collection/ImmutableSortedMap;, "Lcom/firebase/client/collection/ImmutableSortedMap<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;>;"
    :cond_f
    new-instance v13, Lcom/firebase/client/FirebaseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to parse node with class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static nameAndPriorityCompare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)I
    .locals 1
    .param p0, "aKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p1, "aPriority"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "bKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p3, "bPriority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 94
    invoke-interface {p1, p3}, Lcom/firebase/client/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, "priCmp":I
    if-eqz v0, :cond_0

    .line 98
    .end local v0    # "priCmp":I
    :goto_0
    return v0

    .restart local v0    # "priCmp":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    goto :goto_0
.end method
