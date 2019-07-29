.class public abstract Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;
.super Lcom/shaded/fasterxml/jackson/core/base/GeneratorBase;
.source "JsonGeneratorImpl.java"


# static fields
.field protected static final sOutputEscapes:[I


# instance fields
.field protected _characterEscapes:Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;

.field protected final _ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

.field protected _maximumNonEscapedChar:I

.field protected _outputEscapes:[I

.field protected _rootValueSeparator:Lcom/shaded/fasterxml/jackson/core/SerializableString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/shaded/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->sOutputEscapes:[I

    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/core/io/IOContext;ILcom/shaded/fasterxml/jackson/core/ObjectCodec;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p2, p3}, Lcom/shaded/fasterxml/jackson/core/base/GeneratorBase;-><init>(ILcom/shaded/fasterxml/jackson/core/ObjectCodec;)V

    .line 53
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->sOutputEscapes:[I

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_outputEscapes:[I

    .line 84
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_rootValueSeparator:Lcom/shaded/fasterxml/jackson/core/SerializableString;

    .line 96
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_ioContext:Lcom/shaded/fasterxml/jackson/core/io/IOContext;

    .line 97
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->setHighestNonEscapedChar(I)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public getCharacterEscapes()Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_characterEscapes:Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_maximumNonEscapedChar:I

    return v0
.end method

.method public setCharacterEscapes(Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_characterEscapes:Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;

    .line 123
    if-nez p1, :cond_0

    .line 124
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->sOutputEscapes:[I

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_outputEscapes:[I

    .line 128
    :goto_0
    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_outputEscapes:[I

    goto :goto_0
.end method

.method public setHighestNonEscapedChar(I)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .prologue
    .line 110
    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_maximumNonEscapedChar:I

    .line 111
    return-object p0
.end method

.method public setRootValueSeparator(Lcom/shaded/fasterxml/jackson/core/SerializableString;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->_rootValueSeparator:Lcom/shaded/fasterxml/jackson/core/SerializableString;

    .line 143
    return-object p0
.end method

.method public version()Lcom/shaded/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/core/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->writeFieldName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/core/json/JsonGeneratorImpl;->writeString(Ljava/lang/String;)V

    .line 171
    return-void
.end method
