.class public final Lcom/shaded/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BASE64_VALUE_INVALID:I = -0x1

.field public static final BASE64_VALUE_PADDING:I = -0x2

.field static final PADDING_CHAR_NONE:C = '\u0000'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient _asciiToBase64:[I

.field private final transient _base64ToAsciiB:[B

.field private final transient _base64ToAsciiC:[C

.field protected final transient _maxLineLength:I

.field protected final _name:Ljava/lang/String;

.field protected final transient _paddingChar:C

.field protected final transient _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 142
    iget-boolean v3, p1, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 4

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 57
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 63
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 152
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 154
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 156
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 158
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-boolean p3, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 161
    iput-char p4, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 162
    iput p5, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 5

    .prologue
    const/16 v2, 0x40

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 57
    new-array v1, v2, [C

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 63
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 107
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 108
    iput-boolean p3, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    .line 109
    iput-char p4, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 110
    iput p5, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 116
    if-eq v1, v2, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    invoke-virtual {p2, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 122
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 123
    :goto_0
    if-ge v0, v1, :cond_1

    .line 124
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v2, v2, v0

    .line 125
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 126
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aput v0, v3, v2

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    if-eqz p3, :cond_2

    .line 131
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v1, -0x2

    aput v1, v0, p4

    .line 133
    :cond_2
    return-void
.end method


# virtual methods
.method public decodeBase64Byte(B)I
    .locals 1

    .prologue
    .line 217
    .line 218
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(C)I
    .locals 1

    .prologue
    .line 206
    .line 207
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(I)I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    .line 361
    array-length v3, p1

    .line 365
    shr-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v3

    shr-int/lit8 v1, v3, 0x3

    add-int/2addr v0, v1

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v0

    shr-int/lit8 v1, v0, 0x2

    .line 375
    const/4 v0, 0x0

    .line 376
    add-int/lit8 v5, v3, -0x3

    move v2, v1

    .line 378
    :goto_0
    if-gt v0, v5, :cond_2

    .line 380
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    .line 381
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 382
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 383
    invoke-virtual {p0, v4, v0}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    .line 384
    add-int/lit8 v0, v2, -0x1

    if-gtz v0, :cond_1

    .line 386
    const/16 v0, 0x5c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    const/16 v0, 0x6e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    :cond_1
    move v2, v0

    move v0, v1

    .line 390
    goto :goto_0

    .line 393
    :cond_2
    sub-int v1, v3, v0

    .line 394
    if-lez v1, :cond_4

    .line 395
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    .line 396
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 397
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 399
    :cond_3
    invoke-virtual {p0, v4, v0, v1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    .line 402
    :cond_4
    if-eqz p2, :cond_5

    .line 403
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBase64BitsAsByte(I)B
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public encodeBase64BitsAsChar(I)C
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 4

    .prologue
    .line 307
    add-int/lit8 v0, p3, 0x1

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 308
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    .line 309
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v1

    .line 310
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    and-int/lit8 v3, p1, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    .line 311
    return v1
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 4

    .prologue
    .line 241
    add-int/lit8 v0, p3, 0x1

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 242
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v0

    .line 243
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    .line 244
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v3, p1, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v0

    .line 245
    return v1
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 324
    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 325
    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, v0

    .line 326
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_1

    .line 327
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v1, v0

    .line 328
    add-int/lit8 v3, v2, 0x1

    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v0, v0, v4

    :goto_0
    aput-byte v0, p3, v2

    .line 330
    add-int/lit8 v0, v3, 0x1

    aput-byte v1, p3, v3

    .line 336
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 328
    goto :goto_0

    .line 332
    :cond_1
    if-ne p2, v4, :cond_2

    .line 333
    add-int/lit8 v0, v2, 0x1

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public encodeBase64Partial(II[CI)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 266
    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    .line 267
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p3, v0

    .line 268
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_1

    .line 269
    add-int/lit8 v2, v1, 0x1

    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v0, v0, v3

    :goto_0
    aput-char v0, p3, v1

    .line 271
    add-int/lit8 v0, v2, 0x1

    iget-char v1, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    aput-char v1, p3, v2

    .line 277
    :goto_1
    return v0

    .line 269
    :cond_0
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 273
    :cond_1
    if-ne p2, v4, :cond_2

    .line 274
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p3, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 282
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_2

    .line 285
    if-ne p3, v2, :cond_1

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :cond_0
    :goto_1
    return-void

    .line 285
    :cond_1
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 289
    :cond_2
    if-ne p3, v2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getMaxLineLength()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingByte()B
    .locals 1

    .prologue
    .line 191
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .prologue
    .line 190
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->valueOf(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1

    .prologue
    .line 188
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usesPaddingChar(I)Z
    .locals 1

    .prologue
    .line 189
    iget-char v0, p0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
