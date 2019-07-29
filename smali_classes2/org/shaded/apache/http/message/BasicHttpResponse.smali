.class public Lorg/shaded/apache/http/message/BasicHttpResponse;
.super Lorg/shaded/apache/http/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpResponse;


# instance fields
.field private entity:Lorg/shaded/apache/http/HttpEntity;

.field private locale:Ljava/util/Locale;

.field private reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

.field private statusline:Lorg/shaded/apache/http/StatusLine;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 2
    .param p1, "ver"    # Lorg/shaded/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v0, Lorg/shaded/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lorg/shaded/apache/http/message/BasicHttpResponse;-><init>(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/StatusLine;)V
    .locals 1
    .param p1, "statusline"    # Lorg/shaded/apache/http/StatusLine;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0, v0}, Lorg/shaded/apache/http/message/BasicHttpResponse;-><init>(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 2
    .param p1, "statusline"    # Lorg/shaded/apache/http/StatusLine;
    .param p2, "catalog"    # Lorg/shaded/apache/http/ReasonPhraseCatalog;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/shaded/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    .line 78
    iput-object p2, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    .line 79
    if-eqz p3, :cond_1

    .end local p3    # "locale":Ljava/util/Locale;
    :goto_0
    iput-object p3, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 80
    return-void

    .line 79
    .restart local p3    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public getEntity()Lorg/shaded/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->entity:Lorg/shaded/apache/http/HttpEntity;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected getReason(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Lorg/shaded/apache/http/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusLine()Lorg/shaded/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    return-object v0
.end method

.method public setEntity(Lorg/shaded/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/shaded/apache/http/HttpEntity;

    .prologue
    .line 173
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->entity:Lorg/shaded/apache/http/HttpEntity;

    .line 174
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Locale may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 182
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 183
    .local v0, "code":I
    new-instance v1, Lorg/shaded/apache/http/message/BasicStatusLine;

    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    .line 185
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Line break in reason phrase."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    new-instance v0, Lorg/shaded/apache/http/message/BasicStatusLine;

    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    .line 169
    return-void
.end method

.method public setStatusCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v0

    .line 155
    .local v0, "ver":Lorg/shaded/apache/http/ProtocolVersion;
    new-instance v1, Lorg/shaded/apache/http/message/BasicStatusLine;

    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    .line 156
    return-void
.end method

.method public setStatusLine(Lorg/shaded/apache/http/ProtocolVersion;I)V
    .locals 2
    .param p1, "ver"    # Lorg/shaded/apache/http/ProtocolVersion;
    .param p2, "code"    # I

    .prologue
    .line 141
    new-instance v0, Lorg/shaded/apache/http/message/BasicStatusLine;

    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    .line 142
    return-void
.end method

.method public setStatusLine(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Lorg/shaded/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Lorg/shaded/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    .line 149
    return-void
.end method

.method public setStatusLine(Lorg/shaded/apache/http/StatusLine;)V
    .locals 2
    .param p1, "statusline"    # Lorg/shaded/apache/http/StatusLine;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHttpResponse;->statusline:Lorg/shaded/apache/http/StatusLine;

    .line 136
    return-void
.end method
