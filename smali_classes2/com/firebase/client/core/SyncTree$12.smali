.class Lcom/firebase/client/core/SyncTree$12;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->removeEventRegistration(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/firebase/client/core/view/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;

.field final synthetic val$cancelError:Lcom/firebase/client/FirebaseError;

.field final synthetic val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

.field final synthetic val$query:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 497
    const-class v0, Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/SyncTree$12;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$12;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$12;->val$cancelError:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$12;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v12

    .line 501
    .local v12, "path":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/firebase/client/core/SyncPoint;

    .line 502
    .local v9, "maybeSyncPoint":Lcom/firebase/client/core/SyncPoint;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v3, "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/firebase/client/core/SyncPoint;->viewExistsForQuery(Lcom/firebase/client/core/view/QuerySpec;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 509
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$cancelError:Lcom/firebase/client/FirebaseError;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v9, v0, v1, v2}, Lcom/firebase/client/core/SyncPoint;->removeEventRegistration(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/utilities/Pair;

    move-result-object v16

    .line 511
    .local v16, "removedAndEvents":Lcom/firebase/client/utilities/Pair;, "Lcom/firebase/client/utilities/Pair<Ljava/util/List<Lcom/firebase/client/core/view/QuerySpec;>;Ljava/util/List<Lcom/firebase/client/core/view/Event;>;>;"
    invoke-virtual {v9}, Lcom/firebase/client/core/SyncPoint;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/firebase/client/core/utilities/ImmutableTree;->remove(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/firebase/client/core/SyncTree;->access$702(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 514
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 515
    .local v15, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/QuerySpec;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/firebase/client/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    check-cast v3, Ljava/util/List;

    .line 522
    .restart local v3    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    const/16 v17, 0x0

    .line 523
    .local v17, "removingDefault":Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/core/view/QuerySpec;

    .line 524
    .local v13, "queryRemoved":Lcom/firebase/client/core/view/QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/firebase/client/core/persistence/PersistenceManager;->setQueryInactive(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 525
    if-nez v17, :cond_2

    invoke-virtual {v13}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_2
    const/16 v17, 0x1

    .line 526
    :goto_1
    goto :goto_0

    .line 525
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 527
    .end local v13    # "queryRemoved":Lcom/firebase/client/core/view/QuerySpec;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    .line 528
    .local v7, "currentTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_8

    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/firebase/client/core/SyncPoint;

    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v21

    if-eqz v21, :cond_8

    const/4 v6, 0x1

    .line 529
    .local v6, "covered":Z
    :goto_2
    invoke-virtual {v12}, Lcom/firebase/client/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/ChildKey;

    .line 530
    .local v4, "component":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {v7, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    .line 531
    if-nez v6, :cond_6

    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/firebase/client/core/SyncPoint;

    invoke-virtual/range {v21 .. v21}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_6
    const/4 v6, 0x1

    .line 532
    :goto_3
    if-nez v6, :cond_7

    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 537
    .end local v4    # "component":Lcom/firebase/client/snapshot/ChildKey;
    :cond_7
    if-eqz v17, :cond_a

    if-nez v6, :cond_a

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v18

    .line 541
    .local v18, "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_a

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/firebase/client/core/SyncTree;->access$1200(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v11

    .line 546
    .local v11, "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/View;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/firebase/client/core/view/View;

    .line 547
    .local v20, "view":Lcom/firebase/client/core/view/View;
    new-instance v5, Lcom/firebase/client/core/SyncTree$ListenContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/firebase/client/core/SyncTree$ListenContainer;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/View;)V

    .line 548
    .local v5, "container":Lcom/firebase/client/core/SyncTree$ListenContainer;
    invoke-virtual/range {v20 .. v20}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v10

    .line 549
    .local v10, "newQuery":Lcom/firebase/client/core/view/QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v22

    invoke-static {v5}, Lcom/firebase/client/core/SyncTree$ListenContainer;->access$1400(Lcom/firebase/client/core/SyncTree$ListenContainer;)Lcom/firebase/client/core/Tag;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2, v5, v5}, Lcom/firebase/client/core/SyncTree$ListenProvider;->startListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/SyncTree$CompletionListener;)V

    goto :goto_4

    .line 528
    .end local v5    # "container":Lcom/firebase/client/core/SyncTree$ListenContainer;
    .end local v6    # "covered":Z
    .end local v10    # "newQuery":Lcom/firebase/client/core/view/QuerySpec;
    .end local v11    # "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/View;>;"
    .end local v18    # "subtree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    .end local v20    # "view":Lcom/firebase/client/core/view/View;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 531
    .restart local v4    # "component":Lcom/firebase/client/snapshot/ChildKey;
    .restart local v6    # "covered":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 558
    .end local v4    # "component":Lcom/firebase/client/snapshot/ChildKey;
    :cond_a
    if-nez v6, :cond_b

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$cancelError:Lcom/firebase/client/FirebaseError;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 561
    if-eqz v17, :cond_d

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    .line 572
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/firebase/client/core/SyncTree;->access$1600(Lcom/firebase/client/core/SyncTree;Ljava/util/List;)V

    .line 576
    .end local v6    # "covered":Z
    .end local v7    # "currentTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v15    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/QuerySpec;>;"
    .end local v16    # "removedAndEvents":Lcom/firebase/client/utilities/Pair;, "Lcom/firebase/client/utilities/Pair<Ljava/util/List<Lcom/firebase/client/core/view/QuerySpec;>;Ljava/util/List<Lcom/firebase/client/core/view/Event;>;>;"
    .end local v17    # "removingDefault":Z
    :cond_c
    return-object v3

    .line 564
    .restart local v6    # "covered":Z
    .restart local v7    # "currentTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Lcom/firebase/client/core/SyncPoint;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v15    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/QuerySpec;>;"
    .restart local v16    # "removedAndEvents":Lcom/firebase/client/utilities/Pair;, "Lcom/firebase/client/utilities/Pair<Ljava/util/List<Lcom/firebase/client/core/view/QuerySpec;>;Ljava/util/List<Lcom/firebase/client/core/view/Event;>;>;"
    .restart local v17    # "removingDefault":Z
    :cond_d
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/firebase/client/core/view/QuerySpec;

    .line 565
    .local v14, "queryToRemove":Lcom/firebase/client/core/view/QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/firebase/client/core/SyncTree;->access$000(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v19

    .line 566
    .local v19, "tag":Lcom/firebase/client/core/Tag;
    sget-boolean v21, Lcom/firebase/client/core/SyncTree$12;->$assertionsDisabled:Z

    if-nez v21, :cond_e

    if-nez v19, :cond_e

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 567
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v14}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    goto :goto_5
.end method
