.class public Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "AndroidJsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/google/api/client/json/JsonEncoding;)Lcom/google/api/client/json/JsonGenerator;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/google/api/client/json/JsonEncoding;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Ljava/nio/charset/Charset;

    .prologue
    .line 80
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 85
    new-instance v0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;-><init>(Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;Landroid/util/JsonWriter;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 53
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 58
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 68
    new-instance v0, Lcom/google/api/client/extensions/android3/json/AndroidJsonParser;

    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/extensions/android3/json/AndroidJsonParser;-><init>(Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;Landroid/util/JsonReader;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method
