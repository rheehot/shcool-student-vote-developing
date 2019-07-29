.class Lcom/firebase/client/core/SyncTree$4;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->removeAllWrites()Ljava/util/List;
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
        "<+",
        "Lcom/firebase/client/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

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
    .line 221
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$4;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 224
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/core/persistence/PersistenceManager;->removeAllUserWrites()V

    .line 225
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/WriteTree;->purgeAllWrites()Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, "purgedWrites":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/UserWriteRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 230
    :goto_0
    return-object v2

    .line 229
    :cond_0
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 230
    .local v0, "affectedTree":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

    new-instance v3, Lcom/firebase/client/core/operation/AckUserWrite;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-direct {v3, v4, v0, v5}, Lcom/firebase/client/core/operation/AckUserWrite;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Z)V

    invoke-static {v2, v3}, Lcom/firebase/client/core/SyncTree;->access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method
