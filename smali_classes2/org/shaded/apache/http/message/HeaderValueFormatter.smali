.class public interface abstract Lorg/shaded/apache/http/message/HeaderValueFormatter;
.super Ljava/lang/Object;
.source "HeaderValueFormatter.java"


# virtual methods
.method public abstract formatElements(Lorg/shaded/apache/http/util/CharArrayBuffer;[Lorg/shaded/apache/http/HeaderElement;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method

.method public abstract formatHeaderElement(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/HeaderElement;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method

.method public abstract formatNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method

.method public abstract formatParameters(Lorg/shaded/apache/http/util/CharArrayBuffer;[Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
.end method
