.class public Lcom/shaded/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/std/StdKeySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateKeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field protected static final instance:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;->instance:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 66
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;->serialize(Ljava/util/Date;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Date;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p3, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 78
    return-void
.end method
