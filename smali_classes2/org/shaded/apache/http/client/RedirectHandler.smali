.class public interface abstract Lorg/shaded/apache/http/client/RedirectHandler;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# virtual methods
.method public abstract getLocationURI(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ProtocolException;
        }
    .end annotation
.end method

.method public abstract isRedirectRequested(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Z
.end method
