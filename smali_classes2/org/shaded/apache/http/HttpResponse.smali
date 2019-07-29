.class public interface abstract Lorg/shaded/apache/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpMessage;


# virtual methods
.method public abstract getEntity()Lorg/shaded/apache/http/HttpEntity;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getStatusLine()Lorg/shaded/apache/http/StatusLine;
.end method

.method public abstract setEntity(Lorg/shaded/apache/http/HttpEntity;)V
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
.end method

.method public abstract setReasonPhrase(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setStatusCode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setStatusLine(Lorg/shaded/apache/http/ProtocolVersion;I)V
.end method

.method public abstract setStatusLine(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V
.end method

.method public abstract setStatusLine(Lorg/shaded/apache/http/StatusLine;)V
.end method
