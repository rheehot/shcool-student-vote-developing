.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.super Ljava/lang/Object;
.source "TypeResolverBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract buildTypeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;"
        }
    .end annotation
.end method

.method public abstract buildTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;"
        }
    .end annotation
.end method

.method public abstract defaultImpl(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract getDefaultImpl()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract inclusion(Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract init(Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$Id;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract typeIdVisibility(Z)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method

.method public abstract typeProperty(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
