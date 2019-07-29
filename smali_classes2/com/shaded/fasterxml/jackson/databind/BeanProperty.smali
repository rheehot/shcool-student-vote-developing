.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/BeanProperty;
.super Ljava/lang/Object;
.source "BeanProperty.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/util/Named;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/BeanProperty$Std;
    }
.end annotation


# virtual methods
.method public abstract depositSchemaProperty(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getMember()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/shaded/fasterxml/jackson/databind/JavaType;
.end method

.method public abstract getWrapperName()Lcom/shaded/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract isRequired()Z
.end method
