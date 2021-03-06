.class public final Lorg/shaded/apache/http/params/DefaultedHttpParams;
.super Lorg/shaded/apache/http/params/AbstractHttpParams;
.source "DefaultedHttpParams.java"


# instance fields
.field private final defaults:Lorg/shaded/apache/http/params/HttpParams;

.field private final local:Lorg/shaded/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "local"    # Lorg/shaded/apache/http/params/HttpParams;
    .param p2, "defaults"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/shaded/apache/http/params/AbstractHttpParams;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->local:Lorg/shaded/apache/http/params/HttpParams;

    .line 58
    iput-object p2, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->defaults:Lorg/shaded/apache/http/params/HttpParams;

    .line 59
    return-void
.end method


# virtual methods
.method public copy()Lorg/shaded/apache/http/params/HttpParams;
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->local:Lorg/shaded/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/shaded/apache/http/params/HttpParams;->copy()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v0

    .line 66
    .local v0, "clone":Lorg/shaded/apache/http/params/HttpParams;
    new-instance v1, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    iget-object v2, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->defaults:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public getDefaults()Lorg/shaded/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->defaults:Lorg/shaded/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->local:Lorg/shaded/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->defaults:Lorg/shaded/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->defaults:Lorg/shaded/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->local:Lorg/shaded/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/shaded/apache/http/params/DefaultedHttpParams;->local:Lorg/shaded/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lorg/shaded/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
