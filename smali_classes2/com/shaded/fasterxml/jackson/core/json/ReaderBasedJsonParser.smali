.class public final Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;
.super Lcom/shaded/fasterxml/jackson/core/base/ParserBase;
.source "ReaderBasedJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;
    }
.end annotation


# instance fields
.field protected final _hashSeed:I

.field protected _inputBuffer:[C

.field protected _objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/shaded/fasterxml/jackson/core/ObjectCodec;Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/shaded/fasterxml/jackson/core/io/IOContext;I)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 74
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 75
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 76
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    .line 77
    iput-object p5, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 78
    invoke-virtual {p5}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->hashSeed()I

    move-result v0

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 79
    return-void
.end method

.method private _nextAfterName()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 4

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 684
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 685
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 687
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 692
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 689
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5c

    .line 1199
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1204
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    .line 1205
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1208
    :goto_0
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": was expecting closing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1213
    :cond_0
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v2, v3

    .line 1215
    if-gt v3, v5, :cond_3

    .line 1216
    if-ne v3, v5, :cond_1

    .line 1221
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    .line 1231
    :goto_1
    mul-int/lit8 v4, p2, 0x21

    add-int p2, v4, v3

    .line 1233
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    .line 1236
    array-length v0, v1

    if-lt v3, v0, :cond_4

    .line 1237
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1238
    const/4 v0, 0x0

    goto :goto_0

    .line 1222
    :cond_1
    if-gt v3, p3, :cond_3

    .line 1223
    if-ne v3, p3, :cond_2

    .line 1241
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1243
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    .line 1244
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 1245
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v2

    .line 1246
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    .line 1248
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1226
    :cond_2
    const/16 v2, 0x20

    if-ge v3, v2, :cond_3

    .line 1227
    const-string v2, "name"

    invoke-virtual {p0, v3, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private _parseUnusualFieldName2(II[I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1429
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    .line 1430
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1431
    array-length v3, p3

    .line 1434
    :goto_0
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v4, :cond_1

    .line 1435
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1459
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1461
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    .line 1462
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 1463
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v2

    .line 1464
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    .line 1466
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1439
    :cond_1
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v4, v2, v4

    .line 1441
    if-gt v4, v3, :cond_3

    .line 1442
    aget v2, p3, v4

    if-nez v2, :cond_0

    .line 1448
    :cond_2
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1449
    mul-int/lit8 v2, p2, 0x21

    add-int p2, v2, v4

    .line 1451
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    .line 1454
    array-length v0, v1

    if-lt v2, v0, :cond_4

    .line 1455
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1456
    const/4 v0, 0x0

    goto :goto_0

    .line 1445
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
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
    const/16 v3, 0x2a

    .line 1700
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1701
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1702
    if-gt v0, v3, :cond_0

    .line 1703
    if-ne v0, v3, :cond_4

    .line 1704
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1724
    :cond_2
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1725
    :goto_1
    return-void

    .line 1707
    :cond_3
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 1708
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_1

    .line 1713
    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1714
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1715
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_0

    .line 1716
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 1717
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 1718
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1719
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
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

    .line 1678
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1679
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1682
    :cond_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1683
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1686
    if-ne v0, v3, :cond_2

    .line 1687
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCppComment()V

    .line 1693
    :goto_0
    return-void

    .line 1688
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1689
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCComment()V

    goto :goto_0

    .line 1691
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private _skipCppComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1731
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1732
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1733
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1734
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1735
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    .line 1745
    :cond_2
    :goto_1
    return-void

    .line 1737
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1738
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_1

    .line 1740
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1741
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
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

    .line 1628
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1630
    if-le v0, v3, :cond_3

    .line 1631
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1632
    return v0

    .line 1634
    :cond_2
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    .line 1635
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1636
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1637
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_0

    .line 1638
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1639
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 1640
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1641
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1645
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/JsonParseException;

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

    .line 1651
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1652
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1653
    if-le v0, v3, :cond_2

    .line 1654
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 1655
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    .line 1660
    :cond_2
    if-eq v0, v3, :cond_0

    .line 1661
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1662
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLF()V

    goto :goto_0

    .line 1663
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1664
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 1665
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1666
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1671
    :cond_5
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleEOF()V

    .line 1672
    const/4 v0, -0x1

    :cond_6
    return v0
.end method

.method private _verifyNoLeadingZeroes()C
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

    .line 1090
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1115
    :cond_0
    :goto_0
    return v0

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    .line 1095
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1096
    goto :goto_0

    .line 1098
    :cond_3
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1099
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1102
    :cond_4
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1103
    if-ne v0, v1, :cond_0

    .line 1104
    :cond_5
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    :cond_6
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    .line 1106
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1107
    goto :goto_0

    .line 1109
    :cond_8
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1110
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private parseNumberText2(Z)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 969
    if-eqz p1, :cond_19

    .line 970
    aput-char v10, v4, v2

    move v0, v1

    .line 975
    :goto_0
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v5, :cond_a

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v3, v5

    .line 976
    :goto_1
    if-ne v3, v11, :cond_0

    .line 977
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyNoLeadingZeroes()C

    move-result v3

    :cond_0
    move v5, v2

    move v13, v3

    move-object v3, v4

    move v4, v13

    .line 983
    :goto_2
    if-lt v4, v11, :cond_18

    if-gt v4, v12, :cond_18

    .line 984
    add-int/lit8 v5, v5, 0x1

    .line 985
    array-length v6, v3

    if-lt v0, v6, :cond_1

    .line 986
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 989
    :cond_1
    add-int/lit8 v6, v0, 0x1

    aput-char v4, v3, v0

    .line 990
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v4, :cond_b

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_b

    move v7, v1

    move v0, v2

    move v9, v5

    move-object v4, v3

    move v5, v6

    .line 999
    :goto_3
    if-nez v9, :cond_2

    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing integer part (next char "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1005
    :cond_2
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_17

    .line 1006
    add-int/lit8 v3, v5, 0x1

    aput-char v0, v4, v5

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    .line 1010
    :goto_4
    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v6, v8, :cond_c

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v3

    move v3, v1

    .line 1026
    :goto_5
    if-nez v0, :cond_3

    .line 1027
    const-string v7, "Decimal point not followed by a digit"

    invoke-virtual {p0, v6, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_3
    move v8, v0

    move v0, v4

    move v13, v3

    move-object v3, v5

    move v5, v13

    .line 1032
    :goto_6
    const/16 v4, 0x65

    if-eq v6, v4, :cond_4

    const/16 v4, 0x45

    if-ne v6, v4, :cond_14

    .line 1033
    :cond_4
    array-length v4, v3

    if-lt v0, v4, :cond_5

    .line 1034
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 1037
    :cond_5
    add-int/lit8 v4, v0, 0x1

    aput-char v6, v3, v0

    .line 1039
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v6, :cond_e

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v6, v0, v6

    .line 1042
    :goto_7
    if-eq v6, v10, :cond_6

    const/16 v0, 0x2b

    if-ne v6, v0, :cond_13

    .line 1043
    :cond_6
    array-length v0, v3

    if-lt v4, v0, :cond_12

    .line 1044
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    move v0, v2

    .line 1047
    :goto_8
    add-int/lit8 v4, v0, 0x1

    aput-char v6, v3, v0

    .line 1049
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v6, :cond_f

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v6

    :goto_9
    move v7, v0

    move v0, v4

    move v4, v2

    .line 1054
    :goto_a
    if-gt v7, v12, :cond_11

    if-lt v7, v11, :cond_11

    .line 1055
    add-int/lit8 v4, v4, 0x1

    .line 1056
    array-length v6, v3

    if-lt v0, v6, :cond_7

    .line 1057
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 1060
    :cond_7
    add-int/lit8 v6, v0, 0x1

    aput-char v7, v3, v0

    .line 1061
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v10, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v10, :cond_10

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_10

    move v2, v4

    move v0, v1

    move v1, v6

    .line 1068
    :goto_b
    if-nez v2, :cond_8

    .line 1069
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1074
    :cond_8
    :goto_c
    if-nez v0, :cond_9

    .line 1075
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1077
    :cond_9
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1079
    invoke-virtual {p0, p1, v9, v8, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 975
    :cond_a
    const-string v3, "No digit following minus sign"

    invoke-virtual {p0, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v3

    goto/16 :goto_1

    .line 996
    :cond_b
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v4, v0, v4

    move v0, v6

    goto/16 :goto_2

    .line 1014
    :cond_c
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v3, v6

    .line 1015
    if-lt v3, v11, :cond_16

    if-le v3, v12, :cond_d

    move v6, v3

    move v3, v7

    .line 1016
    goto/16 :goto_5

    .line 1018
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 1019
    array-length v6, v5

    if-lt v4, v6, :cond_15

    .line 1020
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    move v6, v2

    .line 1023
    :goto_d
    add-int/lit8 v4, v6, 0x1

    aput-char v3, v5, v6

    goto/16 :goto_4

    .line 1039
    :cond_e
    const-string v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v6

    goto/16 :goto_7

    .line 1049
    :cond_f
    const-string v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_9

    .line 1065
    :cond_10
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v7, 0x1

    iput v10, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v7

    move v7, v0

    move v0, v6

    goto/16 :goto_a

    :cond_11
    move v2, v4

    move v1, v0

    move v0, v5

    goto :goto_b

    :cond_12
    move v0, v4

    goto/16 :goto_8

    :cond_13
    move v7, v6

    move v0, v4

    move v4, v2

    goto/16 :goto_a

    :cond_14
    move v1, v0

    move v0, v5

    goto :goto_c

    :cond_15
    move v6, v4

    goto :goto_d

    :cond_16
    move v6, v3

    move v3, v7

    goto/16 :goto_5

    :cond_17
    move v8, v2

    move v6, v0

    move-object v3, v4

    move v0, v5

    move v5, v7

    goto/16 :goto_6

    :cond_18
    move v7, v2

    move v9, v5

    move v5, v0

    move v0, v4

    move-object v4, v3

    goto/16 :goto_3

    :cond_19
    move v0, v2

    goto/16 :goto_0
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
    .line 159
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 163
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 165
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

    .line 1852
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getByteArrayBuilder()Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v2

    .line 1859
    :cond_0
    :goto_0
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    .line 1860
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v0, v1

    .line 1863
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 1864
    invoke-virtual {p1, v1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1865
    if-gez v0, :cond_3

    .line 1866
    if-ne v1, v6, :cond_2

    .line 1867
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    .line 1936
    :goto_1
    return-object v0

    .line 1869
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 1870
    if-ltz v0, :cond_0

    .line 1878
    :cond_3
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v3, :cond_4

    .line 1879
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 1881
    :cond_4
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v1, v3

    .line 1882
    invoke-virtual {p1, v3}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v1

    .line 1883
    if-gez v1, :cond_5

    .line 1884
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v1

    .line 1886
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 1889
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_6

    .line 1890
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 1892
    :cond_6
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v0, v3

    .line 1893
    invoke-virtual {p1, v3}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1896
    if-gez v0, :cond_b

    .line 1897
    if-eq v0, v5, :cond_8

    .line 1899
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1900
    shr-int/lit8 v0, v1, 0x4

    .line 1901
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 1902
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 1904
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 1906
    :cond_8
    if-ne v0, v5, :cond_b

    .line 1908
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_9

    .line 1909
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 1911
    :cond_9
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v3

    .line 1912
    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1913
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

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidBase64Char(Lcom/shaded/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1916
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 1917
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 1923
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 1925
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_c

    .line 1926
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 1928
    :cond_c
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v3, v0, v3

    .line 1929
    invoke-virtual {p1, v3}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1930
    if-gez v0, :cond_f

    .line 1931
    if-eq v0, v5, :cond_e

    .line 1933
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1934
    shr-int/lit8 v0, v1, 0x2

    .line 1935
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 1936
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_1

    .line 1938
    :cond_d
    invoke-virtual {p0, p1, v3, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 1940
    :cond_e
    if-ne v0, v5, :cond_f

    .line 1946
    shr-int/lit8 v0, v1, 0x2

    .line 1947
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 1953
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 1954
    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
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
    const/4 v1, 0x0

    .line 1751
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1753
    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1756
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    .line 1758
    sparse-switch v0, :sswitch_data_0

    .line 1781
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 1799
    :goto_0
    :sswitch_0
    return v0

    .line 1761
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1763
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 1765
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1767
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    .line 1769
    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 1786
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 1787
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 1788
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1789
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1792
    :cond_1
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    .line 1793
    invoke-static {v2}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v3

    .line 1794
    if-gez v3, :cond_2

    .line 1795
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1797
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1786
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1799
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 1758
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1478
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1479
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1481
    if-ge v0, v1, :cond_2

    .line 1482
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v2

    .line 1483
    array-length v3, v2

    .line 1486
    :cond_0
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v4, v4, v0

    .line 1487
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_1

    .line 1488
    const/16 v1, 0x22

    if-ne v4, v1, :cond_2

    .line 1489
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1490
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1506
    :goto_0
    return-void

    .line 1496
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1497
    if-lt v0, v1, :cond_0

    .line 1503
    :cond_2
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy([CII)V

    .line 1504
    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1505
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString2()V

    goto :goto_0
.end method

.method protected _finishString2()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 1511
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    .line 1512
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1515
    :goto_0
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1516
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1517
    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1520
    :cond_0
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    .line 1522
    if-gt v2, v6, :cond_1

    .line 1523
    if-ne v2, v6, :cond_2

    .line 1528
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    .line 1539
    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 1540
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1541
    const/4 v0, 0x0

    move v3, v0

    .line 1544
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 1529
    :cond_2
    if-gt v2, v5, :cond_1

    .line 1530
    if-ne v2, v5, :cond_3

    .line 1546
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1547
    return-void

    .line 1533
    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 1534
    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected _getText2(Lcom/shaded/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 248
    :cond_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected _handleApostropheValue()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x27

    .line 1386
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1387
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1390
    :goto_0
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1392
    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1395
    :cond_0
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    .line 1397
    if-gt v2, v6, :cond_1

    .line 1398
    if-ne v2, v6, :cond_2

    .line 1403
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    .line 1414
    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    .line 1415
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1416
    const/4 v0, 0x0

    move v3, v0

    .line 1419
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    .line 1404
    :cond_2
    if-gt v2, v5, :cond_1

    .line 1405
    if-ne v2, v5, :cond_3

    .line 1421
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1422
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1408
    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 1409
    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1125
    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    .line 1126
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1127
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char p1, v0, v1

    .line 1132
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    .line 1133
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 1134
    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1135
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1136
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1149
    :goto_2
    return-object v0

    .line 1133
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 1136
    goto :goto_1

    .line 1138
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    .line 1148
    :cond_4
    :goto_3
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1149
    const/4 v0, 0x0

    goto :goto_2

    .line 1139
    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    .line 1140
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 1141
    :goto_4
    invoke-virtual {p0, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1142
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1143
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 1140
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v2, v4

    .line 1143
    goto :goto_5

    .line 1145
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

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
    .line 1351
    sparse-switch p1, :sswitch_data_0

    .line 1379
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1380
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1360
    :sswitch_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleApostropheValue()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1365
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1366
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1369
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :sswitch_2
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 1373
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1374
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    .line 1377
    :cond_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1351
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected _handleUnusualFieldName(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1262
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseApostropheFieldName()Ljava/lang/String;

    move-result-object v0

    .line 1307
    :goto_0
    return-object v0

    .line 1266
    :cond_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1267
    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1269
    :cond_1
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v2

    .line 1270
    array-length v3, v2

    .line 1275
    if-ge p1, v3, :cond_6

    .line 1276
    aget v0, v2, p1

    if-nez v0, :cond_5

    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-le p1, v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 1280
    :goto_1
    if-nez v0, :cond_3

    .line 1281
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1283
    :cond_3
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1284
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 1285
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1287
    if-ge v1, v4, :cond_9

    .line 1289
    :cond_4
    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    .line 1290
    if-ge v5, v3, :cond_7

    .line 1291
    aget v6, v2, v5

    if-eqz v6, :cond_8

    .line 1292
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    .line 1293
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1294
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1276
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1278
    :cond_6
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_1

    .line 1296
    :cond_7
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1297
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    .line 1298
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1299
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1301
    :cond_8
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    .line 1302
    add-int/lit8 v1, v1, 0x1

    .line 1303
    if-lt v1, v4, :cond_4

    .line 1305
    :cond_9
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, -0x1

    .line 1306
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1307
    invoke-direct {p0, v3, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseUnusualFieldName2(II[I)Ljava/lang/String;

    move-result-object v0

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

    .line 1808
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1811
    :cond_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1812
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1813
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 1816
    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1817
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 1819
    :cond_2
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1820
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 1823
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_4

    .line 1824
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1836
    :cond_3
    :goto_0
    return-void

    .line 1828
    :cond_4
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    .line 1829
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 1833
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1834
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _parseApostropheFieldName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x27

    .line 1314
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1315
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 1316
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1318
    if-ge v1, v2, :cond_2

    .line 1319
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    .line 1320
    array-length v4, v3

    .line 1323
    :cond_0
    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    .line 1324
    if-ne v5, v7, :cond_1

    .line 1325
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1326
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1327
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    .line 1340
    :goto_0
    return-object v0

    .line 1329
    :cond_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    if-eqz v6, :cond_3

    .line 1337
    :cond_2
    :goto_1
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1338
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1340
    invoke-direct {p0, v2, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1332
    :cond_3
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    .line 1333
    add-int/lit8 v1, v1, 0x1

    .line 1334
    if-lt v1, v2, :cond_0

    goto :goto_1
.end method

.method protected _parseFieldName(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    .line 1161
    if-eq p1, v7, :cond_0

    .line 1162
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnusualFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_0
    return-object v0

    .line 1168
    :cond_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1169
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 1170
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1172
    if-ge v1, v2, :cond_3

    .line 1173
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v3

    .line 1174
    array-length v4, v3

    .line 1177
    :cond_1
    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    .line 1178
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-eqz v6, :cond_2

    .line 1179
    if-ne v5, v7, :cond_3

    .line 1180
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1181
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1182
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1186
    :cond_2
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    .line 1187
    add-int/lit8 v1, v1, 0x1

    .line 1188
    if-lt v1, v2, :cond_1

    .line 1191
    :cond_3
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1192
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1193
    invoke-direct {p0, v2, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    .line 402
    .line 403
    array-length v0, p3

    add-int/lit8 v5, v0, -0x3

    move v0, v1

    move v2, v1

    .line 410
    :cond_0
    :goto_0
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 413
    :cond_1
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v4, v3, v4

    .line 414
    const/16 v3, 0x20

    if-le v4, v3, :cond_0

    .line 415
    invoke-virtual {p1, v4}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v3

    .line 416
    if-gez v3, :cond_4

    .line 417
    if-ne v4, v9, :cond_3

    .line 518
    :goto_1
    iput-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 519
    if-lez v2, :cond_2

    .line 520
    add-int/2addr v0, v2

    .line 521
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 523
    :cond_2
    return v0

    .line 420
    :cond_3
    invoke-virtual {p0, p1, v4, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v3

    .line 421
    if-ltz v3, :cond_0

    :cond_4
    move v4, v3

    .line 427
    if-le v2, v5, :cond_11

    .line 428
    add-int/2addr v0, v2

    .line 429
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move v3, v1

    .line 437
    :goto_2
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 440
    :cond_5
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v6, v2, v6

    .line 441
    invoke-virtual {p1, v6}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    .line 442
    if-gez v2, :cond_6

    .line 443
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v6, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    .line 445
    :cond_6
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 448
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_7

    .line 449
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 451
    :cond_7
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v6, v2, v6

    .line 452
    invoke-virtual {p1, v6}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    .line 455
    if-gez v2, :cond_c

    .line 456
    if-eq v2, v8, :cond_9

    .line 458
    if-ne v6, v9, :cond_8

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_8

    .line 459
    shr-int/lit8 v4, v4, 0x4

    .line 460
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto :goto_1

    .line 463
    :cond_8
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v6, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    .line 465
    :cond_9
    if-ne v2, v8, :cond_c

    .line 467
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_a

    .line 468
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 470
    :cond_a
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v6

    .line 471
    invoke-virtual {p1, v2}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v6

    if-nez v6, :cond_b

    .line 472
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

    invoke-virtual {p0, p1, v2, v10, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidBase64Char(Lcom/shaded/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 475
    :cond_b
    shr-int/lit8 v4, v4, 0x4

    .line 476
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_0

    .line 481
    :cond_c
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 483
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_d

    .line 484
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 486
    :cond_d
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v6, v2, v6

    .line 487
    invoke-virtual {p1, v6}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    .line 488
    if-gez v2, :cond_10

    .line 489
    if-eq v2, v8, :cond_f

    .line 491
    if-ne v6, v9, :cond_e

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_e

    .line 492
    shr-int/lit8 v4, v4, 0x2

    .line 493
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 494
    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v5

    goto/16 :goto_1

    .line 497
    :cond_e
    invoke-virtual {p0, p1, v6, v10}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/shaded/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    .line 499
    :cond_f
    if-ne v2, v8, :cond_10

    .line 506
    shr-int/lit8 v4, v4, 0x2

    .line 507
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 508
    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto/16 :goto_0

    .line 513
    :cond_10
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 514
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    .line 515
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 516
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
    .line 177
    invoke-super {p0}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 178
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 181
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->releaseTokenBuffer([C)V

    .line 183
    :cond_0
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
    .line 1966
    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1978
    :goto_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1979
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1990
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    .line 1991
    return-void

    .line 1983
    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    .line 1984
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1987
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1988
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
    .line 1610
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1612
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1615
    :cond_1
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1616
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 1617
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
    .line 1621
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1622
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 1623
    return-void
.end method

.method protected _skipString()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 1557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 1559
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1560
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1561
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 1564
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1565
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1566
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1569
    :cond_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1570
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1572
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1574
    if-gt v1, v6, :cond_4

    .line 1575
    if-ne v1, v6, :cond_2

    .line 1580
    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1581
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    .line 1582
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1583
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    goto :goto_0

    .line 1584
    :cond_2
    if-gt v1, v5, :cond_4

    .line 1585
    if-ne v1, v5, :cond_3

    .line 1586
    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1596
    return-void

    .line 1589
    :cond_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_4

    .line 1590
    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1591
    const-string v4, "string value"

    invoke-virtual {p0, v1, v4}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-super {p0}, Lcom/shaded/fasterxml/jackson/core/base/ParserBase;->close()V

    .line 814
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->release()V

    .line 815
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
    .line 353
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    .line 360
    :cond_1
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 362
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64(Lcom/shaded/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 377
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
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

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-nez v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getByteArrayBuilder()Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/shaded/fasterxml/jackson/core/Base64Variant;)V

    .line 374
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    goto :goto_0
.end method

.method public getCodec()Lcom/shaded/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    return-object v0
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 141
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
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
    .line 201
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 202
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 203
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 205
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getText2(Lcom/shaded/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

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

    .line 266
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_4

    .line 267
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    .line 278
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 276
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 284
    :pswitch_1
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_3

    .line 285
    iput-boolean v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 286
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 291
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 267
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

    .line 304
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 320
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 310
    :pswitch_1
    iget-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 311
    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 312
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 317
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 305
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

    .line 330
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    .line 331
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 335
    :pswitch_1
    iget-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 336
    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 337
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 342
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 331
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
    .line 218
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 221
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 225
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
    .line 232
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 233
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 235
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 239
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

    .line 118
    iget-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    .line 119
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 121
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 123
    if-lez v1, :cond_1

    .line 124
    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 125
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 126
    const/4 v0, 0x1

    .line 135
    :cond_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_closeInput()V

    .line 131
    if-nez v1, :cond_0

    .line 132
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 782
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    .line 783
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 784
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 785
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 786
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 787
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 788
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 806
    :cond_0
    :goto_0
    return-object v0

    .line 790
    :cond_1
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 791
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 793
    :cond_2
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 794
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 795
    :cond_3
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 796
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 800
    :cond_4
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 802
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 804
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 734
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 736
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 737
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 738
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 739
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getIntValue()I

    move-result p1

    .line 750
    :cond_0
    :goto_0
    return p1

    .line 742
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 743
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 744
    :cond_2
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 750
    :cond_3
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getIntValue()I

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
    .line 758
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 760
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 761
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 762
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 763
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 764
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getLongValue()J

    move-result-wide p1

    .line 774
    :cond_0
    :goto_0
    return-wide p1

    .line 766
    :cond_1
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 767
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 768
    :cond_2
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 774
    :cond_3
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getLongValue()J

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

    .line 706
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    .line 707
    iput-boolean v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 708
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 709
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 710
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 711
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 712
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 713
    iput-boolean v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 714
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 726
    :cond_1
    :goto_0
    return-object v0

    .line 718
    :cond_2
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 719
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 720
    :cond_3
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 721
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 726
    :cond_4
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getText()Ljava/lang/String;

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

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_numTypesValid:I

    .line 546
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextAfterName()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    .line 549
    :cond_0
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipString()V

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 553
    if-gez v0, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->close()V

    .line 558
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    goto :goto_0

    .line 564
    :cond_2
    iget-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputTotal:J

    .line 565
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    .line 566
    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    .line 569
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    .line 572
    if-ne v0, v7, :cond_4

    .line 573
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 574
    invoke-virtual {p0, v0, v8}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 577
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 579
    :cond_4
    if-ne v0, v8, :cond_6

    .line 580
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_5

    .line 581
    invoke-virtual {p0, v0, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 583
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 584
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 588
    :cond_6
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 589
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 592
    :cond_7
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    .line 599
    :cond_8
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    .line 600
    if-eqz v1, :cond_a

    .line 602
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 605
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    .line 606
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_9

    .line 607
    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 609
    :cond_9
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    move-result v0

    .line 616
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 669
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnexpectedValue(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 673
    :goto_1
    if-eqz v1, :cond_d

    .line 674
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    .line 675
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 618
    :sswitch_0
    iput-boolean v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 619
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 622
    :sswitch_1
    if-nez v1, :cond_b

    .line 623
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 625
    :cond_b
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 628
    :sswitch_2
    if-nez v1, :cond_c

    .line 629
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/shaded/fasterxml/jackson/core/json/JsonReadContext;

    .line 631
    :cond_c
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 637
    :sswitch_3
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 639
    :sswitch_4
    const-string v0, "true"

    invoke-virtual {p0, v0, v6}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 640
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 643
    :sswitch_5
    const-string v0, "false"

    invoke-virtual {p0, v0, v6}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 644
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 647
    :sswitch_6
    const-string v0, "null"

    invoke-virtual {p0, v0, v6}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 648
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 666
    :sswitch_7
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->parseNumberText(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 677
    :cond_d
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 616
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

.method protected parseNumberText(I)Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x39

    const/16 v9, 0x30

    .line 847
    if-ne p1, v11, :cond_1

    move v0, v1

    .line 848
    :goto_0
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 849
    add-int/lit8 v5, v4, -0x1

    .line 850
    iget v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 854
    if-eqz v0, :cond_4

    .line 855
    iget v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v3, :cond_2

    .line 951
    :cond_0
    if-eqz v0, :cond_f

    add-int/lit8 v1, v5, 0x1

    :goto_1
    iput v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 952
    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->parseNumberText2(Z)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 847
    goto :goto_0

    .line 858
    :cond_2
    iget-object v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v4, 0x1

    aget-char p1, v6, v4

    .line 860
    if-gt p1, v10, :cond_3

    if-ge p1, v9, :cond_5

    .line 861
    :cond_3
    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 862
    invoke-virtual {p0, p1, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v3, v4

    .line 870
    :cond_5
    if-eq p1, v9, :cond_0

    .line 886
    :goto_3
    iget v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v4, :cond_0

    .line 889
    iget-object v6, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v6, v3

    .line 890
    if-lt v3, v9, :cond_6

    if-le v3, v10, :cond_b

    .line 899
    :cond_6
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_11

    move v3, v2

    move v6, v4

    .line 902
    :goto_4
    if-ge v6, v7, :cond_0

    .line 905
    iget-object v8, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v6, 0x1

    aget-char v6, v8, v6

    .line 906
    if-lt v6, v9, :cond_7

    if-le v6, v10, :cond_c

    .line 912
    :cond_7
    if-nez v3, :cond_8

    .line 913
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v6, v8}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_8
    move v12, v3

    move v3, v4

    move v4, v6

    move v6, v12

    .line 918
    :goto_5
    const/16 v8, 0x65

    if-eq v4, v8, :cond_9

    const/16 v8, 0x45

    if-ne v4, v8, :cond_e

    .line 919
    :cond_9
    if-ge v3, v7, :cond_0

    .line 923
    iget-object v8, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    .line 924
    if-eq v3, v11, :cond_a

    const/16 v8, 0x2b

    if-ne v3, v8, :cond_10

    .line 925
    :cond_a
    if-ge v4, v7, :cond_0

    .line 928
    iget-object v8, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v4, v8, v4

    .line 930
    :goto_6
    if-gt v4, v10, :cond_d

    if-lt v4, v9, :cond_d

    .line 931
    add-int/lit8 v2, v2, 0x1

    .line 932
    if-ge v3, v7, :cond_0

    .line 935
    iget-object v8, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_6

    .line 893
    :cond_b
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_3

    .line 909
    :cond_c
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    goto :goto_4

    .line 938
    :cond_d
    if-nez v2, :cond_e

    .line 939
    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v4, v7}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 944
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 945
    iput v3, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 946
    sub-int/2addr v3, v5

    .line 947
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;

    iget-object v7, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v4, v7, v5, v3}, Lcom/shaded/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 948
    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    move v1, v5

    .line 951
    goto/16 :goto_1

    :cond_10
    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_6

    :cond_11
    move v6, v2

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_5
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
    .line 385
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 386
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getBinaryValue(Lcom/shaded/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 387
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 388
    array-length v0, v0

    .line 395
    :goto_0
    return v0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 393
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_readBinary(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 395
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v0
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    .line 101
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    iget v1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 106
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public setCodec(Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    .line 95
    return-void
.end method
