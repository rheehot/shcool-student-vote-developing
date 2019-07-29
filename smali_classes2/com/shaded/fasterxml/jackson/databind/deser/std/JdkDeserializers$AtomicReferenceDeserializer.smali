.class public Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "JdkDeserializers.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomicReferenceDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<*>;>;",
        "Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


# instance fields
.field protected final _referencedType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

.field protected final _valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 333
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 334
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;->_referencedType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 335
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 336
    return-void
.end method


# virtual methods
.method public createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 350
    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;->_referencedType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;->_referencedType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v2, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
