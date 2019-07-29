.class public Lorg/shaded/apache/http/params/HttpConnectionParamBean;
.super Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.source "HttpConnectionParamBean.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 45
    return-void
.end method


# virtual methods
.method public setConnectionTimeout(I)V
    .locals 1
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpConnectionParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/shaded/apache/http/params/HttpParams;I)V

    .line 65
    return-void
.end method

.method public setLinger(I)V
    .locals 1
    .param p1, "linger"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpConnectionParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setLinger(Lorg/shaded/apache/http/params/HttpParams;I)V

    .line 61
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "soTimeout"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpConnectionParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/shaded/apache/http/params/HttpParams;I)V

    .line 49
    return-void
.end method

.method public setSocketBufferSize(I)V
    .locals 1
    .param p1, "socketBufferSize"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpConnectionParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/shaded/apache/http/params/HttpParams;I)V

    .line 57
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .locals 1
    .param p1, "staleCheckingEnabled"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpConnectionParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/shaded/apache/http/params/HttpParams;Z)V

    .line 69
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpConnectionParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/shaded/apache/http/params/HttpParams;Z)V

    .line 53
    return-void
.end method
