.class public Lorg/shaded/apache/http/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# instance fields
.field private connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

.field private expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

.field private handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

.field private params:Lorg/shaded/apache/http/params/HttpParams;

.field private processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

.field private responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/HttpResponseFactory;)V
    .locals 1
    .param p1, "proc"    # Lorg/shaded/apache/http/protocol/HttpProcessor;
    .param p2, "connStrategy"    # Lorg/shaded/apache/http/ConnectionReuseStrategy;
    .param p3, "responseFactory"    # Lorg/shaded/apache/http/HttpResponseFactory;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    .line 80
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    .line 81
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    .line 82
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    .line 83
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    .line 84
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

    .line 98
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/protocol/HttpService;->setHttpProcessor(Lorg/shaded/apache/http/protocol/HttpProcessor;)V

    .line 99
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/protocol/HttpService;->setConnReuseStrategy(Lorg/shaded/apache/http/ConnectionReuseStrategy;)V

    .line 100
    invoke-virtual {p0, p3}, Lorg/shaded/apache/http/protocol/HttpService;->setResponseFactory(Lorg/shaded/apache/http/HttpResponseFactory;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected doService(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "handler":Lorg/shaded/apache/http/protocol/HttpRequestHandler;
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    if-eqz v2, :cond_0

    .line 289
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/shaded/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "requestURI":Ljava/lang/String;
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    invoke-interface {v2, v1}, Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/shaded/apache/http/protocol/HttpRequestHandler;

    move-result-object v0

    .line 292
    .end local v1    # "requestURI":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v0, p1, p2, p3}, Lorg/shaded/apache/http/protocol/HttpRequestHandler;->handle(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    const/16 v2, 0x1f5

    invoke-interface {p2, v2}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public getParams()Lorg/shaded/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lorg/shaded/apache/http/HttpException;Lorg/shaded/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "ex"    # Lorg/shaded/apache/http/HttpException;
    .param p2, "response"    # Lorg/shaded/apache/http/HttpResponse;

    .prologue
    .line 251
    instance-of v2, p1, Lorg/shaded/apache/http/MethodNotSupportedException;

    if-eqz v2, :cond_0

    .line 252
    const/16 v2, 0x1f5

    invoke-interface {p2, v2}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    .line 260
    :goto_0
    invoke-virtual {p1}, Lorg/shaded/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/shaded/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 261
    .local v1, "msg":[B
    new-instance v0, Lorg/shaded/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 262
    .local v0, "entity":Lorg/shaded/apache/http/entity/ByteArrayEntity;
    const-string v2, "text/plain; charset=US-ASCII"

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 263
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpResponse;->setEntity(Lorg/shaded/apache/http/HttpEntity;)V

    .line 264
    return-void

    .line 253
    .end local v0    # "entity":Lorg/shaded/apache/http/entity/ByteArrayEntity;
    .end local v1    # "msg":[B
    :cond_0
    instance-of v2, p1, Lorg/shaded/apache/http/UnsupportedHttpVersionException;

    if-eqz v2, :cond_1

    .line 254
    const/16 v2, 0x1f9

    invoke-interface {p2, v2}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 255
    :cond_1
    instance-of v2, p1, Lorg/shaded/apache/http/ProtocolException;

    if-eqz v2, :cond_2

    .line 256
    const/16 v2, 0x190

    invoke-interface {p2, v2}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 258
    :cond_2
    const/16 v2, 0x1f4

    invoke-interface {p2, v2}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public handleRequest(Lorg/shaded/apache/http/HttpServerConnection;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 11
    .param p1, "conn"    # Lorg/shaded/apache/http/HttpServerConnection;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1f4

    const/16 v9, 0xc8

    .line 154
    const-string v6, "http.connection"

    invoke-interface {p2, v6, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const/4 v4, 0x0

    .line 160
    .local v4, "response":Lorg/shaded/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->receiveRequestHeader()Lorg/shaded/apache/http/HttpRequest;

    move-result-object v3

    .line 161
    .local v3, "request":Lorg/shaded/apache/http/HttpRequest;
    new-instance v6, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v3}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v3, v6}, Lorg/shaded/apache/http/HttpRequest;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 164
    invoke-interface {v3}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v5

    .line 166
    .local v5, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    sget-object v6, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_1:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v5, v6}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    sget-object v5, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_1:Lorg/shaded/apache/http/HttpVersion;

    .line 171
    :cond_0
    instance-of v6, v3, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    if-eqz v6, :cond_2

    .line 173
    move-object v0, v3

    check-cast v0, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    move-object v6, v0

    invoke-interface {v6}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    const/16 v7, 0x64

    invoke-interface {v6, v5, v7, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v4

    .line 176
    new-instance v6, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 179
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    .line 181
    :try_start_1
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

    invoke-interface {v6, v3, v4, p2}, Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;->verify(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v4}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ge v6, v9, :cond_2

    .line 193
    invoke-interface {p1, v4}, Lorg/shaded/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/shaded/apache/http/HttpResponse;)V

    .line 194
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->flush()V

    .line 195
    const/4 v4, 0x0

    .line 196
    move-object v0, v3

    check-cast v0, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    move-object v6, v0

    invoke-interface {p1, v6}, Lorg/shaded/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V

    .line 203
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 204
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    const/16 v7, 0xc8

    invoke-interface {v6, v5, v7, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v4

    .line 205
    new-instance v6, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 208
    const-string v6, "http.request"

    invoke-interface {p2, v6, v3}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v6, "http.response"

    invoke-interface {p2, v6, v4}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    invoke-interface {v6, v3, p2}, Lorg/shaded/apache/http/protocol/HttpProcessor;->process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 212
    invoke-virtual {p0, v3, v4, p2}, Lorg/shaded/apache/http/protocol/HttpService;->doService(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 216
    :cond_3
    instance-of v6, v3, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    if-eqz v6, :cond_4

    .line 217
    check-cast v3, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    .end local v3    # "request":Lorg/shaded/apache/http/HttpRequest;
    invoke-interface {v3}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v1

    .line 218
    .local v1, "entity":Lorg/shaded/apache/http/HttpEntity;
    if-eqz v1, :cond_4

    .line 219
    invoke-interface {v1}, Lorg/shaded/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    .end local v1    # "entity":Lorg/shaded/apache/http/HttpEntity;
    .end local v5    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    invoke-interface {v6, v4, p2}, Lorg/shaded/apache/http/protocol/HttpProcessor;->process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 233
    invoke-interface {p1, v4}, Lorg/shaded/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/shaded/apache/http/HttpResponse;)V

    .line 234
    invoke-interface {p1, v4}, Lorg/shaded/apache/http/HttpServerConnection;->sendResponseEntity(Lorg/shaded/apache/http/HttpResponse;)V

    .line 235
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->flush()V

    .line 237
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    invoke-interface {v6, v4, p2}, Lorg/shaded/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 238
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->close()V

    .line 240
    :cond_5
    return-void

    .line 182
    .restart local v3    # "request":Lorg/shaded/apache/http/HttpRequest;
    .restart local v5    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :catch_0
    move-exception v2

    .line 183
    .local v2, "ex":Lorg/shaded/apache/http/HttpException;
    :try_start_3
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    sget-object v7, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    const/16 v8, 0x1f4

    invoke-interface {v6, v7, v8, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v4

    .line 185
    new-instance v6, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 187
    invoke-virtual {p0, v2, v4}, Lorg/shaded/apache/http/protocol/HttpService;->handleException(Lorg/shaded/apache/http/HttpException;Lorg/shaded/apache/http/HttpResponse;)V
    :try_end_3
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 223
    .end local v2    # "ex":Lorg/shaded/apache/http/HttpException;
    .end local v3    # "request":Lorg/shaded/apache/http/HttpRequest;
    .end local v5    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :catch_1
    move-exception v2

    .line 224
    .restart local v2    # "ex":Lorg/shaded/apache/http/HttpException;
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    sget-object v7, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-interface {v6, v7, v10, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v4

    .line 227
    new-instance v6, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 229
    invoke-virtual {p0, v2, v4}, Lorg/shaded/apache/http/protocol/HttpService;->handleException(Lorg/shaded/apache/http/HttpException;Lorg/shaded/apache/http/HttpResponse;)V

    goto :goto_2

    .line 199
    .end local v2    # "ex":Lorg/shaded/apache/http/HttpException;
    .restart local v3    # "request":Lorg/shaded/apache/http/HttpRequest;
    .restart local v5    # "ver":Lorg/shaded/apache/http/ProtocolVersion;
    :cond_6
    :try_start_4
    move-object v0, v3

    check-cast v0, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    move-object v6, v0

    invoke-interface {p1, v6}, Lorg/shaded/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_4
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method public setConnReuseStrategy(Lorg/shaded/apache/http/ConnectionReuseStrategy;)V
    .locals 2
    .param p1, "connStrategy"    # Lorg/shaded/apache/http/ConnectionReuseStrategy;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    .line 115
    return-void
.end method

.method public setExpectationVerifier(Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;)V
    .locals 0
    .param p1, "expectationVerifier"    # Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

    .line 130
    return-void
.end method

.method public setHandlerResolver(Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;)V
    .locals 0
    .param p1, "handlerResolver"    # Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    .line 126
    return-void
.end method

.method public setHttpProcessor(Lorg/shaded/apache/http/protocol/HttpProcessor;)V
    .locals 2
    .param p1, "processor"    # Lorg/shaded/apache/http/protocol/HttpProcessor;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    .line 108
    return-void
.end method

.method public setParams(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    .line 138
    return-void
.end method

.method public setResponseFactory(Lorg/shaded/apache/http/HttpResponseFactory;)V
    .locals 2
    .param p1, "responseFactory"    # Lorg/shaded/apache/http/HttpResponseFactory;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    .line 122
    return-void
.end method
