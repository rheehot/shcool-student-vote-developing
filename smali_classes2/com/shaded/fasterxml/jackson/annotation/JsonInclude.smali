.class public interface abstract annotation Lcom/shaded/fasterxml/jackson/annotation/JsonInclude;
.super Ljava/lang/Object;
.source "JsonInclude.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/shaded/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;
.end method
