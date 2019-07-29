.class public Lorg/shaded/apache/http/params/HttpProtocolParamBean;
.super Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.source "HttpProtocolParamBean.java"


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
.method public setContentCharset(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentCharset"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/shaded/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .locals 1
    .param p1, "httpElementCharset"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/shaded/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setUseExpectContinue(Z)V
    .locals 1
    .param p1, "useExpectContinue"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/shaded/apache/http/params/HttpParams;Z)V

    .line 67
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/shaded/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setVersion(Lorg/shaded/apache/http/HttpVersion;)V
    .locals 1
    .param p1, "version"    # Lorg/shaded/apache/http/HttpVersion;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setVersion(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/ProtocolVersion;)V

    .line 59
    return-void
.end method
