.class public interface abstract Lorg/shaded/apache/http/cookie/CookieSpec;
.super Ljava/lang/Object;
.source "CookieSpec.java"


# virtual methods
.method public abstract formatCookies(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/shaded/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/shaded/apache/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract getVersionHeader()Lorg/shaded/apache/http/Header;
.end method

.method public abstract match(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)Z
.end method

.method public abstract parse(Lorg/shaded/apache/http/Header;Lorg/shaded/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/Header;",
            "Lorg/shaded/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/shaded/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/cookie/MalformedCookieException;
        }
    .end annotation
.end method

.method public abstract validate(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/cookie/MalformedCookieException;
        }
    .end annotation
.end method
