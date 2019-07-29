.class public interface abstract Lorg/shaded/apache/http/conn/OperatedClientConnection;
.super Ljava/lang/Object;
.source "OperatedClientConnection.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpClientConnection;
.implements Lorg/shaded/apache/http/HttpInetConnection;


# virtual methods
.method public abstract getSocket()Ljava/net/Socket;
.end method

.method public abstract getTargetHost()Lorg/shaded/apache/http/HttpHost;
.end method

.method public abstract isSecure()Z
.end method

.method public abstract openCompleted(ZLorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract opening(Ljava/net/Socket;Lorg/shaded/apache/http/HttpHost;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract update(Ljava/net/Socket;Lorg/shaded/apache/http/HttpHost;ZLorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
