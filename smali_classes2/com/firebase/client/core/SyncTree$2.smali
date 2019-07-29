.class Lcom/firebase/client/core/SyncTree$2;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->applyUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/CompoundWrite;JZ)Ljava/util/List;
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

.field final synthetic val$children:Lcom/firebase/client/core/CompoundWrite;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$persist:Z

.field final synthetic val$unresolvedChildren:Lcom/firebase/client/core/CompoundWrite;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;ZLcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;JLcom/firebase/client/core/CompoundWrite;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$2;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-boolean p2, p0, Lcom/firebase/client/core/SyncTree$2;->val$persist:Z

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$2;->val$path:Lcom/firebase/client/core/Path;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$2;->val$unresolvedChildren:Lcom/firebase/client/core/CompoundWrite;

    iput-wide p5, p0, Lcom/firebase/client/core/SyncTree$2;->val$writeId:J

    iput-object p7, p0, Lcom/firebase/client/core/SyncTree$2;->val$children:Lcom/firebase/client/core/CompoundWrite;

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
    .line 163
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$2;->call()Ljava/util/List;

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
    .line 166
    iget-boolean v0, p0, Lcom/firebase/client/core/SyncTree$2;->val$persist:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$2;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$2;->val$path:Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$2;->val$unresolvedChildren:Lcom/firebase/client/core/CompoundWrite;

    iget-wide v4, p0, Lcom/firebase/client/core/SyncTree$2;->val$writeId:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/firebase/client/core/persistence/PersistenceManager;->saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$2;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$2;->val$path:Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$2;->val$children:Lcom/firebase/client/core/CompoundWrite;

    iget-wide v4, p0, Lcom/firebase/client/core/SyncTree$2;->val$writeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/WriteTree;->addMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Ljava/lang/Long;)V

    .line 171
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$2;->this$0:Lcom/firebase/client/core/SyncTree;

    new-instance v1, Lcom/firebase/client/core/operation/Merge;

    sget-object v2, Lcom/firebase/client/core/operation/OperationSource;->USER:Lcom/firebase/client/core/operation/OperationSource;

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$2;->val$path:Lcom/firebase/client/core/Path;

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$2;->val$children:Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/core/operation/Merge;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    invoke-static {v0, v1}, Lcom/firebase/client/core/SyncTree;->access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
