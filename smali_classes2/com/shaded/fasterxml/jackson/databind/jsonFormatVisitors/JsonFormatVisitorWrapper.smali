.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
.super Ljava/lang/Object;
.source "JsonFormatVisitorWrapper.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWithSerializerProvider;


# virtual methods
.method public abstract expectAnyFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectArrayFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectBooleanFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonBooleanFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectIntegerFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectMapFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectNullFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonNullFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectNumberFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectObjectFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract expectStringFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method
