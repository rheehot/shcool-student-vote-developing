.class public interface abstract Lorg/shaded/apache/http/conn/scheme/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# virtual methods
.method public abstract connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/shaded/apache/http/params/HttpParams;)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/shaded/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation
.end method

.method public abstract createSocket()Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isSecure(Ljava/net/Socket;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
