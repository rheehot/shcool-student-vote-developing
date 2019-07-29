.class public interface abstract Lorg/shaded/apache/http/conn/ManagedClientConnection;
.super Ljava/lang/Object;
.source "ManagedClientConnection.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpClientConnection;
.implements Lorg/shaded/apache/http/HttpInetConnection;
.implements Lorg/shaded/apache/http/conn/ConnectionReleaseTrigger;


# virtual methods
.method public abstract getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;
.end method

.method public abstract getSSLSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getState()Ljava/lang/Object;
.end method

.method public abstract isMarkedReusable()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract layerProtocol(Lorg/shaded/apache/http/protocol/HttpContext;Lorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract markReusable()V
.end method

.method public abstract open(Lorg/shaded/apache/http/conn/routing/HttpRoute;Lorg/shaded/apache/http/protocol/HttpContext;Lorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract setState(Ljava/lang/Object;)V
.end method

.method public abstract tunnelProxy(Lorg/shaded/apache/http/HttpHost;ZLorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract tunnelTarget(ZLorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unmarkReusable()V
.end method
