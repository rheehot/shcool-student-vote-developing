.class public abstract Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "StdArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "TypedPrimitiveArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer",
            "<TT;>;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    .line 76
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 71
    return-void
.end method
