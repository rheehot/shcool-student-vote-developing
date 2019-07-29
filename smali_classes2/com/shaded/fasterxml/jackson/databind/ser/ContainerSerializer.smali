.class public abstract Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ContainerSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;->_handledType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract _withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getContentSerializer()Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;
.end method

.method protected hasContentTypeAnnotation(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Z
    .locals 3

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {p2}, Lcom/shaded/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    invoke-interface {p2}, Lcom/shaded/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hasSingleElement(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isEmpty(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;->_withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object p0

    goto :goto_0
.end method
