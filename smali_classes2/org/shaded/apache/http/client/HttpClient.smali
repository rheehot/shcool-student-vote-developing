.class public interface abstract Lorg/shaded/apache/http/client/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# virtual methods
.method public abstract execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/HttpHost;",
            "Lorg/shaded/apache/http/HttpRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/HttpHost;",
            "Lorg/shaded/apache/http/HttpRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/client/methods/HttpUriRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/client/methods/HttpUriRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation
.end method

.method public abstract getConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;
.end method

.method public abstract getParams()Lorg/shaded/apache/http/params/HttpParams;
.end method
