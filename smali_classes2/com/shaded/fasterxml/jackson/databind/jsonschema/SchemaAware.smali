.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/jsonschema/SchemaAware;
.super Ljava/lang/Object;
.source "SchemaAware.java"


# virtual methods
.method public abstract getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;Z)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method
