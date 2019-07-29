.class public abstract Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "DelegatingDeserializer.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;",
        "Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_figureType(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 38
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 39
    return-void
.end method

.method private static _figureType(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    instance-of v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected _createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-ne p3, v0, :cond_0

    .line 82
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->newDelegatingInstance(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p0

    goto :goto_0
.end method

.method public createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
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
    .line 69
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 70
    instance-of v1, v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 73
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatee()Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    return-object v0
.end method

.method public getEmptyValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKnownPropertyNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectIdReader()Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v0

    return-object v0
.end method

.method public isCachable()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract newDelegatingInstance(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method public replaceDelegatee(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-ne p1, v0, :cond_0

    .line 127
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->newDelegatingInstance(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p0

    goto :goto_0
.end method

.method public resolve(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    instance-of v0, v0, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)V

    .line 62
    :cond_0
    return-void
.end method
