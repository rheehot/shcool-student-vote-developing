.class public abstract Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.super Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;
.source "DefaultDeserializationContext.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _objectIds:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;)V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract createInstance(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method

.method public deserializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v1

    .line 93
    :cond_1
    instance-of v0, p2, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 94
    check-cast p2, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-object v1, p2

    .line 118
    :cond_2
    :goto_1
    instance-of v0, v1, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 119
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_0

    .line 99
    :cond_3
    instance-of v0, p2, Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4
    check-cast p2, Ljava/lang/Class;

    .line 104
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq p2, v0, :cond_0

    const-class v0, Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;

    if-eq p2, v0, :cond_0

    .line 107
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected Class<JsonDeserializer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 111
    if-nez v0, :cond_6

    .line 112
    :goto_2
    if-nez v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-object v1, v0

    goto/16 :goto_1

    .line 111
    :cond_6
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;->deserializerInstance(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    goto :goto_2
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p2, p1}, Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;->key(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object v1

    .line 63
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    .line 71
    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;-><init>(Ljava/lang/Object;)V

    .line 72
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .line 67
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final keyDeserializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v1

    .line 135
    :cond_1
    instance-of v0, p2, Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    if-eqz v0, :cond_3

    .line 136
    check-cast p2, Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-object v1, p2

    .line 160
    :cond_2
    :goto_1
    instance-of v0, v1, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 161
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_0

    .line 138
    :cond_3
    instance-of v0, p2, Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_4
    check-cast p2, Ljava/lang/Class;

    .line 145
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq p2, v0, :cond_0

    const-class v0, Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;

    if-eq p2, v0, :cond_0

    .line 148
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected Class<KeyDeserializer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 153
    if-nez v0, :cond_6

    .line 154
    :goto_2
    if-nez v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-object v1, v0

    goto/16 :goto_1

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;->keyDeserializerInstance(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v1

    goto :goto_2
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method
