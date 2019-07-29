.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;
.super Ljava/lang/Object;
.source "ContextualDeserializer.java"


# virtual methods
.method public abstract createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
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
.end method
