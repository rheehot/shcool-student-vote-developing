.class public final Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;
.super Lcom/shaded/fasterxml/jackson/core/base/ParserBase;
.source "UTF8StreamJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser$1;
    }
.end annotation


# static fields
.field static final BYTE_LF:B = 0xat

.field private static final sInputCodesLatin1:[I

.field private static final sInputCodesUtf8:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

.field private _quad1:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesUtf8:[I

    .line 27
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/core/io/IOContext;ILjava/io/InputStream;Lcom/shaded/fasterxml/jackson/core/ObjectCodec;Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/shaded/fasterxml/jackson/core/io/IOContext;I)V

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 112
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 113
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    .line 114
    iput-object p5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 115
    iput-object p6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 116
    iput p7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 117
    iput p8, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 118
    iput-boolean p9, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_bufferRecyclable:Z

    .line 119
    return-void
.end method

.method private _decodeUtf8_2(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2794
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2795
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2797
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2798
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2799
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2801
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private _decodeUtf8_3(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2807
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2808
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2810
    :cond_0
    and-int/lit8 v0, p1, 0xf

    .line 2811
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2812
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2813
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2815
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2816
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2817
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2819
    :cond_2
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2820
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2821
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2823
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2824
    return v0
.end method

.method private _decodeUtf8_3fast(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2830
    and-int/lit8 v0, p1, 0xf

    .line 2831
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2832
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    .line 2833
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2835
    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2836
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2837
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2838
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2840
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2841
    return v0
.end method

.method private _decodeUtf8_4(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2851
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2852
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2854
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2855
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2856
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2858
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2860
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2861
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2863
    :cond_2
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2864
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2865
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2867
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2868
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 2869
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2871
    :cond_4
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2872
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    .line 2873
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2879
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private _finishString2([CI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2093
    sget-object v4, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesUtf8:[I

    .line 2094
    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 2101
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2102
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_0

    .line 2103
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2104
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2106
    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    .line 2107
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    move p2, v1

    .line 2110
    :cond_1
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2111
    :goto_1
    if-ge v0, v6, :cond_3

    .line 2112
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    .line 2113
    aget v3, v4, v0

    if-eqz v3, :cond_2

    .line 2114
    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2122
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    .line 2168
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2169
    return-void

    .line 2117
    :cond_2
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_1

    .line 2119
    :cond_3
    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_0

    .line 2126
    :cond_4
    aget v2, v4, v0

    packed-switch v2, :pswitch_data_0

    .line 2152
    const/16 v2, 0x20

    if-ge v0, v2, :cond_7

    .line 2154
    const-string v2, "string value"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2161
    :goto_2
    array-length v2, p1

    if-lt p2, v2, :cond_8

    .line 2162
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    move v2, v1

    .line 2166
    :goto_3
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_0

    .line 2128
    :pswitch_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result v0

    goto :goto_2

    .line 2131
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_2(I)I

    move-result v0

    goto :goto_2

    .line 2134
    :pswitch_2
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 2135
    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3fast(I)I

    move-result v0

    goto :goto_2

    .line 2137
    :cond_5
    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3(I)I

    move-result v0

    goto :goto_2

    .line 2141
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_4(I)I

    move-result v2

    .line 2143
    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 2144
    array-length v3, p1

    if-lt v0, v3, :cond_6

    .line 2145
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    move v0, v1

    .line 2148
    :cond_6
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    .line 2150
    goto :goto_2

    .line 2157
    :cond_7
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_2

    :cond_8
    move v2, p2

    goto :goto_3

    .line 2126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private _isNextTokenNameMaybe(ILcom/shaded/fasterxml/jackson/core/SerializableString;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 977
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFieldName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 982
    invoke-interface {p2}, Lcom/shaded/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 984
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 985
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 986
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_0

    .line 987
    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 989
    :cond_0
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 992
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    .line 993
    iput-boolean v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 994
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 1039
    :goto_0
    return v0

    .line 999
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 1036
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1038
    :goto_1
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 1039
    goto :goto_0

    .line 1001
    :sswitch_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1004
    :sswitch_1
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1008
    :sswitch_2
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1010
    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1011
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1014
    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1015
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1018
    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1019
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1033
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseNumberText(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 999
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private _isNextTokenNameYes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 905
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    .line 906
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 907
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 908
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 909
    iput-boolean v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 910
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 970
    :goto_0
    return-void

    .line 913
    :cond_0
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 914
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 917
    :cond_1
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 918
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 921
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 922
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_4

    .line 923
    :cond_3
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 924
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 929
    :cond_4
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 969
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 927
    :cond_5
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon()I

    move-result v0

    goto :goto_1

    .line 931
    :sswitch_0
    iput-boolean v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 932
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 935
    :sswitch_1
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 938
    :sswitch_2
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 942
    :sswitch_3
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 944
    :sswitch_4
    const-string v0, "true"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 945
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 948
    :sswitch_5
    const-string v0, "false"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 949
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 952
    :sswitch_6
    const-string v0, "null"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 953
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 966
    :sswitch_7
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseNumberText(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method private _nextAfterName()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 4

    .prologue
    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 785
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 786
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 788
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 793
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 790
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0
.end method

.method private _nextTokenNotInObject(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 737
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 738
    iput-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 739
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 779
    :goto_0
    return-object v0

    .line 741
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 779
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 743
    :sswitch_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 744
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 746
    :sswitch_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 747
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 752
    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 754
    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 755
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 757
    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 758
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 760
    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 761
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 777
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseNumberText(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 741
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private _parseFloatText([CIIZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1310
    const/4 v0, 0x0

    .line 1311
    const/4 v4, 0x0

    .line 1314
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_11

    .line 1315
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 1319
    :goto_0
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1320
    const/4 v4, 0x1

    .line 1335
    :cond_0
    if-nez v0, :cond_1

    .line 1336
    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_1
    move v6, v0

    move v0, v1

    move-object v1, p1

    .line 1340
    :goto_1
    const/4 v3, 0x0

    .line 1341
    const/16 v2, 0x65

    if-eq p3, v2, :cond_2

    const/16 v2, 0x45

    if-ne p3, v2, :cond_f

    .line 1342
    :cond_2
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 1343
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1344
    const/4 v0, 0x0

    .line 1346
    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    .line 1348
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v5, :cond_4

    .line 1349
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 1351
    :cond_4
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 1353
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_5

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_e

    .line 1354
    :cond_5
    array-length v0, v1

    if-lt v2, v0, :cond_d

    .line 1355
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1356
    const/4 v0, 0x0

    .line 1358
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 1360
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v5, :cond_6

    .line 1361
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 1363
    :cond_6
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    .line 1367
    :goto_3
    const/16 v3, 0x39

    if-gt v5, v3, :cond_c

    const/16 v3, 0x30

    if-lt v5, v3, :cond_c

    .line 1368
    add-int/lit8 v2, v2, 0x1

    .line 1369
    array-length v3, v1

    if-lt v0, v3, :cond_7

    .line 1370
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1371
    const/4 v0, 0x0

    .line 1373
    :cond_7
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    .line 1374
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v7, :cond_b

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1375
    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    .line 1381
    :goto_4
    if-nez v0, :cond_8

    .line 1382
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1387
    :cond_8
    :goto_5
    if-nez v1, :cond_9

    .line 1388
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1390
    :cond_9
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1393
    invoke-virtual {p0, p4, p5, v6, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetFloat(ZIII)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1323
    :cond_a
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 1324
    const/16 v2, 0x30

    if-lt p3, v2, :cond_0

    const/16 v2, 0x39

    if-gt p3, v2, :cond_0

    .line 1327
    add-int/lit8 v0, v0, 0x1

    .line 1328
    array-length v2, p1

    if-lt v1, v2, :cond_10

    .line 1329
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1330
    const/4 v1, 0x0

    move v2, v1

    .line 1332
    :goto_6
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_0

    .line 1378
    :cond_b
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v3

    goto :goto_3

    :cond_c
    move v1, v4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    move v2, v3

    goto/16 :goto_3

    :cond_f
    move v1, v4

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_10
    move v2, v1

    goto :goto_6

    :cond_11
    move v6, v0

    move-object v1, p1

    move v0, p2

    goto/16 :goto_1
.end method

.method private _parserNumber2([CIZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1243
    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1245
    invoke-virtual {p0, p3, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetInt(ZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1265
    :goto_1
    return-object v0

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 1248
    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    .line 1249
    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    .line 1250
    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFloatText([CIIZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1254
    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_5

    .line 1255
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1256
    const/4 v2, 0x0

    move v0, v2

    .line 1258
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 1259
    add-int/lit8 v5, v5, 0x1

    .line 1260
    goto :goto_0

    .line 1261
    :cond_4
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1262
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1265
    invoke-virtual {p0, p3, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetInt(ZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private _skipCComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2606
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2610
    :cond_0
    :goto_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2611
    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2612
    aget v2, v0, v1

    .line 2613
    if-eqz v2, :cond_0

    .line 2614
    sparse-switch v2, :sswitch_data_0

    .line 2641
    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2616
    :sswitch_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2645
    :cond_2
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2646
    :goto_1
    return-void

    .line 2619
    :cond_3
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 2620
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_1

    .line 2625
    :sswitch_1
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLF()V

    goto :goto_0

    .line 2628
    :sswitch_2
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_0

    .line 2631
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 2634
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2637
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2614
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private _skipColon()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x2f

    const/16 v3, 0x20

    .line 2513
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2514
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2517
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2518
    if-ne v0, v5, :cond_2

    .line 2519
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_4

    .line 2520
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2521
    if-le v0, v3, :cond_4

    if-eq v0, v4, :cond_4

    .line 2522
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2566
    :cond_1
    return v0

    .line 2528
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 2532
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 2546
    if-ge v0, v3, :cond_3

    .line 2547
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    .line 2556
    :cond_3
    if-eq v0, v5, :cond_4

    .line 2557
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2562
    :cond_4
    :goto_1
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2563
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2564
    if-le v0, v3, :cond_7

    .line 2565
    if-ne v0, v4, :cond_1

    .line 2568
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    goto :goto_1

    .line 2537
    :sswitch_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 2551
    :goto_2
    :sswitch_1
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_6

    .line 2552
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2554
    :cond_6
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 2540
    :sswitch_2
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLF()V

    goto :goto_2

    .line 2543
    :sswitch_3
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    goto :goto_2

    .line 2569
    :cond_7
    if-eq v0, v3, :cond_4

    .line 2570
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 2571
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLF()V

    goto :goto_1

    .line 2572
    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 2573
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_1

    .line 2574
    :cond_9
    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 2575
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_1

    .line 2579
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_constructError(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 2532
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private _skipComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 2585
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2586
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2589
    :cond_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2590
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2592
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2593
    if-ne v0, v3, :cond_2

    .line 2594
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCppComment()V

    .line 2600
    :goto_0
    return-void

    .line 2595
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 2596
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCComment()V

    goto :goto_0

    .line 2598
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private _skipCppComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2652
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2653
    :cond_0
    :goto_0
    :sswitch_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2654
    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2655
    aget v2, v0, v1

    .line 2656
    if-eqz v2, :cond_0

    .line 2657
    sparse-switch v2, :sswitch_data_0

    .line 2677
    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 2659
    :sswitch_1
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLF()V

    .line 2681
    :cond_2
    :goto_1
    return-void

    .line 2662
    :sswitch_2
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_1

    .line 2667
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 2670
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2673
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2657
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private _skipUtf8_2(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2885
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2886
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2888
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2889
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2890
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2892
    :cond_1
    return-void
.end method

.method private _skipUtf8_3(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 2900
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2901
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2904
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2905
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2906
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2908
    :cond_1
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2909
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2911
    :cond_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2912
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2913
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2915
    :cond_3
    return-void
.end method

.method private _skipUtf8_4(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 2920
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2921
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2923
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2924
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2925
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2927
    :cond_1
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2928
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2930
    :cond_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2931
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2932
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2934
    :cond_3
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_4

    .line 2935
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2937
    :cond_4
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2938
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    .line 2939
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 2941
    :cond_5
    return-void
.end method

.method private _skipWS()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2461
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2462
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2463
    if-le v0, v3, :cond_3

    .line 2464
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2465
    return v0

    .line 2467
    :cond_2
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    goto :goto_0

    .line 2468
    :cond_3
    if-eq v0, v3, :cond_0

    .line 2469
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2470
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLF()V

    goto :goto_0

    .line 2471
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2472
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_0

    .line 2473
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2474
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 2478
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_constructError(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private _skipWSOrEnd()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2484
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2485
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2486
    if-le v0, v3, :cond_3

    .line 2487
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2503
    :goto_1
    return v0

    .line 2490
    :cond_2
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    goto :goto_0

    .line 2491
    :cond_3
    if-eq v0, v3, :cond_0

    .line 2492
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2493
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLF()V

    goto :goto_0

    .line 2494
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2495
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_0

    .line 2496
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2497
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 2502
    :cond_6
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleEOF()V

    .line 2503
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private _verifyNoLeadingZeroes()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 1277
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1303
    :cond_0
    :goto_0
    return v0

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1282
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1283
    goto :goto_0

    .line 1286
    :cond_3
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1287
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1290
    :cond_4
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1291
    if-ne v0, v1, :cond_0

    .line 1292
    :cond_5
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    :cond_6
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1294
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1295
    goto :goto_0

    .line 1297
    :cond_8
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1298
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private addName([III)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1947
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 1956
    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    .line 1957
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 1959
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 1965
    :goto_0
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1966
    const/4 v5, 0x0

    .line 1968
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_b

    .line 1969
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 1970
    and-int/lit8 v4, v3, 0x3

    .line 1971
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 1972
    add-int/lit8 v3, v3, 0x1

    .line 1974
    const/16 v4, 0x7f

    if-le v2, v4, :cond_d

    .line 1976
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_8

    .line 1977
    and-int/lit8 v4, v2, 0x1f

    .line 1978
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1989
    :goto_2
    add-int v7, v3, v4

    if-le v7, v6, :cond_0

    .line 1990
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1994
    :cond_0
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1995
    and-int/lit8 v8, v3, 0x3

    .line 1996
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1997
    add-int/lit8 v3, v3, 0x1

    .line 1999
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    .line 2000
    invoke-virtual {p0, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2002
    :cond_1
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2003
    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    .line 2004
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2005
    and-int/lit8 v8, v3, 0x3

    .line 2006
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2007
    add-int/lit8 v3, v3, 0x1

    .line 2009
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    .line 2010
    invoke-virtual {p0, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2012
    :cond_2
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2013
    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    .line 2014
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2015
    and-int/lit8 v8, v3, 0x3

    .line 2016
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2017
    add-int/lit8 v3, v3, 0x1

    .line 2018
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    .line 2019
    and-int/lit16 v8, v7, 0xff

    invoke-virtual {p0, v8}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2021
    :cond_3
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2024
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_d

    .line 2025
    const/high16 v4, 0x10000

    sub-int/2addr v2, v4

    .line 2026
    array-length v4, v1

    if-lt v5, v4, :cond_5

    .line 2027
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    .line 2029
    :cond_5
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 2030
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 2033
    :goto_3
    array-length v5, v4

    if-lt v3, v5, :cond_6

    .line 2034
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 2036
    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 2037
    goto/16 :goto_1

    .line 1961
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1979
    :cond_8
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_9

    .line 1980
    and-int/lit8 v4, v2, 0xf

    .line 1981
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1982
    :cond_9
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_a

    .line 1983
    and-int/lit8 v4, v2, 0x7

    .line 1984
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1986
    :cond_a
    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    .line 1987
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 2040
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2042
    const/4 v1, 0x4

    if-ge p3, v1, :cond_c

    .line 2043
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 2045
    :cond_c
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, v2, p1, p2}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_3
.end method

.method private findName(II)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1897
    if-eqz v0, :cond_0

    .line 1902
    :goto_0
    return-object v0

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1902
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private findName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1910
    if-eqz v0, :cond_0

    .line 1916
    :goto_0
    return-object v0

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1915
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1916
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private findName([IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1922
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1923
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1925
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    .line 1926
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, v1}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1927
    if-nez v0, :cond_1

    .line 1928
    invoke-direct {p0, p1, v1, p4}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1930
    :cond_1
    return-object v0
.end method

.method public static growArrayBy([II)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3016
    if-nez p0, :cond_0

    .line 3017
    new-array v0, p1, [I

    .line 3023
    :goto_0
    return-object v0

    .line 3020
    :cond_0
    array-length v1, p0

    .line 3021
    add-int v0, v1, p1

    new-array v0, v0, [I

    .line 3022
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private nextByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2973
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2974
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2976
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private parseFieldName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1589
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private parseFieldName(IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1596
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 234
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 236
    :cond_2
    return-void
.end method

.method protected _decodeBase64(Lcom/shaded/fasterxml/jackson/core/Base64Variant;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 3039
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_getByteArrayBuilder()Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v2

    .line 3046
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    .line 3047
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3049
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 3050
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 3051
    invoke-virtual {p1, v1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 3052
    if-gez v0, :cond_3

    .line 3053
    if-ne v1, v6, :cond_2

    .line 3054
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    .line 3122
    :goto_1
    return-object v0

    .line 3056
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 3057
    if-ltz v0, :cond_0

    .line 3065
    :cond_3
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v3, :cond_4

    .line 3066
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3068
    :cond_4
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    .line 3069
    invoke-virtual {p1, v3}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v1

    .line 3070
    if-gez v1, :cond_5

    .line 3071
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v1

    .line 3073
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 3076
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_6

    .line 3077
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3079
    :cond_6
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3080
    invoke-virtual {p1, v3}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 3083
    if-gez v0, :cond_b

    .line 3084
    if-eq v0, v5, :cond_8

    .line 3086
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3087
    shr-int/lit8 v0, v1, 0x4

    .line 3088
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 3089
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 3091
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 3093
    :cond_8
    if-ne v0, v5, :cond_b

    .line 3095
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_9

    .line 3096
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3098
    :cond_9
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 3099
    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected padding character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportInvalidBase64Char(Lcom/shaded/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 3103
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 3104
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 3109
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 3111
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_c

    .line 3112
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3114
    :cond_c
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3115
    invoke-virtual {p1, v3}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 3116
    if-gez v0, :cond_f

    .line 3117
    if-eq v0, v5, :cond_e

    .line 3119
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3120
    shr-int/lit8 v0, v1, 0x2

    .line 3121
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 3122
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_1

    .line 3124
    :cond_d
    invoke-virtual {p0, p1, v3, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 3126
    :cond_e
    if-ne v0, v5, :cond_f

    .line 3133
    shr-int/lit8 v0, v1, 0x2

    .line 3134
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 3139
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 3140
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    .line 2741
    .line 2742
    if-gez p1, :cond_3

    .line 2746
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4

    .line 2747
    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    .line 2761
    :goto_0
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    move-result v3

    .line 2762
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_0

    .line 2763
    and-int/lit16 v4, v3, 0xff

    invoke-virtual {p0, v4}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2765
    :cond_0
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    .line 2767
    if-le v0, v1, :cond_3

    .line 2768
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    move-result v1

    .line 2769
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    .line 2770
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2772
    :cond_1
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    .line 2773
    if-le v0, v2, :cond_3

    .line 2774
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    move-result v0

    .line 2775
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_2

    .line 2776
    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2778
    :cond_2
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    .line 2782
    :cond_3
    return p1

    .line 2749
    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_5

    .line 2750
    and-int/lit8 p1, p1, 0xf

    move v0, v2

    .line 2751
    goto :goto_0

    .line 2752
    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_6

    .line 2754
    and-int/lit8 p1, p1, 0x7

    .line 2755
    const/4 v0, 0x3

    goto :goto_0

    .line 2757
    :cond_6
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    move v0, v1

    .line 2758
    goto :goto_0
.end method

.method protected _decodeEscaped()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2687
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2688
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2689
    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2692
    :cond_0
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2694
    sparse-switch v1, :sswitch_data_0

    .line 2717
    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 2735
    :goto_0
    return v0

    .line 2697
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 2699
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 2701
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 2703
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 2705
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 2711
    :sswitch_5
    int-to-char v0, v1

    goto :goto_0

    :sswitch_6
    move v1, v0

    .line 2722
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 2723
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 2724
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2725
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2728
    :cond_1
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    .line 2729
    invoke-static {v2}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v3

    .line 2730
    if-gez v3, :cond_2

    .line 2731
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2733
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 2722
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2735
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 2694
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2059
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2060
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2061
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2062
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2064
    :cond_0
    const/4 v1, 0x0

    .line 2065
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 2066
    sget-object v4, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesUtf8:[I

    .line 2068
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2069
    iget-object v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 2070
    :goto_0
    if-ge v1, v5, :cond_2

    .line 2071
    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    .line 2072
    aget v2, v4, v7

    if-eqz v2, :cond_1

    .line 2073
    const/16 v2, 0x22

    if-ne v7, v2, :cond_2

    .line 2074
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2075
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2085
    :goto_1
    return-void

    .line 2080
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2081
    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    .line 2082
    goto :goto_0

    .line 2083
    :cond_2
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2084
    invoke-direct {p0, v3, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString2([CI)V

    goto :goto_1
.end method

.method protected _getText2(Lcom/shaded/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 312
    :cond_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 322
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected _handleApostropheValue()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    const/4 v2, 0x0

    .line 2274
    .line 2277
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 2280
    sget-object v6, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesUtf8:[I

    .line 2281
    iget-object v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    move v1, v2

    .line 2288
    :cond_0
    :goto_0
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    .line 2289
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2291
    :cond_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 2292
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v1, v2

    .line 2295
    :cond_2
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 2297
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 2298
    if-ge v3, v4, :cond_b

    .line 2302
    :goto_1
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    if-ge v4, v3, :cond_0

    .line 2303
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    .line 2304
    if-eq v5, v9, :cond_3

    aget v4, v6, v5

    if-eqz v4, :cond_4

    .line 2312
    :cond_3
    if-ne v5, v9, :cond_5

    .line 2358
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2360
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2307
    :cond_4
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 2316
    :cond_5
    aget v3, v6, v5

    packed-switch v3, :pswitch_data_0

    .line 2344
    const/16 v3, 0x20

    if-ge v5, v3, :cond_6

    .line 2345
    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2348
    :cond_6
    invoke-virtual {p0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    :cond_7
    move v3, v5

    .line 2351
    :goto_2
    array-length v4, v0

    if-lt v1, v4, :cond_9

    .line 2352
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v4, v2

    .line 2356
    :goto_3
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_0

    .line 2318
    :pswitch_0
    const/16 v3, 0x22

    if-eq v5, v3, :cond_7

    .line 2319
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result v3

    goto :goto_2

    .line 2323
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_2(I)I

    move-result v3

    goto :goto_2

    .line 2326
    :pswitch_2
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    .line 2327
    invoke-direct {p0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3fast(I)I

    move-result v3

    goto :goto_2

    .line 2329
    :cond_8
    invoke-direct {p0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3(I)I

    move-result v3

    goto :goto_2

    .line 2333
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_4(I)I

    move-result v4

    .line 2335
    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 2336
    array-length v1, v0

    if-lt v3, v1, :cond_a

    .line 2337
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v1, v2

    .line 2340
    :goto_4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    .line 2342
    goto :goto_2

    :cond_9
    move v4, v1

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    move v3, v4

    goto/16 :goto_1

    .line 2316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2370
    move v0, p1

    :goto_0
    const/16 v1, 0x49

    if-ne v0, v1, :cond_7

    .line 2371
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 2372
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2373
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOFInValue()V

    .line 2376
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v0, v1

    .line 2378
    const/16 v0, 0x4e

    if-ne v1, v0, :cond_2

    .line 2379
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 2385
    :goto_1
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2386
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2387
    if-eqz p2, :cond_4

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2392
    :goto_3
    return-object v0

    .line 2379
    :cond_1
    const-string v0, "+INF"

    goto :goto_1

    .line 2380
    :cond_2
    const/16 v0, 0x6e

    if-ne v1, v0, :cond_6

    .line 2381
    if-eqz p2, :cond_3

    const-string v0, "-Infinity"

    goto :goto_1

    :cond_3
    const-string v0, "+Infinity"

    goto :goto_1

    .line 2387
    :cond_4
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    .line 2389
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-standard token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    move v0, v1

    .line 2390
    goto :goto_0

    :cond_6
    move v0, v1

    .line 2391
    :cond_7
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 2392
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected _handleUnexpectedValue(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2245
    sparse-switch p1, :sswitch_data_0

    .line 2267
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2268
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2247
    :sswitch_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleApostropheValue()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2252
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2253
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2256
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 2259
    :sswitch_2
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 2260
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2261
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOFInValue()V

    .line 2264
    :cond_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleInvalidNumberStart(IZ)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 2245
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected _handleUnusualFieldName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1711
    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1712
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseApostropheFieldName()Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1772
    :goto_0
    return-object v0

    .line 1715
    :cond_0
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1716
    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1722
    :cond_1
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v6

    .line 1724
    aget v1, v6, p1

    if-eqz v1, :cond_2

    .line 1725
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1732
    :cond_2
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 1739
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_6

    .line 1740
    add-int/lit8 v1, v1, 0x1

    .line 1741
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    .line 1750
    :goto_2
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_3

    .line 1751
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1752
    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1755
    :cond_3
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    .line 1756
    aget v4, v6, p1

    if-eqz v4, :cond_8

    .line 1762
    if-lez v0, :cond_5

    .line 1763
    array-length v4, v3

    if-lt v2, v4, :cond_4

    .line 1764
    array-length v4, v3

    invoke-static {v3, v4}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1766
    :cond_4
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1768
    :cond_5
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, v3, v2}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 1769
    if-nez v1, :cond_9

    .line 1770
    invoke-direct {p0, v3, v2, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1743
    :cond_6
    array-length v1, v0

    if-lt v3, v1, :cond_7

    .line 1744
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1746
    :cond_7
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    .line 1748
    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2

    .line 1759
    :cond_8
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected _loadToHaveAtLeast(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v2, v3

    .line 198
    if-lez v2, :cond_2

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    if-lez v3, :cond_2

    .line 199
    iget-wide v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    .line 200
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 201
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 206
    :goto_1
    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 207
    :goto_2
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-ge v3, p1, :cond_4

    .line 208
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget-object v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 209
    if-ge v3, v1, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_closeInput()V

    .line 213
    if-nez v3, :cond_0

    .line 214
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    goto :goto_1

    .line 218
    :cond_3
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    goto :goto_2

    :cond_4
    move v0, v1

    .line 220
    goto :goto_0
.end method

.method protected _matchToken(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2401
    :cond_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2403
    :cond_2
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 2405
    :cond_3
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2406
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 2409
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2421
    :cond_4
    :goto_0
    return-void

    .line 2412
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2413
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    .line 2417
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    .line 2418
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2419
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _parseApostropheFieldName()Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 1783
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1785
    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    .line 1789
    if-ne v5, v10, :cond_1

    .line 1790
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1883
    :goto_0
    return-object v0

    .line 1792
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1799
    sget-object v7, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesLatin1:[I

    move v3, v1

    move v4, v1

    move v2, v1

    .line 1802
    :goto_1
    if-ne v5, v10, :cond_3

    .line 1873
    if-lez v3, :cond_c

    .line 1874
    array-length v1, v0

    if-lt v2, v1, :cond_2

    .line 1875
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1877
    :cond_2
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 1879
    :goto_2
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, v1, v0}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v2

    .line 1880
    if-nez v2, :cond_b

    .line 1881
    invoke-direct {p0, v1, v0, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1806
    :cond_3
    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    aget v6, v7, v5

    if-eqz v6, :cond_f

    .line 1807
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_6

    .line 1810
    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1820
    :goto_3
    const/16 v6, 0x7f

    if-le v5, v6, :cond_f

    .line 1822
    if-lt v3, v9, :cond_e

    .line 1823
    array-length v3, v0

    if-lt v2, v3, :cond_4

    .line 1824
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1826
    :cond_4
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    .line 1830
    :goto_4
    const/16 v6, 0x800

    if-ge v5, v6, :cond_7

    .line 1831
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 1832
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    .line 1850
    :goto_5
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    .line 1854
    :goto_6
    if-ge v2, v9, :cond_9

    .line 1855
    add-int/lit8 v2, v2, 0x1

    .line 1856
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    .line 1865
    :goto_7
    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_5

    .line 1866
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1867
    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1870
    :cond_5
    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto/16 :goto_1

    .line 1813
    :cond_6
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result v5

    goto :goto_3

    .line 1835
    :cond_7
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 1836
    add-int/lit8 v2, v2, 0x1

    .line 1838
    if-lt v2, v9, :cond_d

    .line 1839
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1840
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1842
    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1846
    :goto_8
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1847
    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_5

    .line 1858
    :cond_9
    array-length v2, v0

    if-lt v4, v2, :cond_a

    .line 1859
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1861
    :cond_a
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    .line 1863
    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_7

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_8

    :cond_e
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_4

    :cond_f
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_6
.end method

.method protected _parseFieldName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    .line 1405
    if-eq p1, v5, :cond_0

    .line 1406
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnusualFieldName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1462
    :goto_0
    return-object v0

    .line 1409
    :cond_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-le v0, v1, :cond_1

    .line 1410
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->slowParseFieldName()Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 1420
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesLatin1:[I

    .line 1422
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1424
    aget v3, v1, v2

    if-nez v3, :cond_a

    .line 1425
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1426
    aget v4, v1, v3

    if-nez v4, :cond_8

    .line 1427
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1428
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1429
    aget v4, v1, v3

    if-nez v4, :cond_6

    .line 1430
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1431
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1432
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 1433
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1434
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1435
    aget v3, v1, v0

    if-nez v3, :cond_2

    .line 1436
    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 1437
    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseMediumFieldName(I[I)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1439
    :cond_2
    if-ne v0, v5, :cond_3

    .line 1440
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1442
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1444
    :cond_4
    if-ne v3, v5, :cond_5

    .line 1445
    invoke-direct {p0, v2, v8}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1447
    :cond_5
    invoke-direct {p0, v2, v3, v8}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 1449
    :cond_6
    if-ne v3, v5, :cond_7

    .line 1450
    invoke-direct {p0, v2, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 1452
    :cond_7
    invoke-direct {p0, v2, v3, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 1454
    :cond_8
    if-ne v3, v5, :cond_9

    .line 1455
    invoke-direct {p0, v2, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 1457
    :cond_9
    invoke-direct {p0, v2, v3, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 1459
    :cond_a
    if-ne v2, v5, :cond_b

    .line 1460
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 1462
    :cond_b
    invoke-direct {p0, v4, v2, v4}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected _readBinary(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x22

    const/4 v8, -0x2

    const/4 v1, 0x0

    .line 467
    .line 468
    array-length v0, p3

    add-int/lit8 v5, v0, -0x3

    move v0, v1

    move v2, v1

    .line 475
    :cond_0
    :goto_0
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xff

    .line 479
    const/16 v3, 0x20

    if-le v4, v3, :cond_0

    .line 480
    invoke-virtual {p1, v4}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v3

    .line 481
    if-gez v3, :cond_4

    .line 482
    if-ne v4, v9, :cond_3

    .line 583
    :goto_1
    iput-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 584
    if-lez v2, :cond_2

    .line 585
    add-int/2addr v0, v2

    .line 586
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 588
    :cond_2
    return v0

    .line 485
    :cond_3
    invoke-virtual {p0, p1, v4, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    .line 486
    if-ltz v3, :cond_0

    :cond_4
    move v4, v3

    .line 492
    if-le v2, v5, :cond_11

    .line 493
    add-int/2addr v0, v2

    .line 494
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move v3, v1

    .line 502
    :goto_2
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_5

    .line 503
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 505
    :cond_5
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 506
    invoke-virtual {p1, v6}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 507
    if-gez v2, :cond_6

    .line 508
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v6, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 510
    :cond_6
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 513
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_7

    .line 514
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 516
    :cond_7
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 517
    invoke-virtual {p1, v6}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 520
    if-gez v2, :cond_c

    .line 521
    if-eq v2, v8, :cond_9

    .line 523
    if-ne v6, v9, :cond_8

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_8

    .line 524
    shr-int/lit8 v4, v4, 0x4

    .line 525
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto :goto_1

    .line 528
    :cond_8
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v6, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 530
    :cond_9
    if-ne v2, v8, :cond_c

    .line 532
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_a

    .line 533
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 535
    :cond_a
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    .line 536
    invoke-virtual {p1, v2}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v10, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportInvalidBase64Char(Lcom/shaded/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 540
    :cond_b
    shr-int/lit8 v4, v4, 0x4

    .line 541
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_0

    .line 546
    :cond_c
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 548
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_d

    .line 549
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 551
    :cond_d
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 552
    invoke-virtual {p1, v6}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 553
    if-gez v2, :cond_10

    .line 554
    if-eq v2, v8, :cond_f

    .line 556
    if-ne v6, v9, :cond_e

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_e

    .line 557
    shr-int/lit8 v4, v4, 0x2

    .line 558
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 559
    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v5

    goto/16 :goto_1

    .line 562
    :cond_e
    invoke-virtual {p0, p1, v6, v10}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 564
    :cond_f
    if-ne v2, v8, :cond_10

    .line 571
    shr-int/lit8 v4, v4, 0x2

    .line 572
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 573
    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto/16 :goto_0

    .line 578
    :cond_10
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 579
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    .line 580
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 581
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_0

    :cond_11
    move v3, v2

    goto/16 :goto_2
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-super {p0}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 248
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_bufferRecyclable:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 250
    if-eqz v0, :cond_0

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 252
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 255
    :cond_0
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2989
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2990
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    .line 2992
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    .line 2993
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2999
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 3005
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 3010
    iput p2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 3011
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 3012
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2426
    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2439
    :goto_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2449
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2450
    return-void

    .line 2442
    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2443
    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    move-result v1

    int-to-char v1, v1

    .line 2444
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected _skipCR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2955
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2956
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2957
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2960
    :cond_1
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2961
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 2962
    return-void
.end method

.method protected _skipLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2966
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2967
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 2968
    return-void
.end method

.method protected _skipString()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 2182
    sget-object v3, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesUtf8:[I

    .line 2183
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 2191
    :goto_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2192
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 2193
    if-lt v1, v0, :cond_0

    .line 2194
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2195
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2196
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 2198
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2199
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 2200
    aget v5, v3, v1

    if-eqz v5, :cond_4

    .line 2201
    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2208
    const/16 v0, 0x22

    if-ne v1, v0, :cond_2

    .line 2235
    return-void

    .line 2205
    :cond_1
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_0

    .line 2212
    :cond_2
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_0

    .line 2226
    const/16 v0, 0x20

    if-ge v1, v0, :cond_3

    .line 2228
    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 2214
    :pswitch_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    goto :goto_0

    .line 2217
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 2220
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 2223
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 2231
    :cond_3
    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 2212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-super {p0}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;->close()V

    .line 801
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->release()V

    .line 802
    return-void
.end method

.method public getBinaryValue(Lcom/shaded/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 424
    :cond_1
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 426
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64(Lcom/shaded/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 441
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    return-object v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_constructError(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    if-nez v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_getByteArrayBuilder()Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/shaded/fasterxml/jackson/core/Base64Variant;)V

    .line 438
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    goto :goto_0
.end method

.method public getCodec()Lcom/shaded/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 268
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 270
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_getText2(Lcom/shaded/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_4

    .line 331
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 358
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 334
    :pswitch_0
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 337
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    .line 342
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 340
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 348
    :pswitch_1
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 349
    iput-boolean v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 350
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 355
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    .line 369
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 384
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 374
    :pswitch_1
    iget-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 375
    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 376
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 381
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 394
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    .line 395
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 399
    :pswitch_1
    iget-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 400
    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 401
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 406
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 284
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 286
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 298
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 300
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    .line 166
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 168
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 170
    if-lez v1, :cond_1

    .line 171
    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 172
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 173
    const/4 v0, 0x1

    .line 182
    :cond_0
    return v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_closeInput()V

    .line 178
    if-nez v1, :cond_0

    .line 179
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1123
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    .line 1124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1125
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1126
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1127
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1128
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 1129
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1147
    :cond_0
    :goto_0
    return-object v0

    .line 1131
    :cond_1
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 1132
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1134
    :cond_2
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 1135
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1136
    :cond_3
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1141
    :cond_4
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1143
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1145
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1141
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextFieldName(Lcom/shaded/fasterxml/jackson/core/SerializableString;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/16 v6, 0x22

    const/4 v1, 0x0

    .line 816
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_numTypesValid:I

    .line 817
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 818
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextAfterName()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 897
    :goto_0
    return v0

    .line 821
    :cond_0
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipString()V

    .line 824
    :cond_1
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 825
    if-gez v0, :cond_2

    .line 826
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->close()V

    .line 827
    iput-object v9, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 828
    goto :goto_0

    .line 830
    :cond_2
    iget-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputTotal:J

    .line 831
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    .line 832
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    .line 835
    iput-object v9, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    .line 838
    if-ne v0, v7, :cond_4

    .line 839
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v2

    if-nez v2, :cond_3

    .line 840
    invoke-virtual {p0, v0, v8}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 843
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 844
    goto :goto_0

    .line 846
    :cond_4
    if-ne v0, v8, :cond_6

    .line 847
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v2

    if-nez v2, :cond_5

    .line 848
    invoke-virtual {p0, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 850
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 851
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 852
    goto :goto_0

    .line 856
    :cond_6
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 857
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_7

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting comma to separate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 860
    :cond_7
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 863
    :cond_8
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v2

    if-nez v2, :cond_9

    .line 864
    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextTokenNotInObject(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 865
    goto/16 :goto_0

    .line 869
    :cond_9
    if-ne v0, v6, :cond_b

    .line 871
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v2

    .line 872
    array-length v3, v2

    .line 873
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-ge v4, v5, :cond_b

    .line 875
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/2addr v4, v3

    .line 876
    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    aget-byte v5, v5, v4

    if-ne v5, v6, :cond_b

    .line 878
    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 880
    :goto_1
    if-ne v1, v3, :cond_a

    .line 881
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 883
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 884
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 886
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_isNextTokenNameYes()V

    .line 887
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 889
    :cond_a
    aget-byte v6, v2, v1

    iget-object v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    add-int v8, v5, v1

    aget-byte v7, v7, v8

    if-eq v6, v7, :cond_c

    .line 897
    :cond_b
    invoke-direct {p0, v0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_isNextTokenNameMaybe(ILcom/shaded/fasterxml/jackson/core/SerializableString;)Z

    move-result v0

    goto/16 :goto_0

    .line 892
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public nextIntValue(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1077
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1078
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1079
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1080
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1081
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getIntValue()I

    move-result p1

    .line 1091
    :cond_0
    :goto_0
    return p1

    .line 1083
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1085
    :cond_2
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1091
    :cond_3
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getIntValue()I

    move-result p1

    goto :goto_0
.end method

.method public nextLongValue(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1101
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1103
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1104
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1105
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getLongValue()J

    move-result-wide p1

    .line 1115
    :cond_0
    :goto_0
    return-wide p1

    .line 1107
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1109
    :cond_2
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1115
    :cond_3
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getLongValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1047
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    .line 1048
    iput-boolean v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1049
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1050
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1051
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 1052
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 1053
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1054
    iput-boolean v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 1055
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :cond_1
    :goto_0
    return-object v0

    .line 1059
    :cond_2
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 1060
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1061
    :cond_3
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 1067
    :cond_4
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/4 v6, 0x1

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_numTypesValid:I

    .line 610
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextAfterName()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipString()V

    .line 617
    :cond_1
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 618
    if-gez v0, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->close()V

    .line 623
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    goto :goto_0

    .line 629
    :cond_2
    iget-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputTotal:J

    .line 630
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    .line 631
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    .line 634
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    .line 637
    if-ne v0, v7, :cond_4

    .line 638
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    invoke-virtual {p0, v0, v8}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 642
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 644
    :cond_4
    if-ne v0, v8, :cond_6

    .line 645
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_5

    .line 646
    invoke-virtual {p0, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 649
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 653
    :cond_6
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 654
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 657
    :cond_7
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 664
    :cond_8
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_9

    .line 665
    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextTokenNotInObject(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 668
    :cond_9
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFieldName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 671
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 672
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_a

    .line 673
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 675
    :cond_a
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 678
    const/16 v1, 0x22

    if-ne v0, v1, :cond_b

    .line 679
    iput-boolean v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 680
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 681
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 685
    :cond_b
    sparse-switch v0, :sswitch_data_0

    .line 728
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 730
    :goto_1
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 731
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 687
    :sswitch_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 690
    :sswitch_1
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 696
    :sswitch_2
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 698
    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 699
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 702
    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 703
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 706
    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 707
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 725
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseNumberText(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method protected parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 1615
    sget-object v5, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesLatin1:[I

    .line 1618
    :goto_0
    aget v0, v5, p4

    if-eqz v0, :cond_d

    .line 1619
    const/16 v0, 0x22

    if-ne p4, v0, :cond_3

    .line 1688
    if-lez p5, :cond_1

    .line 1689
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1690
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1692
    :cond_0
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1695
    if-nez v0, :cond_2

    .line 1696
    invoke-direct {p0, p1, p2, p5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1698
    :cond_2
    return-object v0

    .line 1623
    :cond_3
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6

    .line 1625
    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1635
    :goto_1
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d

    .line 1637
    if-lt p5, v7, :cond_c

    .line 1638
    array-length v0, p1

    if-lt p2, v0, :cond_4

    .line 1639
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1641
    :cond_4
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 1645
    :goto_2
    const/16 v2, 0x800

    if-ge p4, v2, :cond_7

    .line 1646
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 1647
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 1665
    :goto_3
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 1669
    :goto_4
    if-ge p5, v7, :cond_9

    .line 1670
    add-int/lit8 p5, p5, 0x1

    .line 1671
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 1680
    :goto_5
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_5

    .line 1681
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1682
    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1685
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto/16 :goto_0

    .line 1628
    :cond_6
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result p4

    goto :goto_1

    .line 1650
    :cond_7
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 1651
    add-int/lit8 v2, p5, 0x1

    .line 1653
    if-lt v2, v7, :cond_b

    .line 1654
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1655
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1657
    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1661
    :goto_6
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1662
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3

    .line 1673
    :cond_9
    array-length v2, v0

    if-lt p2, v2, :cond_a

    .line 1674
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1676
    :cond_a
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 1678
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_5

    :cond_b
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_6

    :cond_c
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2

    :cond_d
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto :goto_4
.end method

.method protected parseLongFieldName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    .line 1509
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->sInputCodesLatin1:[I

    move v2, v5

    move v4, p1

    .line 1517
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1554
    :goto_1
    return-object v0

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    .line 1523
    aget v0, v1, v9

    if-eqz v0, :cond_2

    .line 1524
    if-ne v9, v8, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1527
    :cond_1
    iget-object v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1530
    :cond_2
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    .line 1531
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1532
    aget v0, v1, v4

    if-eqz v0, :cond_4

    .line 1533
    if-ne v4, v8, :cond_3

    .line 1534
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1536
    :cond_3
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1539
    :cond_4
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1540
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1541
    aget v0, v1, v4

    if-eqz v0, :cond_6

    .line 1542
    if-ne v4, v8, :cond_5

    .line 1543
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1545
    :cond_5
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 1548
    :cond_6
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1549
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1550
    aget v0, v1, v4

    if-eqz v0, :cond_8

    .line 1551
    if-ne v4, v8, :cond_7

    .line 1552
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 1554
    :cond_7
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 1558
    :cond_8
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 1559
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-static {v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1561
    :cond_9
    iget-object v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    .line 1563
    goto/16 :goto_0
.end method

.method protected parseMediumFieldName(I[I)Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    .line 1469
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1470
    aget v1, p2, v0

    if-eqz v1, :cond_1

    .line 1471
    if-ne v0, v4, :cond_0

    .line 1472
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, p1, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1502
    :goto_0
    return-object v0

    .line 1474
    :cond_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v1, p1, v0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1476
    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 1477
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1478
    aget v2, p2, v1

    if-eqz v2, :cond_3

    .line 1479
    if-ne v1, v4, :cond_2

    .line 1480
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v1, v0, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1482
    :cond_2
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v2, v0, v1, v6}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1484
    :cond_3
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 1485
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1486
    aget v2, p2, v1

    if-eqz v2, :cond_5

    .line 1487
    if-ne v1, v4, :cond_4

    .line 1488
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v1, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1490
    :cond_4
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v2, v0, v1, v7}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1492
    :cond_5
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 1493
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1494
    aget v2, p2, v1

    if-eqz v2, :cond_7

    .line 1495
    if-ne v1, v4, :cond_6

    .line 1496
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v1, v0, v8}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1498
    :cond_6
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseFieldName(IIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 1500
    :cond_7
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    aput v4, v2, v3

    .line 1501
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    aput v0, v2, v5

    .line 1502
    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseLongFieldName(I)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseNumberText(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x39

    const/16 v2, 0x2d

    const/4 v0, 0x0

    const/16 v8, 0x30

    const/4 v5, 0x1

    .line 1176
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1178
    if-ne p1, v2, :cond_2

    move v4, v5

    .line 1181
    :goto_0
    if-eqz v4, :cond_b

    .line 1182
    aput-char v2, v1, v0

    .line 1184
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1189
    if-lt v0, v8, :cond_1

    if-le v0, v9, :cond_3

    .line 1190
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleInvalidNumberStart(IZ)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1230
    :goto_1
    return-object v0

    :cond_2
    move v4, v0

    .line 1178
    goto :goto_0

    :cond_3
    move v3, v5

    .line 1195
    :goto_2
    if-ne v0, v8, :cond_4

    .line 1196
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyNoLeadingZeroes()I

    move-result v0

    .line 1200
    :cond_4
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    .line 1204
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    array-length v3, v1

    add-int/2addr v0, v3

    .line 1205
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-le v0, v3, :cond_5

    .line 1206
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 1211
    :cond_5
    :goto_3
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    if-lt v3, v0, :cond_6

    .line 1213
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parserNumber2([CIZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1215
    :cond_6
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 1216
    if-lt v3, v8, :cond_7

    if-le v3, v9, :cond_9

    .line 1222
    :cond_7
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_8

    const/16 v0, 0x65

    if-eq v3, v0, :cond_8

    const/16 v0, 0x45

    if-ne v3, v0, :cond_a

    :cond_8
    move-object v0, p0

    .line 1223
    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFloatText([CIIZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1219
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 1220
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_3

    .line 1226
    :cond_a
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1227
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1230
    invoke-virtual {p0, v4, v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetInt(ZI)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_b
    move v3, v0

    move v0, p1

    goto :goto_2
.end method

.method public readBinaryValue(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 450
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getBinaryValue(Lcom/shaded/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 451
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 452
    array-length v0, v0

    .line 459
    :goto_0
    return v0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 457
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_readBinary(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 459
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v0
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    .line 141
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 146
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public setCodec(Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    .line 129
    return-void
.end method

.method protected slowParseFieldName()Lcom/shaded/fasterxml/jackson/core/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1574
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1576
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1580
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 1581
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1583
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedFieldName([IIIII)Lcom/shaded/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0
.end method
