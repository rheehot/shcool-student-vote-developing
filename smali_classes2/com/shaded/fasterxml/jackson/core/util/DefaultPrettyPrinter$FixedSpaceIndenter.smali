.class public Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;
.super Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
.source "DefaultPrettyPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSpaceIndenter"
.end annotation


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;->instance:Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public writeIndentation(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 340
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 341
    return-void
.end method
