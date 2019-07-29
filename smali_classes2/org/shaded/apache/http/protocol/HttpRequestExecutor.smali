.class public Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method protected canResponseHaveBody(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;)Z
    .locals 4
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/shaded/apache/http/HttpResponse;

    .prologue
    const/4 v1, 0x0

    .line 86
    const-string v2, "HEAD"

    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 90
    .local v0, "status":I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_0

    const/16 v2, 0x130

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected doReceiveResponse(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpClientConnection;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/shaded/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_0
    if-nez p2, :cond_1

    .line 281
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP connection may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_1
    if-nez p3, :cond_2

    .line 284
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP context may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_2
    const/4 v0, 0x0

    .line 288
    .local v0, "response":Lorg/shaded/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 290
    .local v1, "statuscode":I
    :goto_0
    if-eqz v0, :cond_3

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_5

    .line 292
    :cond_3
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/shaded/apache/http/HttpResponse;

    move-result-object v0

    .line 293
    invoke-virtual {p0, p1, v0}, Lorg/shaded/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/shaded/apache/http/HttpResponse;)V

    .line 296
    :cond_4
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    goto :goto_0

    .line 300
    :cond_5
    return-object v0
.end method

.method protected doSendRequest(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpClientConnection;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 8
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/shaded/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP request may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_0
    if-nez p2, :cond_1

    .line 202
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP connection may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_1
    if-nez p3, :cond_2

    .line 205
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP context may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :cond_2
    const/4 v0, 0x0

    .line 210
    .local v0, "response":Lorg/shaded/apache/http/HttpResponse;
    const-string v5, "http.connection"

    invoke-interface {p3, v5, p2}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v5, "http.request_sent"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v5, v6}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-interface {p2, p1}, Lorg/shaded/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/shaded/apache/http/HttpRequest;)V

    .line 214
    instance-of v5, p1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    if-eqz v5, :cond_6

    .line 218
    const/4 v1, 0x1

    .line 219
    .local v1, "sendentity":Z
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v4

    .local v4, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    move-object v5, p1

    .line 221
    check-cast v5, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v5}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 224
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpClientConnection;->flush()V

    .line 227
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.protocol.wait-for-continue"

    const/16 v7, 0x7d0

    invoke-interface {v5, v6, v7}, Lorg/shaded/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    .line 230
    .local v3, "tms":I
    invoke-interface {p2, v3}, Lorg/shaded/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 231
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/shaded/apache/http/HttpResponse;

    move-result-object v0

    .line 232
    invoke-virtual {p0, p1, v0}, Lorg/shaded/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/shaded/apache/http/HttpResponse;)V

    .line 235
    :cond_3
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 236
    .local v2, "status":I
    const/16 v5, 0xc8

    if-ge v2, v5, :cond_7

    .line 237
    const/16 v5, 0x64

    if-eq v2, v5, :cond_4

    .line 238
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unexpected response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 242
    :cond_4
    const/4 v0, 0x0

    .line 248
    .end local v2    # "status":I
    .end local v3    # "tms":I
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 249
    check-cast p1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/shaded/apache/http/HttpRequest;
    invoke-interface {p2, p1}, Lorg/shaded/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V

    .line 252
    .end local v1    # "sendentity":Z
    .end local v4    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_6
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpClientConnection;->flush()V

    .line 253
    const-string v5, "http.request_sent"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v5, v6}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    return-object v0

    .line 244
    .restart local v1    # "sendentity":Z
    .restart local v2    # "status":I
    .restart local v3    # "tms":I
    .restart local v4    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    .restart local p1    # "request":Lorg/shaded/apache/http/HttpRequest;
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public execute(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpClientConnection;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/shaded/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    if-nez p2, :cond_1

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Client connection may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    if-nez p3, :cond_2

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP context may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/shaded/apache/http/protocol/HttpRequestExecutor;->doSendRequest(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpClientConnection;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v1

    .line 125
    .local v1, "response":Lorg/shaded/apache/http/HttpResponse;
    if-nez v1, :cond_3

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lorg/shaded/apache/http/protocol/HttpRequestExecutor;->doReceiveResponse(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpClientConnection;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 128
    :cond_3
    return-object v1

    .line 129
    .end local v1    # "response":Lorg/shaded/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/io/IOException;
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpClientConnection;->close()V

    .line 131
    throw v0

    .line 132
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "ex":Lorg/shaded/apache/http/HttpException;
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpClientConnection;->close()V

    .line 134
    throw v0

    .line 135
    .end local v0    # "ex":Lorg/shaded/apache/http/HttpException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-interface {p2}, Lorg/shaded/apache/http/HttpClientConnection;->close()V

    .line 137
    throw v0
.end method

.method public postProcess(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .param p2, "processor"    # Lorg/shaded/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    if-nez p2, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    if-nez p3, :cond_2

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
    const-string v0, "http.response"

    invoke-interface {p3, v0, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    invoke-interface {p2, p1, p3}, Lorg/shaded/apache/http/protocol/HttpProcessor;->process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 337
    return-void
.end method

.method public preProcess(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "processor"    # Lorg/shaded/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    if-nez p2, :cond_1

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    if-nez p3, :cond_2

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    const-string v0, "http.request"

    invoke-interface {p3, v0, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-interface {p2, p1, p3}, Lorg/shaded/apache/http/protocol/HttpProcessor;->process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 169
    return-void
.end method
