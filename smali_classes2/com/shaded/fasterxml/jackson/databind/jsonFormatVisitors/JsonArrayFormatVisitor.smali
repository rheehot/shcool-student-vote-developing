.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
.super Ljava/lang/Object;
.source "JsonArrayFormatVisitor.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWithSerializerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;
    }
.end annotation


# virtual methods
.method public abstract itemsFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract itemsFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method
