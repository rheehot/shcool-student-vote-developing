.class public Lorg/shaded/apache/http/impl/auth/DigestSchemeFactory;
.super Ljava/lang/Object;
.source "DigestSchemeFactory.java"

# interfaces
.implements Lorg/shaded/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/auth/AuthScheme;
    .locals 1
    .param p1, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 46
    new-instance v0, Lorg/shaded/apache/http/impl/auth/DigestScheme;

    invoke-direct {v0}, Lorg/shaded/apache/http/impl/auth/DigestScheme;-><init>()V

    return-object v0
.end method
