.class public interface abstract Lorg/shaded/apache/http/HttpClientConnection;
.super Ljava/lang/Object;
.source "HttpClientConnection.java"

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

.method public abstract isResponseAvailable(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receiveResponseEntity(Lorg/shaded/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receiveResponseHeader()Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendRequestHeader(Lorg/shaded/apache/http/HttpRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
