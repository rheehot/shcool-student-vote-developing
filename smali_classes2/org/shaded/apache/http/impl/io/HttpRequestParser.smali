.class public Lorg/shaded/apache/http/impl/io/HttpRequestParser;
.super Lorg/shaded/apache/http/impl/io/AbstractMessageParser;
.source "HttpRequestParser.java"


# instance fields
.field private final lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

.field private final requestFactory:Lorg/shaded/apache/http/HttpRequestFactory;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/HttpRequestFactory;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/shaded/apache/http/message/LineParser;
    .param p3, "requestFactory"    # Lorg/shaded/apache/http/HttpRequestFactory;
    .param p4, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p4}, Lorg/shaded/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/params/HttpParams;)V

    .line 90
    if-nez p3, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p3, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->requestFactory:Lorg/shaded/apache/http/HttpRequestFactory;

    .line 94
    new-instance v0, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

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
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->clear()V

    .line 102
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v3}, Lorg/shaded/apache/http/io/SessionInputBuffer;->readLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 103
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 104
    new-instance v3, Lorg/shaded/apache/http/ConnectionClosedException;

    const-string v4, "Client closed connection"

    invoke-direct {v3, v4}, Lorg/shaded/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_0
    new-instance v0, Lorg/shaded/apache/http/message/ParserCursor;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/shaded/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/shaded/apache/http/message/ParserCursor;-><init>(II)V

    .line 107
    .local v0, "cursor":Lorg/shaded/apache/http/message/ParserCursor;
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->lineParser:Lorg/shaded/apache/http/message/LineParser;

    iget-object v4, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lorg/shaded/apache/http/message/LineParser;->parseRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/RequestLine;

    move-result-object v2

    .line 108
    .local v2, "requestline":Lorg/shaded/apache/http/RequestLine;
    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/HttpRequestParser;->requestFactory:Lorg/shaded/apache/http/HttpRequestFactory;

    invoke-interface {v3, v2}, Lorg/shaded/apache/http/HttpRequestFactory;->newHttpRequest(Lorg/shaded/apache/http/RequestLine;)Lorg/shaded/apache/http/HttpRequest;

    move-result-object v3

    return-object v3
.end method
