.class public final Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "StringCollectionDeserializer.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _collectionType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

.field protected final _delegateDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 69
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 70
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 71
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 72
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 73
    return-void
.end method

.method private deserializeUsingCustom(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 185
    :goto_0
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 188
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 193
    :goto_1
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_1
    return-object p3
.end method

.method private final handleNonArray(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 222
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 226
    sget-object v2, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 227
    const/4 v0, 0x0

    .line 231
    :goto_0
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    return-object p3

    .line 229
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_parseString(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    .line 96
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateCreator()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 100
    invoke-virtual {p0, p1, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->findDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    move-object v1, v0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 104
    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->findConvertingContentDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 116
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->isDefaultDeserializer(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->withResolved(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;

    move-result-object v0

    return-object v0

    .line 112
    :cond_1
    instance-of v3, v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v3, :cond_0

    .line 113
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 156
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 156
    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->handleNonArray(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3

    .line 177
    :cond_0
    :goto_0
    return-object p3

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserializeUsingCustom(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/Collection;

    move-result-object p3

    goto :goto_0

    .line 174
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 175
    sget-object v1, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_parseString(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public deserializeWithType(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p3, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentDeserializer()Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 137
    return-object v0
.end method

.method public getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected withResolved(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v0, p1, :cond_0

    .line 81
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    move-object p0, v0

    goto :goto_0
.end method
