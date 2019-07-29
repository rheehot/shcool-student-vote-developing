.class public interface abstract Lorg/shaded/apache/http/client/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
