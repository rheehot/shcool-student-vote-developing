.class public interface abstract Lorg/shaded/apache/http/HeaderElement;
.super Ljava/lang/Object;
.source "HeaderElement.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameter(I)Lorg/shaded/apache/http/NameValuePair;
.end method

.method public abstract getParameterByName(Ljava/lang/String;)Lorg/shaded/apache/http/NameValuePair;
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getParameters()[Lorg/shaded/apache/http/NameValuePair;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
