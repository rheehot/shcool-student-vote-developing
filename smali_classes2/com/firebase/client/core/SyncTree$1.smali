.class Lcom/firebase/client/core/SyncTree$1;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->applyUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;JZZ)Ljava/util/List;
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

.field final synthetic val$newData:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$newDataUnresolved:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$persist:Z

.field final synthetic val$visible:Z

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;ZLcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;JLcom/firebase/client/snapshot/Node;Z)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$1;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-boolean p2, p0, Lcom/firebase/client/core/SyncTree$1;->val$persist:Z

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$1;->val$path:Lcom/firebase/client/core/Path;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$1;->val$newDataUnresolved:Lcom/firebase/client/snapshot/Node;

    iput-wide p5, p0, Lcom/firebase/client/core/SyncTree$1;->val$writeId:J

    iput-object p7, p0, Lcom/firebase/client/core/SyncTree$1;->val$newData:Lcom/firebase/client/snapshot/Node;

    iput-boolean p8, p0, Lcom/firebase/client/core/SyncTree$1;->val$visible:Z

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
    .line 142
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$1;->call()Ljava/util/List;

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

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/firebase/client/core/SyncTree$1;->val$persist:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$1;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$1;->val$path:Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$1;->val$newDataUnresolved:Lcom/firebase/client/snapshot/Node;

    iget-wide v4, p0, Lcom/firebase/client/core/SyncTree$1;->val$writeId:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/firebase/client/core/persistence/PersistenceManager;->saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$1;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$1;->val$path:Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$1;->val$newData:Lcom/firebase/client/snapshot/Node;

    iget-wide v4, p0, Lcom/firebase/client/core/SyncTree$1;->val$writeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/firebase/client/core/SyncTree$1;->val$visible:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/firebase/client/core/WriteTree;->addOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/lang/Long;Z)V

    .line 149
    iget-boolean v0, p0, Lcom/firebase/client/core/SyncTree$1;->val$visible:Z

    if-nez v0, :cond_1

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$1;->this$0:Lcom/firebase/client/core/SyncTree;

    new-instance v1, Lcom/firebase/client/core/operation/Overwrite;

    sget-object v2, Lcom/firebase/client/core/operation/OperationSource;->USER:Lcom/firebase/client/core/operation/OperationSource;

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$1;->val$path:Lcom/firebase/client/core/Path;

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$1;->val$newData:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/core/operation/Overwrite;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    invoke-static {v0, v1}, Lcom/firebase/client/core/SyncTree;->access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
