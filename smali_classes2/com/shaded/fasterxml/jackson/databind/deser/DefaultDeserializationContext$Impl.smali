.class public final Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;
.super Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.source "DefaultDeserializationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)V

    .line 209
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;)V

    .line 204
    return-void
.end method


# virtual methods
.method public createInstance(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)V

    return-object v0
.end method

.method public with(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    return-object v0
.end method
