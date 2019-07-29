.class public interface abstract Lorg/shaded/apache/http/client/AuthenticationHandler;
.super Ljava/lang/Object;
.source "AuthenticationHandler.java"


# virtual methods
.method public abstract getChallenges(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/HttpResponse;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/shaded/apache/http/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public abstract isAuthenticationRequested(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Z
.end method

.method public abstract selectScheme(Ljava/util/Map;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/auth/AuthScheme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/shaded/apache/http/Header;",
            ">;",
            "Lorg/shaded/apache/http/HttpResponse;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")",
            "Lorg/shaded/apache/http/auth/AuthScheme;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/auth/AuthenticationException;
        }
    .end annotation
.end method
