.class public interface abstract Lorg/shaded/apache/http/conn/ClientConnectionManager;
.super Ljava/lang/Object;
.source "ClientConnectionManager.java"


# virtual methods
.method public abstract closeExpiredConnections()V
.end method

.method public abstract closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract getSchemeRegistry()Lorg/shaded/apache/http/conn/scheme/SchemeRegistry;
.end method

.method public abstract releaseConnection(Lorg/shaded/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract requestConnection(Lorg/shaded/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/shaded/apache/http/conn/ClientConnectionRequest;
.end method

.method public abstract shutdown()V
.end method
