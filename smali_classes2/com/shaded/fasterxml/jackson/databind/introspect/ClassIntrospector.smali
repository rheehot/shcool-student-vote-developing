.class public abstract Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract forClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;"
        }
    .end annotation
.end method

.method public abstract forCreation(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
.end method

.method public abstract forDeserialization(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
.end method

.method public abstract forDeserializationWithBuilder(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
.end method

.method public abstract forDirectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;"
        }
    .end annotation
.end method

.method public abstract forSerialization(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
.end method
