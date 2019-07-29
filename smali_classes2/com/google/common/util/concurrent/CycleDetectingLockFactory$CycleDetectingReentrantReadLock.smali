.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CycleDetectingReentrantReadLock"
.end annotation


# instance fields
.field final readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

.field final synthetic this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;)V
    .locals 0
    .param p2, "readWriteLock"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 922
    invoke-direct {p0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 923
    iput-object p2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    .line 924
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 930
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 934
    return-void

    .line 932
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public lockInterruptibly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 940
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 944
    return-void

    .line 942
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public tryLock()Z
    .locals 3

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 950
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 952
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 961
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 963
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 970
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 974
    return-void

    .line 972
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    throw v0
.end method
