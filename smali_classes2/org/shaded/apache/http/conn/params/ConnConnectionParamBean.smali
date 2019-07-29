.class public Lorg/shaded/apache/http/conn/params/ConnConnectionParamBean;
.super Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.source "ConnConnectionParamBean.java"


# annotations
.annotation build Lorg/shaded/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 47
    return-void
.end method


# virtual methods
.method public setMaxStatusLineGarbage(I)V
    .locals 2
    .param p1, "maxStatusLineGarbage"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/shaded/apache/http/conn/params/ConnConnectionParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    const-string v1, "http.connection.max-status-line-garbage"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/shaded/apache/http/params/HttpParams;

    .line 54
    return-void
.end method
