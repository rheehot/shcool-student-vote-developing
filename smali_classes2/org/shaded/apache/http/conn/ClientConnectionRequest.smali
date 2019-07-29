.class public interface abstract Lorg/shaded/apache/http/conn/ClientConnectionRequest;
.super Ljava/lang/Object;
.source "ClientConnectionRequest.java"


# virtual methods
.method public abstract abortRequest()V
.end method

.method public abstract getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/shaded/apache/http/conn/ManagedClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/shaded/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation
.end method
