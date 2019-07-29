.class public interface abstract Lorg/shaded/apache/http/HttpRequestInterceptor;
.super Ljava/lang/Object;
.source "HttpRequestInterceptor.java"


# virtual methods
.method public abstract process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
