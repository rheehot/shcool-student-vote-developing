.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/HttpRequest$1;
    }
.end annotation


# static fields
.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-HTTP-Java-Client/1.10.3-beta (gzip)"

.field public static final VERSION:Ljava/lang/String; = "1.10.3-beta"


# instance fields
.field private allowEmptyContent:Z

.field private backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

.field private connectTimeout:I

.field private content:Lcom/google/api/client/http/HttpContent;

.field private contentLoggingLimit:I

.field private final contentTypeToParserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpParser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private enableGZipContent:Z

.field private followRedirects:Z

.field private headers:Lcom/google/api/client/http/HttpHeaders;

.field private interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private loggingEnabled:Z

.field private method:Lcom/google/api/client/http/HttpMethod;

.field private numRetries:I

.field private objectParser:Lcom/google/api/client/util/ObjectParser;

.field private readTimeout:I

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private retryOnExecuteIOException:Z

.field private throwExceptionOnExecuteError:Z

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private url:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpMethod;)V
    .locals 3
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "method"    # Lcom/google/api/client/http/HttpMethod;

    .prologue
    const/16 v2, 0x4e20

    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 84
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 91
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->allowEmptyContent:Z

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 125
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 128
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 143
    iput v2, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 149
    iput v2, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    .line 168
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 174
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 187
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 188
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 189
    return-void
.end method

