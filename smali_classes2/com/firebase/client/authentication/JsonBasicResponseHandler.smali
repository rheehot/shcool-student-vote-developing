.class Lcom/firebase/client/authentication/JsonBasicResponseHandler;
.super Ljava/lang/Object;
.source "JsonBasicResponseHandler.java"

# interfaces
.implements Lorg/shaded/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/shaded/apache/http/client/ResponseHandler",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/firebase/client/authentication/JsonBasicResponseHandler;->handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/util/Map;
    .locals 4
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-object v2

    .line 20
    :cond_1
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v0

    .line 21
    .local v0, "entity":Lorg/shaded/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 24
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    new-instance v3, Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;

    invoke-direct {v3, p0}, Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;-><init>(Lcom/firebase/client/authentication/JsonBasicResponseHandler;)V

    invoke-virtual {v2, v1, v3}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method
