.class public Lorg/shaded/apache/http/impl/io/HttpResponseParser;
.super Lorg/shaded/apache/http/impl/io/AbstractMessageParser;
.source "HttpResponseParser.java"


# instance fields
.field private final lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

.field private final responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/HttpResponseFactory;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/shaded/apache/http/message/LineParser;
    .param p3, "responseFactory"    # Lorg/shaded/apache/http/HttpResponseFactory;
    .param p4, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p4}, Lorg/shaded/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/params/HttpParams;)V

    .line 90
    if-nez p3, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p3, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    .line 94
    new-instance v0, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 95
    return-void
.end method


# virtual methods
.method protected parseHead(Lorg/shaded/apache/http/io/SessionInputBuffer;)Lorg/shaded/apache/http/HttpMessage;
    .locals 5
    .param p1, "sessionBuffer"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;,
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->clear()V

    .line 102
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v3}, Lorg/shaded/apache/http/io/SessionInputBuffer;->readLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 103
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 104
    new-instance v3, Lorg/shaded/apache/http/NoHttpResponseException;

    const-string v4, "The target server failed to respond"

    invoke-direct {v3, v4}, Lorg/shaded/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_0
    new-instance v0, Lorg/shaded/apache/http/message/ParserCursor;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/shaded/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/shaded/apache/http/message/ParserCursor;-><init>(II)V

    .line 108
    .local v0, "cursor":Lorg/shaded/apache/http/message/ParserCursor;
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineParser:Lorg/shaded/apache/http/message/LineParser;

    iget-object v4, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lorg/shaded/apache/http/message/LineParser;->parseStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/StatusLine;

    move-result-object v2

    .line 109
    .local v2, "statusline":Lorg/shaded/apache/http/StatusLine;
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method
