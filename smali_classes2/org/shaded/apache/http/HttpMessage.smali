.class public interface abstract Lorg/shaded/apache/http/HttpMessage;
.super Ljava/lang/Object;
.source "HttpMessage.java"


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addHeader(Lorg/shaded/apache/http/Header;)V
.end method

.method public abstract containsHeader(Ljava/lang/String;)Z
.end method

.method public abstract getAllHeaders()[Lorg/shaded/apache/http/Header;
.end method

.method public abstract getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;
.end method

.method public abstract getHeaders(Ljava/lang/String;)[Lorg/shaded/apache/http/Header;
.end method

.method public abstract getLastHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;
.end method

.method public abstract getParams()Lorg/shaded/apache/http/params/HttpParams;
.end method

.method public abstract getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;
.end method

.method public abstract headerIterator()Lorg/shaded/apache/http/HeaderIterator;
.end method

.method public abstract headerIterator(Ljava/lang/String;)Lorg/shaded/apache/http/HeaderIterator;
.end method

.method public abstract removeHeader(Lorg/shaded/apache/http/Header;)V
.end method

.method public abstract removeHeaders(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lorg/shaded/apache/http/Header;)V
.end method

.method public abstract setHeaders([Lorg/shaded/apache/http/Header;)V
.end method

.method public abstract setParams(Lorg/shaded/apache/http/params/HttpParams;)V
.end method
