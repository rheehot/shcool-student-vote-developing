.class public interface abstract Lorg/shaded/apache/http/message/HeaderValueParser;
.super Ljava/lang/Object;
.source "HeaderValueParser.java"


# virtual methods
.method public abstract parseElements(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)[Lorg/shaded/apache/http/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract parseHeaderElement(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract parseNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract parseParameters(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)[Lorg/shaded/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method
