.class public Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;
.source "StringCollectionSerializer.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/std/StaticListSerializerBase",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;


# instance fields
.field protected final _serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->instance:Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    const-class v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;-><init>(Ljava/lang/Class;)V

    .line 47
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 48
    return-void
.end method

.method private final _serializeUnwrapped(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0
.end method

.method private final serializeContents(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 176
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    .line 164
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    if-nez v0, :cond_2

    .line 167
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 171
    :goto_1
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 175
    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->wrapAndThrow(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    move v0, v1

    goto :goto_2
.end method

.method private serializeUsingCustom(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 182
    const/4 v2, 0x0

    .line 183
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    if-nez v0, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {p0, p3, v0, p1, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->wrapAndThrow(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 188
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method


# virtual methods
.method protected acceptContentVisitor(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    invoke-interface {p1, v0}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V

    .line 59
    return-void
.end method

.method protected contentSchema()Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .prologue
    .line 51
    const-string v0, "string"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public createContextual(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    .line 78
    if-eqz p2, :cond_5

    .line 79
    invoke-interface {p2}, Lcom/shaded/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    invoke-virtual {p1, v0, v2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 87
    :goto_0
    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->findConvertingContentSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 98
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->isDefaultSerializer(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-ne v0, v1, :cond_4

    .line 105
    :goto_2
    return-object p0

    .line 94
    :cond_3
    instance-of v2, v0, Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;

    if-eqz v2, :cond_1

    .line 95
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;

    invoke-interface {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_1

    .line 105
    :cond_4
    new-instance p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    invoke-direct {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serialize(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializeUnwrapped(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 124
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 129
    :goto_1
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeWithType(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 148
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeContents(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 153
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 154
    return-void

    .line 151
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->serializeUsingCustom(Ljava/util/Collection;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0
.end method