.method private handleRedirect(Lcom/google/api/client/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 990
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "redirectLocation":Ljava/lang/String;
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 995
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_0

    .line 996
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;

    .line 998
    :cond_0
    return-void
.end method

.method private isRedirected(Lcom/google/api/client/http/HttpResponse;)Z
    .locals 3
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    const/4 v1, 0x0

    .line 1004
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 1005
    .local v0, "statusCode":I
    packed-switch v0, :pswitch_data_0

    .line 1013
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1011
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1045
    if-nez p0, :cond_1

    .line 1046
    const/4 p0, 0x0

    .line 1049
    .end local p0    # "mediaType":Ljava/lang/String;
    .local v0, "semicolon":I
    :cond_0
    :goto_0
    return-object p0

    .line 1048
    .end local v0    # "semicolon":I
    .restart local p0    # "mediaType":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1049
    .restart local v0    # "semicolon":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 1026
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addParser(Lcom/google/api/client/http/HttpParser;)V
    .locals 2
    .param p1, "parser"    # Lcom/google/api/client/http/HttpParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    invoke-interface {p1}, Lcom/google/api/client/http/HttpParser;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void
.end method

.method public execute()Lcom/google/api/client/http/HttpResponse;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    const/16 v29, 0x0

    .line 773
    .local v29, "retrySupported":Z
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    if-ltz v10, :cond_13

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v28, v0

    .line 775
    .local v28, "retriesRemaining":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    if-eqz v10, :cond_0

    .line 777
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-interface {v10}, Lcom/google/api/client/http/BackOffPolicy;->reset()V

    .line 779
    :cond_0
    const/16 v24, 0x0

    .line 782
    .local v24, "response":Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_1
    if-eqz v24, :cond_2

    .line 788
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 791
    :cond_2
    const/16 v24, 0x0

    .line 792
    const/16 v16, 0x0

    .line 795
    .local v16, "executeException":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v10, :cond_3

    .line 796
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 799
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v10}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v30

    .line 801
    .local v30, "urlString":Ljava/lang/String;
    sget-object v10, Lcom/google/api/client/http/HttpRequest$1;->$SwitchMap$com$google$api$client$http$HttpMethod:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v31

    aget v10, v10, v31

    packed-switch v10, :pswitch_data_0

    .line 806
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .line 825
    .local v20, "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_1
    sget-object v19, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 826
    .local v19, "logger":Ljava/util/logging/Logger;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    if-eqz v10, :cond_14

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/16 v18, 0x1

    .line 827
    .local v18, "loggable":Z
    :goto_2
    const/16 v17, 0x0

    .line 829
    .local v17, "logbuf":Ljava/lang/StringBuilder;
    if-eqz v18, :cond_4

    .line 830
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17    # "logbuf":Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .restart local v17    # "logbuf":Ljava/lang/StringBuilder;
    const-string v10, "-------------- REQUEST  --------------"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v31, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v31, 0x20

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v31, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v22

    .line 836
    .local v22, "originalUserAgent":Ljava/lang/String;
    if-nez v22, :cond_15

    .line 837
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v31, "Google-HTTP-Java-Client/1.10.3-beta (gzip)"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 842
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v10, v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 848
    .local v4, "content":Lcom/google/api/client/http/HttpContent;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpRequest;->isAllowEmptyContent()Z

    move-result v10

    if-nez v10, :cond_22

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    sget-object v31, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v31

    if-eq v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    sget-object v31, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v31

    if-eq v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    sget-object v31, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    move-object/from16 v0, v31

    if-ne v10, v0, :cond_22

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v10, v32, v34

    if-nez v10, :cond_22

    .line 851
    :cond_6
    const/4 v10, 0x0

    const-string v31, " "

    move-object/from16 v0, v31

    invoke-static {v10, v0}, Lcom/google/api/client/http/ByteArrayContent;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object v4

    move-object v5, v4

    .line 853
    .end local v4    # "content":Lcom/google/api/client/http/HttpContent;
    .local v5, "content":Lcom/google/api/client/http/HttpContent;
    :goto_4
    if-eqz v5, :cond_21

    .line 854
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 855
    .local v7, "contentEncoding":Ljava/lang/String;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    .line 856
    .local v8, "contentLength":J
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 858
    .local v6, "contentType":Ljava/lang/String;
    if-eqz v18, :cond_20

    .line 859
    new-instance v4, Lcom/google/api/client/http/LogContent;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    invoke-direct/range {v4 .. v10}, Lcom/google/api/client/http/LogContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 863
    .end local v5    # "content":Lcom/google/api/client/http/HttpContent;
    .restart local v4    # "content":Lcom/google/api/client/http/HttpContent;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    if-eqz v10, :cond_7

    .line 864
    new-instance v5, Lcom/google/api/client/http/GZipContent;

    invoke-direct {v5, v4, v6}, Lcom/google/api/client/http/GZipContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V

    .line 865
    .end local v4    # "content":Lcom/google/api/client/http/HttpContent;
    .restart local v5    # "content":Lcom/google/api/client/http/HttpContent;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 866
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v8

    move-object v4, v5

    .line 869
    .end local v5    # "content":Lcom/google/api/client/http/HttpContent;
    .restart local v4    # "content":Lcom/google/api/client/http/HttpContent;
    :cond_7
    if-eqz v18, :cond_a

    .line 870
    if-eqz v6, :cond_8

    .line 871
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Type: "

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v31, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :cond_8
    if-eqz v7, :cond_9

    .line 874
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Encoding: "

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v31, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_9
    const-wide/16 v32, 0x0

    cmp-long v10, v8, v32

    if-ltz v10, :cond_a

    .line 878
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Length: "

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v31, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)V

    .line 884
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "contentEncoding":Ljava/lang/String;
    .end local v8    # "contentLength":J
    :goto_6
    if-eqz v18, :cond_b

    .line 885
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 890
    :cond_b
    if-lez v28, :cond_16

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_c
    const/16 v29, 0x1

    .line 893
    :goto_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    move/from16 v31, v0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 895
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 897
    .local v21, "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    const/16 v26, 0x0

    .line 899
    .local v26, "responseConstructed":Z
    :try_start_1
    new-instance v25, Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    .end local v24    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v25, "response":Lcom/google/api/client/http/HttpResponse;
    const/16 v26, 0x1

    .line 902
    if-nez v26, :cond_d

    .line 903
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    move-object/from16 v24, v25

    .line 917
    .end local v21    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v25    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v26    # "responseConstructed":Z
    .restart local v24    # "response":Lcom/google/api/client/http/HttpResponse;
    :goto_8
    const/16 v27, 0x0

    .line 919
    .local v27, "responseProcessed":Z
    if-eqz v24, :cond_1b

    :try_start_3
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v10

    if-nez v10, :cond_1b

    .line 920
    const/4 v15, 0x0

    .line 921
    .local v15, "errorHandled":Z
    const/16 v23, 0x0

    .line 922
    .local v23, "redirectRequest":Z
    const/4 v11, 0x0

    .line 923
    .local v11, "backOffRetry":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    if-eqz v10, :cond_e

    .line 927
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v29

    invoke-interface {v10, v0, v1, v2}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v15

    .line 930
    :cond_e
    if-nez v15, :cond_f

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpRequest;->getFollowRedirects()Z

    move-result v10

    if-eqz v10, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpRequest;->isRedirected(Lcom/google/api/client/http/HttpResponse;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 933
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(Lcom/google/api/client/http/HttpResponse;)V

    .line 934
    const/16 v23, 0x1

    .line 950
    :cond_f
    :goto_9
    if-nez v15, :cond_10

    if-nez v23, :cond_10

    if-eqz v11, :cond_1a

    :cond_10
    const/4 v10, 0x1

    :goto_a
    and-int v29, v29, v10

    .line 952
    if-eqz v29, :cond_11

    .line 953
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 961
    .end local v11    # "backOffRetry":Z
    .end local v15    # "errorHandled":Z
    .end local v23    # "redirectRequest":Z
    :cond_11
    :goto_b
    add-int/lit8 v28, v28, -0x1

    .line 963
    const/16 v27, 0x1

    .line 965
    if-eqz v24, :cond_12

    if-nez v27, :cond_12

    .line 966
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 969
    :cond_12
    if-nez v29, :cond_1

    .line 971
    if-nez v24, :cond_1e

    .line 973
    throw v16

    .line 773
    .end local v4    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v16    # "executeException":Ljava/io/IOException;
    .end local v17    # "logbuf":Ljava/lang/StringBuilder;
    .end local v18    # "loggable":Z
    .end local v19    # "logger":Ljava/util/logging/Logger;
    .end local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v22    # "originalUserAgent":Ljava/lang/String;
    .end local v24    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v27    # "responseProcessed":Z
    .end local v28    # "retriesRemaining":I
    .end local v30    # "urlString":Ljava/lang/String;
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 803
    .restart local v16    # "executeException":Ljava/io/IOException;
    .restart local v24    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v28    # "retriesRemaining":I
    .restart local v30    # "urlString":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .line 804
    .restart local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 809
    .end local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpTransport;->supportsHead()Z

    move-result v10

    const-string v31, "HTTP transport doesn\'t support HEAD"

    move-object/from16 v0, v31

    invoke-static {v10, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .line 812
    .restart local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 814
    .end local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpTransport;->supportsPatch()Z

    move-result v10

    const-string v31, "HTTP transport doesn\'t support PATCH"

    move-object/from16 v0, v31

    invoke-static {v10, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .line 817
    .restart local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 819
    .end local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .line 820
    .restart local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 822
    .end local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .restart local v20    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 826
    .restart local v19    # "logger":Ljava/util/logging/Logger;
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 839
    .restart local v17    # "logbuf":Ljava/lang/StringBuilder;
    .restart local v18    # "loggable":Z
    .restart local v22    # "originalUserAgent":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Google-HTTP-Java-Client/1.10.3-beta (gzip)"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 890
    .restart local v4    # "content":Lcom/google/api/client/http/HttpContent;
    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 902
    .restart local v21    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .restart local v26    # "responseConstructed":Z
    :catchall_0
    move-exception v10

    if-nez v26, :cond_17

    .line 903
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    :cond_17
    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 906
    .end local v21    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v26    # "responseConstructed":Z
    :catch_0
    move-exception v14

    .line 907
    .local v14, "e":Ljava/io/IOException;
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    if-nez v10, :cond_18

    .line 908
    throw v14

    .line 911
    :cond_18
    move-object/from16 v16, v14

    .line 912
    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v10, v1, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 935
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v11    # "backOffRetry":Z
    .restart local v15    # "errorHandled":Z
    .restart local v23    # "redirectRequest":Z
    .restart local v27    # "responseProcessed":Z
    :cond_19
    if-eqz v29, :cond_f

    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v10, v0}, Lcom/google/api/client/http/BackOffPolicy;->isBackOffRequired(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 940
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-interface {v10}, Lcom/google/api/client/http/BackOffPolicy;->getNextBackOffMillis()J

    move-result-wide v12

    .line 941
    .local v12, "backOffTime":J
    const-wide/16 v32, -0x1

    cmp-long v10, v12, v32

    if-eqz v10, :cond_f

    .line 942
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/api/client/http/HttpRequest;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 943
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 950
    .end local v12    # "backOffTime":J
    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 957
    .end local v11    # "backOffRetry":Z
    .end local v15    # "errorHandled":Z
    .end local v23    # "redirectRequest":Z
    :cond_1b
    if-nez v24, :cond_1c

    const/4 v10, 0x1

    :goto_d
    and-int v29, v29, v10

    goto/16 :goto_b

    :cond_1c
    const/4 v10, 0x0

    goto :goto_d

    .line 965
    :catchall_1
    move-exception v10

    if-eqz v24, :cond_1d

    if-nez v27, :cond_1d

    .line 966
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_1d
    throw v10

    .line 976
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    if-eqz v10, :cond_1f

    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 978
    :try_start_6
    new-instance v10, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 980
    :catchall_2
    move-exception v10

    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v10

    .line 983
    :cond_1f
    return-object v24

    .line 906
    .end local v24    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v27    # "responseProcessed":Z
    .restart local v21    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .restart local v25    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v26    # "responseConstructed":Z
    :catch_1
    move-exception v14

    move-object/from16 v24, v25

    .end local v25    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v24    # "response":Lcom/google/api/client/http/HttpResponse;
    goto :goto_c

    .end local v4    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v21    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v26    # "responseConstructed":Z
    .restart local v5    # "content":Lcom/google/api/client/http/HttpContent;
    .restart local v6    # "contentType":Ljava/lang/String;
    .restart local v7    # "contentEncoding":Ljava/lang/String;
    .restart local v8    # "contentLength":J
    :cond_20
    move-object v4, v5

    .end local v5    # "content":Lcom/google/api/client/http/HttpContent;
    .restart local v4    # "content":Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_5

    .end local v4    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "contentEncoding":Ljava/lang/String;
    .end local v8    # "contentLength":J
    .restart local v5    # "content":Lcom/google/api/client/http/HttpContent;
    :cond_21
    move-object v4, v5

    .end local v5    # "content":Lcom/google/api/client/http/HttpContent;
    .restart local v4    # "content":Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_6

    :cond_22
    move-object v5, v4

    .end local v4    # "content":Lcom/google/api/client/http/HttpContent;
    .restart local v5    # "content":Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_4

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBackOffPolicy()Lcom/google/api/client/http/BackOffPolicy;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    return v0
.end method

.method public getContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getContentLoggingLimit()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    return v0
.end method

.method public getEnableGZipContent()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    return v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public getMethod()Lcom/google/api/client/http/HttpMethod;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public getNumberOfRetries()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    return v0
.end method

.method public final getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    invoke-static {p1}, Lcom/google/api/client/http/HttpRequest;->normalizeMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 656
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->contentTypeToParserMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpParser;

    return-object v0
.end method

.method public final getParser()Lcom/google/api/client/util/ObjectParser;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    return v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getRetryOnExecuteIOException()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    return v0
.end method

.method public getThrowExceptionOnExecuteError()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    return v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    return-object v0
.end method

.method public getUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public isAllowEmptyContent()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->allowEmptyContent:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    return v0
.end method

.method public setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "allowEmptyContent"    # Z

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->allowEmptyContent:Z

    .line 568
    return-object p0
.end method

.method public setBackOffPolicy(Lcom/google/api/client/http/BackOffPolicy;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "backOffPolicy"    # Lcom/google/api/client/http/BackOffPolicy;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    .line 311
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 427
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 428
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 429
    return-object p0

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "content"    # Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 254
    return-object p0
.end method

.method public setContentLoggingLimit(I)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .param p1, "contentLoggingLimit"    # I

    .prologue
    .line 373
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 375
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 376
    return-object p0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "enableGZipContent"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    .line 292
    return-object p0
.end method

.method public setFollowRedirects(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 687
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 688
    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 477
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 478
    return-object p0
.end method

.method public setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "interceptor"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->interceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 536
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 403
    return-object p0
.end method

.method public setMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "method"    # Lcom/google/api/client/http/HttpMethod;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 216
    return-object p0
.end method

.method public setNumberOfRetries(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "numRetries"    # I

    .prologue
    .line 605
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 606
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 607
    return-object p0

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParser(Lcom/google/api/client/util/ObjectParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/google/api/client/util/ObjectParser;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    .line 642
    return-void
.end method

.method public setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 453
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 454
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 455
    return-object p0

    .line 453
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "responseHeaders"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 514
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 515
    return-object p0
.end method

.method public setRetryOnExecuteIOException(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "retryOnExecuteIOException"    # Z

    .prologue
    .line 737
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 738
    return-object p0
.end method

.method public setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "throwExceptionOnExecuteError"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 713
    return-object p0
.end method

.method public setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "unsuccessfulResponseHandler"    # Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 556
    return-object p0
.end method

.method public setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;

    .prologue
    .line 234
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 235
    return-object p0
.end method
