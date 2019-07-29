.class public interface abstract Lorg/shaded/apache/http/message/LineFormatter;
.super Ljava/lang/Object;
.source "LineFormatter.java"


# virtual methods
.method public abstract appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method

.method public abstract formatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method

.method public abstract formatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method

.method public abstract formatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method
