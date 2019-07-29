.class public interface abstract Lorg/shaded/apache/http/client/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# virtual methods
.method public abstract addCookie(Lorg/shaded/apache/http/cookie/Cookie;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearExpired(Ljava/util/Date;)Z
.end method

.method public abstract getCookies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/shaded/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end method
