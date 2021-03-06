.class public Lorg/shaded/apache/http/impl/auth/NTLMScheme;
.super Lorg/shaded/apache/http/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;
    }
.end annotation

.annotation build Lorg/shaded/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lorg/shaded/apache/http/impl/auth/NTLMEngine;

.field private state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/impl/auth/NTLMEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/shaded/apache/http/impl/auth/NTLMEngine;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/shaded/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NTLM engine may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->engine:Lorg/shaded/apache/http/impl/auth/NTLMEngine;

    .line 78
    sget-object v0, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/shaded/apache/http/auth/Credentials;Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/Header;
    .locals 11
    .param p1, "credentials"    # Lorg/shaded/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v9, 0x0

    .line 122
    .local v9, "ntcredentials":Lorg/shaded/apache/http/auth/NTCredentials;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/shaded/apache/http/auth/NTCredentials;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v10, 0x0

    .line 129
    .local v10, "response":Ljava/lang/String;
    iget-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    sget-object v2, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    sget-object v2, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    if-ne v1, v2, :cond_1

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->engine:Lorg/shaded/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {v9}, Lorg/shaded/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lorg/shaded/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/shaded/apache/http/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    sget-object v1, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    .line 145
    :goto_0
    new-instance v7, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v7, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 146
    .local v7, "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    const-string v1, "Proxy-Authorization"

    invoke-virtual {v7, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 151
    :goto_1
    const-string v1, ": NTLM "

    invoke-virtual {v7, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v7, v10}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lorg/shaded/apache/http/message/BufferedHeader;

    invoke-direct {v1, v7}, Lorg/shaded/apache/http/message/BufferedHeader;-><init>(Lorg/shaded/apache/http/util/CharArrayBuffer;)V

    return-object v1

    .line 123
    .end local v7    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    .end local v10    # "response":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/shaded/apache/http/auth/InvalidCredentialsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/shaded/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .restart local v10    # "response":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    sget-object v2, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    if-ne v1, v2, :cond_2

    .line 135
    iget-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->engine:Lorg/shaded/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {v9}, Lorg/shaded/apache/http/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lorg/shaded/apache/http/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lorg/shaded/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lorg/shaded/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lorg/shaded/apache/http/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    sget-object v1, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 143
    :cond_2
    new-instance v1, Lorg/shaded/apache/http/auth/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/shaded/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .restart local v7    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    :cond_3
    const-string v1, "Authorization"

    invoke-virtual {v7, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lorg/shaded/apache/http/util/CharArrayBuffer;II)V
    .locals 3
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1, p2, p3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "challenge":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    sget-object v2, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    if-ne v1, v2, :cond_0

    .line 106
    sget-object v1, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    .line 110
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 115
    :goto_1
    return-void

    .line 108
    :cond_0
    sget-object v1, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->state:Lorg/shaded/apache/http/impl/auth/NTLMScheme$State;

    .line 113
    iput-object v0, p0, Lorg/shaded/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    goto :goto_1
.end method
