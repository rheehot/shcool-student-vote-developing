.class public interface abstract Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Indenter"
.end annotation


# virtual methods
.method public abstract isInline()Z
.end method

.method public abstract writeIndentation(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation
.end method
