.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;
.super Ljava/lang/Object;
.source "JsonMapFormatVisitor.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWithSerializerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor$Base;
    }
.end annotation


# virtual methods
.method public abstract keyFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract valueFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method
