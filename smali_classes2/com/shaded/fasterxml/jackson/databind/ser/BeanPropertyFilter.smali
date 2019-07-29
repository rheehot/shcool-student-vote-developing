.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyFilter;
.super Ljava/lang/Object;
.source "BeanPropertyFilter.java"


# virtual methods
.method public abstract depositSchemaProperty(Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract depositSchemaProperty(Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract serializeAsField(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
