.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
.super Ljava/lang/Object;
.source "JsonObjectFormatVisitor.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWithSerializerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor$Base;
    }
.end annotation


# virtual methods
.method public abstract optionalProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract optionalProperty(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract optionalProperty(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract property(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract property(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract property(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method
