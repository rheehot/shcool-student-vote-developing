.class public interface abstract Lorg/shaded/apache/http/HttpResponseInterceptor;
.super Ljava/lang/Object;
.source "HttpResponseInterceptor.java"


# virtual methods
.method public abstract process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
