.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;
.super Ljava/lang/Object;
.source "ContextualSerializer.java"


# virtual methods
.method public abstract createContextual(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method
