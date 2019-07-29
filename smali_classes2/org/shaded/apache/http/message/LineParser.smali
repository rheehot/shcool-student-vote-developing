.class public interface abstract Lorg/shaded/apache/http/message/LineParser;
.super Ljava/lang/Object;
.source "LineParser.java"


# virtual methods
.method public abstract hasProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Z
.end method

.method public abstract parseHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract parseProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract parseRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/RequestLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract parseStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/StatusLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method
