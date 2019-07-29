.class public interface abstract Lorg/shaded/apache/http/HttpServerConnection;
.super Ljava/lang/Object;
.source "HttpServerConnection.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpConnection;


# virtual methods
.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receiveRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receiveRequestHeader()Lorg/shaded/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendResponseEntity(Lorg/shaded/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendResponseHeader(Lorg/shaded/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
