.class public abstract Lorg/shaded/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.super Ljava/lang/Object;
.source "AbstractCookieAttributeHandler.java"

# interfaces
.implements Lorg/shaded/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lorg/shaded/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/shaded/apache/http/cookie/CookieOrigin;

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public validate(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .param p1, "cookie"    # Lorg/shaded/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/shaded/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method
