.class public abstract Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.super Ljava/lang/Object;
.source "HttpAbstractParamBean.java"


# instance fields
.field protected final params:Lorg/shaded/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/params/HttpAbstractParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    .line 45
    return-void
.end method
