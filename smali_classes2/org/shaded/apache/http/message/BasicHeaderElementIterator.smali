.class public Lorg/shaded/apache/http/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lorg/shaded/apache/http/HeaderElementIterator;


# instance fields
.field private buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

.field private currentElement:Lorg/shaded/apache/http/HeaderElement;

.field private cursor:Lorg/shaded/apache/http/message/ParserCursor;

.field private final headerIt:Lorg/shaded/apache/http/HeaderIterator;

.field private final parser:Lorg/shaded/apache/http/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/HeaderIterator;)V
    .locals 1
    .param p1, "headerIterator"    # Lorg/shaded/apache/http/HeaderIterator;

    .prologue
    .line 77
    sget-object v0, Lorg/shaded/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/shaded/apache/http/HeaderIterator;Lorg/shaded/apache/http/message/HeaderValueParser;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/HeaderIterator;Lorg/shaded/apache/http/message/HeaderValueParser;)V
    .locals 2
    .param p1, "headerIterator"    # Lorg/shaded/apache/http/HeaderIterator;
    .param p2, "parser"    # Lorg/shaded/apache/http/message/HeaderValueParser;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    .line 56
    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 57
    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/shaded/apache/http/HeaderIterator;

    .line 72
    iput-object p2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/shaded/apache/http/message/HeaderValueParser;

    .line 73
    return-void
.end method

.method private bufferHeaderValue()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 82
    iput-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    .line 83
    iput-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 84
    :cond_0
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/shaded/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/shaded/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/shaded/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/shaded/apache/http/HeaderIterator;->nextHeader()Lorg/shaded/apache/http/Header;

    move-result-object v0

    .line 86
    .local v0, "h":Lorg/shaded/apache/http/Header;
    instance-of v2, v0, Lorg/shaded/apache/http/FormattedHeader;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 87
    check-cast v2, Lorg/shaded/apache/http/FormattedHeader;

    invoke-interface {v2}, Lorg/shaded/apache/http/FormattedHeader;->getBuffer()Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 88
    new-instance v2, Lorg/shaded/apache/http/message/ParserCursor;

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/shaded/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    .line 89
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    check-cast v0, Lorg/shaded/apache/http/FormattedHeader;

    .end local v0    # "h":Lorg/shaded/apache/http/Header;
    invoke-interface {v0}, Lorg/shaded/apache/http/FormattedHeader;->getValuePos()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/shaded/apache/http/message/ParserCursor;->updatePos(I)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 92
    .restart local v0    # "h":Lorg/shaded/apache/http/Header;
    :cond_2
    invoke-interface {v0}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    new-instance v2, Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 95
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 96
    new-instance v2, Lorg/shaded/apache/http/message/ParserCursor;

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/shaded/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    goto :goto_0
.end method

.method private parseNextElement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/shaded/apache/http/HeaderIterator;

    invoke-interface {v1}, Lorg/shaded/apache/http/HeaderIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    if-eqz v1, :cond_6

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/shaded/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    :cond_2
    invoke-direct {p0}, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    .line 111
    :cond_3
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    if-eqz v1, :cond_0

    .line 113
    :cond_4
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/shaded/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_7

    .line 114
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/shaded/apache/http/message/HeaderValueParser;

    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    invoke-interface {v1, v2, v3}, Lorg/shaded/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/HeaderElement;

    move-result-object v0

    .line 115
    .local v0, "e":Lorg/shaded/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/shaded/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lorg/shaded/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 117
    :cond_5
    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    .line 129
    .end local v0    # "e":Lorg/shaded/apache/http/HeaderElement;
    :cond_6
    return-void

    .line 122
    :cond_7
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/shaded/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iput-object v4, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/shaded/apache/http/message/ParserCursor;

    .line 125
    iput-object v4, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/shaded/apache/http/util/CharArrayBuffer;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->nextElement()Lorg/shaded/apache/http/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/shaded/apache/http/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    if-nez v1, :cond_0

    .line 140
    invoke-direct {p0}, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 143
    :cond_0
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    if-nez v1, :cond_1

    .line 144
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more header elements available"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    .line 148
    .local v0, "element":Lorg/shaded/apache/http/HeaderElement;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/shaded/apache/http/HeaderElement;

    .line 149
    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
