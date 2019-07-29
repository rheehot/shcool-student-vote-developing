.class public Lorg/shaded/apache/http/impl/io/HttpResponseWriter;
.super Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;
.source "HttpResponseWriter.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/message/LineFormatter;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "buffer"    # Lorg/shaded/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/shaded/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;-><init>(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/message/LineFormatter;Lorg/shaded/apache/http/params/HttpParams;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected writeHeadLine(Lorg/shaded/apache/http/HttpMessage;)V
    .locals 3
    .param p1, "message"    # Lorg/shaded/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpResponseWriter;->lineFormatter:Lorg/shaded/apache/http/message/LineFormatter;

    iget-object v1, p0, Lorg/shaded/apache/http/impl/io/HttpResponseWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    check-cast p1, Lorg/shaded/apache/http/HttpResponse;

    .end local p1    # "message":Lorg/shaded/apache/http/HttpMessage;
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/shaded/apache/http/message/LineFormatter;->formatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 61
    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpResponseWriter;->sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/shaded/apache/http/impl/io/HttpResponseWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lorg/shaded/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)V

    .line 62
    return-void
.end method
