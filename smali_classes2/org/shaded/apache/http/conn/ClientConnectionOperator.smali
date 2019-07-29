.class public interface abstract Lorg/shaded/apache/http/conn/ClientConnectionOperator;
.super Ljava/lang/Object;
.source "ClientConnectionOperator.java"


# virtual methods
.method public abstract createConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;
.end method

.method public abstract openConnection(Lorg/shaded/apache/http/conn/OperatedClientConnection;Lorg/shaded/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/shaded/apache/http/protocol/HttpContext;Lorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateSecureConnection(Lorg/shaded/apache/http/conn/OperatedClientConnection;Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/protocol/HttpContext;Lorg/shaded/apache/http/params/HttpParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
