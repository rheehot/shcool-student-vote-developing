.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$1;,
        Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isCreatorVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
.end method

.method public abstract isCreatorVisible(Ljava/lang/reflect/Member;)Z
.end method

.method public abstract isFieldVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Z
.end method

.method public abstract isFieldVisible(Ljava/lang/reflect/Field;)Z
.end method

.method public abstract isGetterVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isGetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract isIsGetterVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isIsGetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract isSetterVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isSetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withCreatorVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withFieldVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withIsGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withSetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withVisibility(Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method
