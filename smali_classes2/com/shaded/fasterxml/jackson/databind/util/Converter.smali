.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/util/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/util/Converter$None;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN;)TOUT;"
        }
    .end annotation
.end method

.method public abstract getInputType(Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
.end method

.method public abstract getOutputType(Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
.end method
