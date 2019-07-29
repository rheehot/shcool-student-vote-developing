.class public Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpResponseFactory;


# instance fields
.field protected final reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/shaded/apache/http/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lorg/shaded/apache/http/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;-><init>(Lorg/shaded/apache/http/ReasonPhraseCatalog;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/ReasonPhraseCatalog;)V
    .locals 2
    .param p1, "catalog"    # Lorg/shaded/apache/http/ReasonPhraseCatalog;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reason phrase catalog must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    .line 71
    return-void
.end method


# virtual methods
.method protected determineLocale(Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Locale;
    .locals 1
    .param p1, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 5
    .param p1, "ver"    # Lorg/shaded/apache/http/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP version may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_0
    invoke-virtual {p0, p3}, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->determineLocale(Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object v0

    .line 90
    .local v0, "loc":Ljava/util/Locale;
    iget-object v3, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    invoke-interface {v3, p2, v0}, Lorg/shaded/apache/http/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Lorg/shaded/apache/http/message/BasicStatusLine;

    invoke-direct {v2, p1, p2, v1}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 92
    .local v2, "statusline":Lorg/shaded/apache/http/StatusLine;
    new-instance v3, Lorg/shaded/apache/http/message/BasicHttpResponse;

    iget-object v4, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    invoke-direct {v3, v2, v4, v0}, Lorg/shaded/apache/http/message/BasicHttpResponse;-><init>(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v3
.end method

.method public newHttpResponse(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 3
    .param p1, "statusline"    # Lorg/shaded/apache/http/StatusLine;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Status line may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->determineLocale(Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object v0

    .line 103
    .local v0, "loc":Ljava/util/Locale;
    new-instance v1, Lorg/shaded/apache/http/message/BasicHttpResponse;

    iget-object v2, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    invoke-direct {v1, p1, v2, v0}, Lorg/shaded/apache/http/message/BasicHttpResponse;-><init>(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v1
.end method
