.class Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "AndroidJsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator$StringNumber;
    }
.end annotation


# instance fields
.field private final factory:Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;

.field private final writer:Landroid/util/JsonWriter;


# direct methods
.method constructor <init>(Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;Landroid/util/JsonWriter;)V
    .locals 1
    .param p1, "factory"    # Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;
    .param p2, "writer"    # Landroid/util/JsonWriter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/JsonGenerator;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->factory:Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;

    .line 43
    iput-object p2, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->setLenient(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    .line 56
    return-void
.end method

.method public enablePrettyPrint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 51
    return-void
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->factory:Lcom/google/api/client/extensions/android3/json/AndroidJsonFactory;

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 66
    return-void
.end method

.method public writeEndArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 71
    return-void
.end method

.method public writeEndObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 76
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 81
    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 86
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 116
    return-void
.end method

.method public writeNumber(F)V
    .locals 4
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 121
    return-void
.end method

.method public writeNumber(I)V
    .locals 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 91
    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 96
    return-void
.end method

.method public writeNumber(Lcom/google/common/primitives/UnsignedInteger;)V
    .locals 1
    .param p1, "v"    # Lcom/google/common/primitives/UnsignedInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 106
    return-void
.end method

.method public writeNumber(Lcom/google/common/primitives/UnsignedLong;)V
    .locals 1
    .param p1, "v"    # Lcom/google/common/primitives/UnsignedLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 111
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    new-instance v1, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator$StringNumber;

    invoke-direct {v1, p1}, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator$StringNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 171
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 126
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 101
    return-void
.end method

.method public writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 176
    return-void
.end method

.method public writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 181
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/api/client/extensions/android3/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 186
    return-void
.end method
