.class public Lorg/shaded/apache/http/message/BasicHttpEntityEnclosingRequest;
.super Lorg/shaded/apache/http/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lorg/shaded/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/shaded/apache/http/ProtocolVersion;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/shaded/apache/http/ProtocolVersion;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/shaded/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/shaded/apache/http/ProtocolVersion;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/RequestLine;)V
    .locals 0
    .param p1, "requestline"    # Lorg/shaded/apache/http/RequestLine;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/message/BasicHttpRequest;-><init>(Lorg/shaded/apache/http/RequestLine;)V

    .line 64
    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 3

    .prologue
    .line 75
    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lorg/shaded/apache/http/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v0

    .line 76
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
    .line 67
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpEntityEnclosingRequest;->entity:Lorg/shaded/apache/http/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lorg/shaded/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/shaded/apache/http/HttpEntity;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHttpEntityEnclosingRequest;->entity:Lorg/shaded/apache/http/HttpEntity;

    .line 72
    return-void
.end method
