.class public interface abstract Lorg/shaded/apache/http/auth/AuthScheme;
.super Ljava/lang/Object;
.source "AuthScheme.java"


# virtual methods
.method public abstract authenticate(Lorg/shaded/apache/http/auth/Credentials;Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/auth/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getSchemeName()Ljava/lang/String;
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isConnectionBased()Z
.end method

.method public abstract processChallenge(Lorg/shaded/apache/http/Header;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/auth/MalformedChallengeException;
        }
    .end annotation
.end method
