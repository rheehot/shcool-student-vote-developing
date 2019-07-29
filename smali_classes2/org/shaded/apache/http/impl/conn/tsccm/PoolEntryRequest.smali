.class public interface abstract Lorg/shaded/apache/http/impl/conn/tsccm/PoolEntryRequest;
.super Ljava/lang/Object;
.source "PoolEntryRequest.java"


# virtual methods
.method public abstract abortRequest()V
.end method

.method public abstract getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/shaded/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation
.end method
