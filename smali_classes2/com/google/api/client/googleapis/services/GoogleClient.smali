.class public Lcom/google/api/client/googleapis/services/GoogleClient;
.super Lcom/google/api/client/http/json/JsonHttpClient;
.source "GoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/services/GoogleClient$Builder;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonHttpRequestInitializer"    # Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .param p3, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .param p4, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p5, "jsonObjectParser"    # Lcom/google/api/client/json/JsonObjectParser;
    .param p6, "baseUrl"    # Ljava/lang/String;
    .param p7, "applicationName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    invoke-direct/range {p0 .. p7}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonHttpRequestInitializer"    # Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .param p3, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .param p4, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p5, "jsonObjectParser"    # Lcom/google/api/client/json/JsonObjectParser;
    .param p6, "rootUrl"    # Ljava/lang/String;
    .param p7, "servicePath"    # Ljava/lang/String;
    .param p8, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct/range {p0 .. p8}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "baseUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 0
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "rootUrl"    # Ljava/lang/String;
    .param p4, "servicePath"    # Ljava/lang/String;
    .param p5, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 84
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 85
    return-void
.end method


# virtual methods
.method public batch()Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/services/GoogleClient;->batch(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public batch(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 5
    .param p1, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 215
    new-instance v1, Lcom/google/api/client/googleapis/batch/BatchRequest;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/api/client/googleapis/batch/BatchRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 218
    .local v1, "batch":Lcom/google/api/client/googleapis/batch/BatchRequest;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->isBaseUrlUsed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "baseUrl":Lcom/google/api/client/http/GenericUrl;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "batch"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/GenericUrl;->setPathParts(Ljava/util/List;)V

    .line 224
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/batch/BatchRequest;->setBatchUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 225
    return-object v1

    .line 222
    .end local v0    # "baseUrl":Lcom/google/api/client/http/GenericUrl;
    :cond_0
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->getRootUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "batch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .restart local v0    # "baseUrl":Lcom/google/api/client/http/GenericUrl;
    goto :goto_0
.end method

.method protected buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .param p1, "method"    # Lcom/google/api/client/http/HttpMethod;
    .param p2, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 169
    .local v0, "httpRequest":Lcom/google/api/client/http/HttpRequest;
    new-instance v1, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v1}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 172
    return-object v0
.end method

.method protected executeUnparsed(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .param p1, "method"    # Lcom/google/api/client/http/HttpMethod;
    .param p2, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/googleapis/services/GoogleClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 232
    .local v0, "request":Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/services/GoogleClient;->executeUnparsed(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method protected executeUnparsed(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->execute(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
