.class public Lorg/shaded/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965DiscardAttributeHandler.java"

# interfaces
.implements Lorg/shaded/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public match(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lorg/shaded/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/shaded/apache/http/cookie/CookieOrigin;

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/shaded/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Lorg/shaded/apache/http/cookie/SetCookie;
    .param p2, "commenturl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 53
    instance-of v1, p1, Lorg/shaded/apache/http/cookie/SetCookie2;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 54
    check-cast v0, Lorg/shaded/apache/http/cookie/SetCookie2;

    .line 55
    .local v0, "cookie2":Lorg/shaded/apache/http/cookie/SetCookie2;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/shaded/apache/http/cookie/SetCookie2;->setDiscard(Z)V

    .line 57
    .end local v0    # "cookie2":Lorg/shaded/apache/http/cookie/SetCookie2;
    :cond_0
    return-void
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
    .line 61
    return-void
.end method
