.class public Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;
.super Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
.source "JsonGeneratorDelegate.java"


# instance fields
.field protected delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 26
    return-void
.end method


# virtual methods
.method public canUseSchema(Lcom/shaded/fasterxml/jackson/core/FormatSchema;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->canUseSchema(Lcom/shaded/fasterxml/jackson/core/FormatSchema;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 402
    return-void
.end method

.method public copyCurrentEvent(Lcom/shaded/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->copyCurrentEvent(Lcom/shaded/fasterxml/jackson/core/JsonParser;)V

    .line 370
    return-void
.end method

.method public copyCurrentStructure(Lcom/shaded/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->copyCurrentStructure(Lcom/shaded/fasterxml/jackson/core/JsonParser;)V

    .line 375
    return-void
.end method

.method public disable(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->disable(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 85
    return-object p0
.end method

.method public enable(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->enable(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 79
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 397
    return-void
.end method

.method public getCharacterEscapes()Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->getCharacterEscapes()Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;

    move-result-object v0

    return-object v0
.end method

.method public getCodec()Lcom/shaded/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->getCodec()Lcom/shaded/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->getHighestEscapedChar()I

    move-result v0

    return v0
.end method

.method public getOutputContext()Lcom/shaded/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->getOutputContext()Lcom/shaded/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->getOutputTarget()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrettyPrinter()Lcom/shaded/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->getPrettyPrinter()Lcom/shaded/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lcom/shaded/fasterxml/jackson/core/FormatSchema;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->getSchema()Lcom/shaded/fasterxml/jackson/core/FormatSchema;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public setCharacterEscapes(Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->setCharacterEscapes(Lcom/shaded/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 138
    return-object p0
.end method

.method public setCodec(Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->setCodec(Lcom/shaded/fasterxml/jackson/core/ObjectCodec;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 36
    return-object p0
.end method

.method public setHighestNonEscapedChar(I)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->setHighestNonEscapedChar(I)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 122
    return-object p0
.end method

.method public setPrettyPrinter(Lcom/shaded/fasterxml/jackson/core/PrettyPrinter;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/shaded/fasterxml/jackson/core/PrettyPrinter;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 105
    return-object p0
.end method

.method public setRootValueSeparator(Lcom/shaded/fasterxml/jackson/core/SerializableString;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->setRootValueSeparator(Lcom/shaded/fasterxml/jackson/core/SerializableString;)Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 67
    return-object p0
.end method

.method public setSchema(Lcom/shaded/fasterxml/jackson/core/FormatSchema;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->setSchema(Lcom/shaded/fasterxml/jackson/core/FormatSchema;)V

    .line 42
    return-void
.end method

.method public useDefaultPrettyPrinter()Lcom/shaded/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->useDefaultPrettyPrinter()Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    .line 116
    return-object p0
.end method

.method public version()Lcom/shaded/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->version()Lcom/shaded/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeBinary(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public writeBinary(Lcom/shaded/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/shaded/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 269
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 330
    return-void
.end method

.method public writeEndArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 156
    return-void
.end method

.method public writeEndObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 166
    return-void
.end method

.method public writeFieldName(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V

    .line 180
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 335
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 308
    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 314
    return-void
.end method

.method public writeNumber(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 291
    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 296
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 320
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    .line 302
    return-void
.end method

.method public writeNumber(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    .line 286
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 247
    return-void
.end method

.method public writeRaw(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRaw(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V

    .line 237
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;II)V

    .line 231
    return-void
.end method

.method public writeRaw([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRaw([CII)V

    .line 242
    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRawUTF8String([BII)V

    .line 208
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;II)V

    .line 257
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRawValue([CII)V

    .line 262
    return-void
.end method

.method public writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 150
    return-void
.end method

.method public writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 161
    return-void
.end method

.method public writeString(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeString(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V

    .line 201
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public writeString([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    .line 196
    return-void
.end method

.method public writeTree(Lcom/shaded/fasterxml/jackson/core/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeTree(Lcom/shaded/fasterxml/jackson/core/TreeNode;)V

    .line 351
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/core/util/JsonGeneratorDelegate;->delegate:Lcom/shaded/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeUTF8String([BII)V

    .line 215
    return-void
.end method
