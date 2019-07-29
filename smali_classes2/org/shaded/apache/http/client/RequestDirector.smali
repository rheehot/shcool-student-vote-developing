.class public interface abstract Lorg/shaded/apache/http/client/RequestDirector;
.super Ljava/lang/Object;
.source "RequestDirector.java"


# virtual methods
.method public abstract execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
