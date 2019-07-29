.class public interface abstract Lcom/shaded/fasterxml/jackson/databind/Module$SetupContext;
.super Ljava/lang/Object;
.source "Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SetupContext"
.end annotation


# virtual methods
.method public abstract addAbstractTypeResolver(Lcom/shaded/fasterxml/jackson/databind/AbstractTypeResolver;)V
.end method

.method public abstract addBeanDeserializerModifier(Lcom/shaded/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)V
.end method

.method public abstract addBeanSerializerModifier(Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
.end method

.method public abstract addDeserializationProblemHandler(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)V
.end method

.method public abstract addDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;)V
.end method

.method public abstract addKeyDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/KeyDeserializers;)V
.end method

.method public abstract addKeySerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)V
.end method

.method public abstract addSerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)V
.end method

.method public abstract addTypeModifier(Lcom/shaded/fasterxml/jackson/databind/type/TypeModifier;)V
.end method

.method public abstract addValueInstantiators(Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators;)V
.end method

.method public abstract appendAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V
.end method

.method public abstract getMapperVersion()Lcom/shaded/fasterxml/jackson/core/Version;
.end method

.method public abstract getOwner()Lcom/shaded/fasterxml/jackson/core/ObjectCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcom/shaded/fasterxml/jackson/core/ObjectCodec;",
            ">()TC;"
        }
    .end annotation
.end method

.method public abstract getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;
.end method

.method public abstract insertAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V
.end method

.method public abstract isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonFactory$Feature;)Z
.end method

.method public abstract isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Z
.end method

.method public abstract isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z
.end method

.method public abstract isEnabled(Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;)Z
.end method

.method public abstract isEnabled(Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Z
.end method

.method public abstract isEnabled(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;)Z
.end method

.method public varargs abstract registerSubtypes([Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;)V
.end method

.method public varargs abstract registerSubtypes([Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract setClassIntrospector(Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;)V
.end method

.method public abstract setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method
