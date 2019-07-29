.class public abstract Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lorg/shaded/apache/http/io/HttpMessageWriter;


# instance fields
.field protected final lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

.field protected final lineFormatter:Lorg/shaded/apache/http/message/LineFormatter;

.field protected final sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/message/LineFormatter;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/shaded/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/shaded/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    .line 74
    new-instance v0, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 75
    if-eqz p2, :cond_1

    .end local p2    # "formatter":Lorg/shaded/apache/http/message/LineFormatter;
    :goto_0
    iput-object p2, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/shaded/apache/http/message/LineFormatter;

    .line 77
    return-void

    .line 75
    .restart local p2    # "formatter":Lorg/shaded/apache/http/message/LineFormatter;
    :cond_1
    sget-object p2, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method


# virtual methods
.method public write(Lorg/shaded/apache/http/HttpMessage;)V
    .locals 5
    .param p1, "message"    # Lorg/shaded/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP message may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->writeHeadLine(Lorg/shaded/apache/http/HttpMessage;)V

    .line 94
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpMessage;->headerIterator()Lorg/shaded/apache/http/HeaderIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/Header;

    .line 96
    .local v0, "header":Lorg/shaded/apache/http/Header;
    iget-object v2, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/shaded/apache/http/message/LineFormatter;

    iget-object v4, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lorg/shaded/apache/http/message/LineFormatter;->formatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/shaded/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)V

    goto :goto_0

    .line 99
    .end local v0    # "header":Lorg/shaded/apache/http/Header;
    :cond_1
    iget-object v2, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->clear()V

    .line 100
    iget-object v2, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {v2, v3}, Lorg/shaded/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)V

    .line 101
    return-void
.end method

.method protected abstract writeHeadLine(Lorg/shaded/apache/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
