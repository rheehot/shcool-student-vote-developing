.class final Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder$2;
.super Ljava/lang/ThreadLocal;
.source "MessageBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/nio/charset/CharsetEncoder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder$2;->initialValue()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .prologue
    .line 67
    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 68
    .local v1, "utf8":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 69
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 70
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 71
    return-object v0
.end method
