.class public interface abstract Lorg/shaded/apache/http/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# virtual methods
.method public abstract newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/shaded/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/MethodNotSupportedException;
        }
    .end annotation
.end method

.method public abstract newHttpRequest(Lorg/shaded/apache/http/RequestLine;)Lorg/shaded/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/MethodNotSupportedException;
        }
    .end annotation
.end method
