.class public interface abstract Lorg/shaded/apache/http/protocol/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# virtual methods
.method public abstract handle(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
