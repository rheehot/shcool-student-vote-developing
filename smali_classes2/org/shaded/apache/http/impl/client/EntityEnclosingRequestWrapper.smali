.class public Lorg/shaded/apache/http/impl/client/EntityEnclosingRequestWrapper;
.super Lorg/shaded/apache/http/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation build Lorg/shaded/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private entity:Lorg/shaded/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/shaded/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/impl/client/RequestWrapper;-><init>(Lorg/shaded/apache/http/HttpRequest;)V

    .line 58
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/shaded/apache/http/HttpEntity;

    .line 59
    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 3

    .prologue
    .line 70
    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lorg/shaded/apache/http/impl/client/EntityEnclosingRequestWrapper;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v0

    .line 71
    .local v0, "expect":Lorg/shaded/apache/http/Header;
    if-eqz v0, :cond_0

    const-string v1, "100-Continue"

    invoke-interface {v0}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntity()Lorg/shaded/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/shaded/apache/http/HttpEntity;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/shaded/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/shaded/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEntity(Lorg/shaded/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/shaded/apache/http/HttpEntity;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/shaded/apache/http/HttpEntity;

    .line 67
    return-void
.end method
