.class public Lorg/shaded/apache/http/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lorg/shaded/apache/http/message/LineFormatter;


# static fields
.field public static final DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/shaded/apache/http/message/BasicLineFormatter;

    invoke-direct {v0}, Lorg/shaded/apache/http/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatHeader(Lorg/shaded/apache/http/Header;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "header"    # Lorg/shaded/apache/http/Header;
    .param p1, "formatter"    # Lorg/shaded/apache/http/message/LineFormatter;

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    .line 287
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->formatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatProtocolVersion(Lorg/shaded/apache/http/ProtocolVersion;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Lorg/shaded/apache/http/ProtocolVersion;
    .param p1, "formatter"    # Lorg/shaded/apache/http/message/LineFormatter;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    .line 106
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatRequestLine(Lorg/shaded/apache/http/RequestLine;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "reqline"    # Lorg/shaded/apache/http/RequestLine;
    .param p1, "formatter"    # Lorg/shaded/apache/http/message/LineFormatter;

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    .line 165
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->formatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatStatusLine(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "statline"    # Lorg/shaded/apache/http/StatusLine;
    .param p1, "formatter"    # Lorg/shaded/apache/http/message/LineFormatter;

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    .line 225
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->formatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "version"    # Lorg/shaded/apache/http/ProtocolVersion;

    .prologue
    .line 113
    if-nez p2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Protocol version may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    move-object v1, p1

    .line 120
    .local v1, "result":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I

    move-result v0

    .line 121
    .local v0, "len":I
    if-nez v1, :cond_1

    .line 122
    new-instance v1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    .end local v1    # "result":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-direct {v1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 127
    .restart local v1    # "result":Lorg/shaded/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-virtual {p2}, Lorg/shaded/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 128
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 129
    invoke-virtual {p2}, Lorg/shaded/apache/http/ProtocolVersion;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 130
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 131
    invoke-virtual {p2}, Lorg/shaded/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 133
    return-object v1

    .line 124
    :cond_1
    invoke-virtual {v1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method protected doFormatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)V
    .locals 4
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/shaded/apache/http/Header;

    .prologue
    .line 322
    invoke-interface {p2}, Lorg/shaded/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, 0x2

    .line 326
    .local v0, "len":I
    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 329
    :cond_0
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 331
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 332
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 333
    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 336
    :cond_1
    return-void
.end method

.method protected doFormatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)V
    .locals 6
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/shaded/apache/http/RequestLine;

    .prologue
    const/16 v5, 0x20

    .line 194
    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "method":Ljava/lang/String;
    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/shaded/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I

    move-result v4

    add-int v0, v3, v4

    .line 200
    .local v0, "len":I
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 202
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1, v5}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 204
    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, v5}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 206
    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/shaded/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 207
    return-void
.end method

.method protected doFormatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)V
    .locals 4
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/shaded/apache/http/StatusLine;

    .prologue
    const/16 v3, 0x20

    .line 255
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v2, 0x1

    .line 257
    .local v0, "len":I
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 261
    :cond_0
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 263
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 264
    invoke-virtual {p1, v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 265
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1, v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 267
    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 270
    :cond_1
    return-void
.end method

.method protected estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I
    .locals 1
    .param p1, "version"    # Lorg/shaded/apache/http/ProtocolVersion;

    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/shaded/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public formatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 3
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/shaded/apache/http/Header;

    .prologue
    .line 294
    if-nez p2, :cond_0

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Header may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 300
    .local v0, "result":Lorg/shaded/apache/http/util/CharArrayBuffer;
    instance-of v1, p2, Lorg/shaded/apache/http/FormattedHeader;

    if-eqz v1, :cond_1

    .line 302
    check-cast p2, Lorg/shaded/apache/http/FormattedHeader;

    .end local p2    # "header":Lorg/shaded/apache/http/Header;
    invoke-interface {p2}, Lorg/shaded/apache/http/FormattedHeader;->getBuffer()Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 304
    .restart local p2    # "header":Lorg/shaded/apache/http/Header;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 305
    invoke-virtual {p0, v0, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->doFormatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)V

    goto :goto_0
.end method

.method public formatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 3
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/shaded/apache/http/RequestLine;

    .prologue
    .line 172
    if-nez p2, :cond_0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request line may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 178
    .local v0, "result":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->doFormatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)V

    .line 180
    return-object v0
.end method

.method public formatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 3
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/shaded/apache/http/StatusLine;

    .prologue
    .line 232
    if-nez p2, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Status line may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 238
    .local v0, "result":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->doFormatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)V

    .line 240
    return-object v0
.end method

.method protected initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 1
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->clear()V

    .line 87
    :goto_0
    return-object p1

    .line 85
    :cond_0
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .restart local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    goto :goto_0
.end method
