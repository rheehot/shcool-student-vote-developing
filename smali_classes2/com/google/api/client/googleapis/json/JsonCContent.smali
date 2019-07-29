.class public final Lcom/google/api/client/googleapis/json/JsonCContent;
.super Lcom/google/api/client/http/json/JsonHttpContent;
.source "JsonCContent.java"


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V
    .locals 0
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/json/JsonCContent;
    .locals 0
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/api/client/http/json/JsonHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/json/JsonHttpContent;

    .line 77
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/json/JsonCContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/json/JsonCContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/json/JsonHttpContent;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/json/JsonCContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/googleapis/json/JsonCContent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/JsonCContent;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/JsonCContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    .line 67
    .local v0, "generator":Lcom/google/api/client/json/JsonGenerator;
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->writeStartObject()V

    .line 68
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/JsonCContent;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->writeEndObject()V

    .line 71
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->flush()V

    .line 72
    return-void
.end method
