.class public final Lorg/shaded/apache/http/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lorg/shaded/apache/http/protocol/HttpContext;


# instance fields
.field private final defaults:Lorg/shaded/apache/http/protocol/HttpContext;

.field private final local:Lorg/shaded/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/protocol/HttpContext;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "local"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .param p2, "defaults"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;->local:Lorg/shaded/apache/http/protocol/HttpContext;

    .line 56
    iput-object p2, p0, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/shaded/apache/http/protocol/HttpContext;

    .line 57
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v1, p0, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;->local:Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 62
    iget-object v1, p0, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getDefaults()Lorg/shaded/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/shaded/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;->local:Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;->local:Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method
