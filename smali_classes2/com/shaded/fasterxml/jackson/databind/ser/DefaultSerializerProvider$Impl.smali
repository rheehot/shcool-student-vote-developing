.class public final Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;
.super Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.source "DefaultSerializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider;-><init>(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;)V

    .line 438
    return-void
.end method


# virtual methods
.method public createInstance(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    invoke-direct {v0, p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;-><init>(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;)V

    return-object v0
.end method

.method public bridge synthetic createInstance(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->createInstance(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/shaded/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    move-result-object v0

    return-object v0
.end method
