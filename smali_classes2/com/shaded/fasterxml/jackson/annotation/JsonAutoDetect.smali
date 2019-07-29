.class public interface abstract annotation Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;
.super Ljava/lang/Object;
.source "JsonAutoDetect.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;
        creatorVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
        fieldVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
        getterVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
        isGetterVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
        setterVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$1;,
        Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract creatorVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end method

.method public abstract fieldVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end method

.method public abstract getterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end method

.method public abstract isGetterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end method

.method public abstract setterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end method
