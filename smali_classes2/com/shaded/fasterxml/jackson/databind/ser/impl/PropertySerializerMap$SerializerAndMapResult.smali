.class public final Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializerAndMapResult"
.end annotation


# instance fields
.field public final map:Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field public final serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 75
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 76
    return-void
.end method
