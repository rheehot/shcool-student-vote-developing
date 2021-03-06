.class public Lorg/shaded/apache/http/message/BasicHttpRequest;
.super Lorg/shaded/apache/http/message/AbstractHttpMessage;
.source "BasicHttpRequest.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequest;


# instance fields
.field private final method:Ljava/lang/String;

.field private requestline:Lorg/shaded/apache/http/RequestLine;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/shaded/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-nez p2, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request URI may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->uri:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->requestline:Lorg/shaded/apache/http/RequestLine;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/shaded/apache/http/ProtocolVersion;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/shaded/apache/http/ProtocolVersion;

    .prologue
    .line 91
    new-instance v0, Lorg/shaded/apache/http/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/shaded/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/shaded/apache/http/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lorg/shaded/apache/http/message/BasicHttpRequest;-><init>(Lorg/shaded/apache/http/RequestLine;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/RequestLine;)V
    .locals 2
    .param p1, "requestline"    # Lorg/shaded/apache/http/RequestLine;

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/shaded/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->requestline:Lorg/shaded/apache/http/RequestLine;

    .line 105
    invoke-interface {p1}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    .line 106
    invoke-interface {p1}, Lorg/shaded/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->uri:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/shaded/apache/http/message/BasicHttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lorg/shaded/apache/http/RequestLine;
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->requestline:Lorg/shaded/apache/http/RequestLine;

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/shaded/apache/http/message/BasicHttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->getVersion(Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v0

    .line 131
    .local v0, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    new-instance v1, Lorg/shaded/apache/http/message/BasicRequestLine;

    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->uri:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/shaded/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/shaded/apache/http/ProtocolVersion;)V

    iput-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->requestline:Lorg/shaded/apache/http/RequestLine;

    .line 133
    .end local v0    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_0
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpRequest;->requestline:Lorg/shaded/apache/http/RequestLine;

    return-object v1
.end method
