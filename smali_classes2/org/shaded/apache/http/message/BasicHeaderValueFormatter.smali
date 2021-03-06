.class public Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lorg/shaded/apache/http/message/HeaderValueFormatter;


# static fields
.field public static final DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatElements([Lorg/shaded/apache/http/HeaderElement;ZLorg/shaded/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elems"    # [Lorg/shaded/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/shaded/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    sget-object p2, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/shaded/apache/http/message/HeaderValueFormatter;->formatElements(Lorg/shaded/apache/http/util/CharArrayBuffer;[Lorg/shaded/apache/http/HeaderElement;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatHeaderElement(Lorg/shaded/apache/http/HeaderElement;ZLorg/shaded/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Lorg/shaded/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/shaded/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 166
    if-nez p2, :cond_0

    .line 167
    sget-object p2, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;

    .line 168
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/shaded/apache/http/message/HeaderValueFormatter;->formatHeaderElement(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/HeaderElement;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatNameValuePair(Lorg/shaded/apache/http/NameValuePair;ZLorg/shaded/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvp"    # Lorg/shaded/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/shaded/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 322
    if-nez p2, :cond_0

    .line 323
    sget-object p2, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;

    .line 324
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/shaded/apache/http/message/HeaderValueFormatter;->formatNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatParameters([Lorg/shaded/apache/http/NameValuePair;ZLorg/shaded/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvps"    # [Lorg/shaded/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/shaded/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 254
    if-nez p2, :cond_0

    .line 255
    sget-object p2, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;

    .line 256
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/shaded/apache/http/message/HeaderValueFormatter;->formatParameters(Lorg/shaded/apache/http/util/CharArrayBuffer;[Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doFormatValue(Lorg/shaded/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "quote"    # Z

    .prologue
    const/16 v3, 0x22

    .line 390
    if-nez p3, :cond_0

    .line 391
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-nez p3, :cond_0

    .line 392
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 397
    invoke-virtual {p1, v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 399
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 400
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 401
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 404
    :cond_2
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    .end local v0    # "ch":C
    :cond_3
    if-eqz p3, :cond_4

    .line 407
    invoke-virtual {p1, v3}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 409
    :cond_4
    return-void
.end method

.method protected estimateElementsLen([Lorg/shaded/apache/http/HeaderElement;)I
    .locals 4
    .param p1, "elems"    # [Lorg/shaded/apache/http/HeaderElement;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 146
    :cond_1
    return v1

    .line 141
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v1, v2, 0x2

    .line 142
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 143
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/shaded/apache/http/HeaderElement;)I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected estimateHeaderElementLen(Lorg/shaded/apache/http/HeaderElement;)I
    .locals 5
    .param p1, "elem"    # Lorg/shaded/apache/http/HeaderElement;

    .prologue
    .line 215
    if-nez p1, :cond_1

    .line 216
    const/4 v2, 0x0

    .line 233
    :cond_0
    return v2

    .line 218
    :cond_1
    invoke-interface {p1}, Lorg/shaded/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 219
    .local v2, "result":I
    invoke-interface {p1}, Lorg/shaded/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    .line 225
    :cond_2
    invoke-interface {p1}, Lorg/shaded/apache/http/HeaderElement;->getParameterCount()I

    move-result v1

    .line 226
    .local v1, "parcnt":I
    if-lez v1, :cond_0

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 228
    invoke-interface {p1, v0}, Lorg/shaded/apache/http/HeaderElement;->getParameter(I)Lorg/shaded/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/shaded/apache/http/NameValuePair;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected estimateNameValuePairLen(Lorg/shaded/apache/http/NameValuePair;)I
    .locals 3
    .param p1, "nvp"    # Lorg/shaded/apache/http/NameValuePair;

    .prologue
    .line 363
    if-nez p1, :cond_1

    .line 364
    const/4 v0, 0x0

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    invoke-interface {p1}, Lorg/shaded/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 367
    .local v0, "result":I
    invoke-interface {p1}, Lorg/shaded/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method protected estimateParametersLen([Lorg/shaded/apache/http/NameValuePair;)I
    .locals 4
    .param p1, "nvps"    # [Lorg/shaded/apache/http/NameValuePair;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 303
    :cond_1
    return v1

    .line 298
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v1, v2, 0x2

    .line 299
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 300
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/shaded/apache/http/NameValuePair;)I

    move-result v2

    add-int/2addr v1, v2

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public formatElements(Lorg/shaded/apache/http/util/CharArrayBuffer;[Lorg/shaded/apache/http/HeaderElement;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "elems"    # [Lorg/shaded/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Header element array must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->estimateElementsLen([Lorg/shaded/apache/http/HeaderElement;)I

    move-result v1

    .line 113
    .local v1, "len":I
    if-nez p1, :cond_2

    .line 114
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 119
    .restart local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 120
    if-lez v0, :cond_1

    .line 121
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 123
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2, p3}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/HeaderElement;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 126
    .restart local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method public formatHeaderElement(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/HeaderElement;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 6
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "elem"    # Lorg/shaded/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 176
    if-nez p2, :cond_0

    .line 177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Header element must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 181
    :cond_0
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/shaded/apache/http/HeaderElement;)I

    move-result v1

    .line 182
    .local v1, "len":I
    if-nez p1, :cond_2

    .line 183
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 188
    .restart local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/shaded/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 189
    invoke-interface {p2}, Lorg/shaded/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 191
    const/16 v4, 0x3d

    invoke-virtual {p1, v4}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 192
    invoke-virtual {p0, p1, v3, p3}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/shaded/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 195
    :cond_1
    invoke-interface {p2}, Lorg/shaded/apache/http/HeaderElement;->getParameterCount()I

    move-result v2

    .line 196
    .local v2, "parcnt":I
    if-lez v2, :cond_3

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 198
    const-string v4, "; "

    invoke-virtual {p1, v4}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 199
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HeaderElement;->getParameter(I)Lorg/shaded/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "i":I
    .end local v2    # "parcnt":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 203
    .restart local v2    # "parcnt":I
    .restart local v3    # "value":Ljava/lang/String;
    :cond_3
    return-object p1
.end method

.method public formatNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "nvp"    # Lorg/shaded/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 332
    if-nez p2, :cond_0

    .line 333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "NameValuePair must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_0
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/shaded/apache/http/NameValuePair;)I

    move-result v0

    .line 338
    .local v0, "len":I
    if-nez p1, :cond_2

    .line 339
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 344
    .restart local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/shaded/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 345
    invoke-interface {p2}, Lorg/shaded/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 347
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 348
    invoke-virtual {p0, p1, v1, p3}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/shaded/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 351
    :cond_1
    return-object p1

    .line 341
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method public formatParameters(Lorg/shaded/apache/http/util/CharArrayBuffer;[Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/shaded/apache/http/util/CharArrayBuffer;
    .param p2, "nvps"    # [Lorg/shaded/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 264
    if-nez p2, :cond_0

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameters must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->estimateParametersLen([Lorg/shaded/apache/http/NameValuePair;)I

    move-result v1

    .line 270
    .local v1, "len":I
    if-nez p1, :cond_2

    .line 271
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    .end local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 276
    .restart local p1    # "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 277
    if-lez v0, :cond_1

    .line 278
    const-string v2, "; "

    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 280
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2, p3}, Lorg/shaded/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/NameValuePair;Z)Lorg/shaded/apache/http/util/CharArrayBuffer;

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 283
    .restart local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method protected isSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 421
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnsafe(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 434
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
