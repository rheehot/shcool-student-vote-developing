.class public Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/FailingDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "FailingDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 22
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/FailingDeserializer;->_message:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/FailingDeserializer;->_message:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method
