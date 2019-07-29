.class public interface abstract Lorg/shaded/apache/http/client/methods/HttpUriRequest;
.super Ljava/lang/Object;
.source "HttpUriRequest.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequest;


# virtual methods
.method public abstract abort()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getURI()Ljava/net/URI;
.end method

.method public abstract isAborted()Z
.end method
