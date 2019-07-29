.class Lcom/firebase/client/core/Repo$15;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->sendTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$queue:Ljava/util/List;

.field final synthetic val$repo:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    iput-object p4, p0, Lcom/firebase/client/core/Repo$15;->val$repo:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 14
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;
    .param p2, "ref"    # Lcom/firebase/client/Firebase;

    .prologue
    .line 773
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    const-string v2, "Transaction"

    iget-object v3, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v1, v2, v3, p1}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    .line 774
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v7, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    if-nez p1, :cond_1

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/core/Repo$TransactionData;

    .line 779
    .local v13, "txn":Lcom/firebase/client/core/Repo$TransactionData;
    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v13, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 780
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$800(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;

    move-result-object v1

    invoke-static {v13}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v6}, Lcom/firebase/client/core/Repo;->access$2000(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/utilities/OffsetClock;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 783
    invoke-static {v13}, Lcom/firebase/client/core/Repo$TransactionData;->access$1400(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    .line 784
    .local v10, "node":Lcom/firebase/client/snapshot/Node;
    new-instance v11, Lcom/firebase/client/DataSnapshot;

    new-instance v1, Lcom/firebase/client/Firebase;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->val$repo:Lcom/firebase/client/core/Repo;

    invoke-static {v13}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    invoke-static {v10}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 786
    .local v11, "snap":Lcom/firebase/client/DataSnapshot;
    new-instance v1, Lcom/firebase/client/core/Repo$15$1;

    invoke-direct {v1, p0, v13, v11}, Lcom/firebase/client/core/Repo$15$1;-><init>(Lcom/firebase/client/core/Repo$15;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/DataSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v3, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v13}, Lcom/firebase/client/core/Repo$TransactionData;->access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;

    move-result-object v4

    invoke-static {v13}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-static {v5}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/core/EventRegistration;)V

    goto :goto_0

    .line 798
    .end local v10    # "node":Lcom/firebase/client/snapshot/Node;
    .end local v11    # "snap":Lcom/firebase/client/DataSnapshot;
    .end local v13    # "txn":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2}, Lcom/firebase/client/core/Repo;->access$2300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/firebase/client/core/Repo;->access$2400(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V

    .line 801
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$2500(Lcom/firebase/client/core/Repo;)V

    .line 803
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$repo:Lcom/firebase/client/core/Repo;

    invoke-static {v1, v7}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    .line 806
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 807
    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Lcom/firebase/client/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 806
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 811
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 812
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/firebase/client/core/Repo$TransactionData;

    .line 813
    .local v12, "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-static {v12}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v1

    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v1, v2, :cond_2

    .line 814
    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v12, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    goto :goto_2

    .line 816
    :cond_2
    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v12, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    goto :goto_2

    .line 820
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_3
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/firebase/client/core/Repo$TransactionData;

    .line 821
    .restart local v12    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v12, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 822
    invoke-static {v12, p1}, Lcom/firebase/client/core/Repo$TransactionData;->access$2602(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/FirebaseError;

    goto :goto_3

    .line 827
    .end local v12    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_4
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v1, v2}, Lcom/firebase/client/core/Repo;->access$1000(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 829
    :cond_5
    return-void
.end method
