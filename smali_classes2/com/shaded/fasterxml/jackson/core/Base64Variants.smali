.class public final Lcom/shaded/fasterxml/jackson/core/Base64Variants;
.super Ljava/lang/Object;
.source "Base64Variants.java"


# static fields
.field public static final MIME:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

.field public static final MIME_NO_LINEFEEDS:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

.field public static final MODIFIED_FOR_URL:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

.field public static final PEM:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

.field static final STD_BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7fffffff

    const/16 v4, 0x3d

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 34
    new-instance v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/16 v5, 0x4c

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    .line 45
    new-instance v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    const-string v2, "MIME-NO-LINEFEEDS"

    invoke-direct {v0, v1, v2, v7}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    .line 52
    new-instance v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    const-string v2, "PEM"

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/shaded/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->PEM:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    .line 67
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 70
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5f

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 74
    new-instance v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    const-string v1, "MODIFIED-FOR-URL"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v6

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/core/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MODIFIED_FOR_URL:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultVariant()Lcom/shaded/fasterxml/jackson/core/Base64Variant;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/core/Base64Variant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    .line 102
    :goto_0
    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->PEM:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->PEM:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MODIFIED_FOR_URL:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/Base64Variants;->MODIFIED_FOR_URL:Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    goto :goto_0

    .line 104
    :cond_3
    if-nez p0, :cond_4

    .line 105
    const-string v0, "<null>"

    .line 109
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Base64Variant with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
