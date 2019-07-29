.class public interface abstract Lorg/shaded/apache/http/cookie/CookieAttributeHandler;
.super Ljava/lang/Object;
.source "CookieAttributeHandler.java"


# virtual methods
.method public abstract match(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)Z
.end method

.method public abstract parse(Lorg/shaded/apache/http/cookie/SetCookie;Ljava/lang/String;)V
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
