.class public interface abstract annotation Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize;
.super Ljava/lang/Object;
.source "JsonSerialize.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize;
        as = Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;
        contentAs = Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;
        contentConverter = Lcom/shaded/fasterxml/jackson/databind/util/Converter$None;
        contentUsing = Lcom/shaded/fasterxml/jackson/databind/JsonSerializer$None;
        converter = Lcom/shaded/fasterxml/jackson/databind/util/Converter$None;
        include = .enum Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ALWAYS:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
        keyAs = Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;
        keyUsing = Lcom/shaded/fasterxml/jackson/databind/JsonSerializer$None;
        typing = .enum Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DYNAMIC:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
        using = Lcom/shaded/fasterxml/jackson/databind/JsonSerializer$None;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;,
        Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
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
.method public abstract as()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract contentAs()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract contentConverter()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/util/Converter",
            "<**>;>;"
        }
    .end annotation
.end method

.method public abstract contentUsing()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract converter()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/util/Converter",
            "<**>;>;"
        }
    .end annotation
.end method

.method public abstract include()Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract keyAs()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract keyUsing()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract typing()Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
.end method

.method public abstract using()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end method
