.class public Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "EnumMapSerializer.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
        "<",
        "Ljava/util/EnumMap",
        "<+",
        "Ljava/lang/Enum",
        "<*>;*>;>;",
        "Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# instance fields
.field protected final _keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

.field protected final _property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

.field protected final _staticTyping:Z

.field protected final _valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

.field protected final _valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/util/EnumValues;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    const-class v1, Ljava/util/EnumMap;

    invoke-direct {p0, v1, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    .line 72
    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z

    .line 73
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 74
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    .line 75
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 76
    iput-object p5, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;)V

    .line 87
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    .line 88
    iget-boolean v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z

    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z

    .line 89
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 90
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    .line 91
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 92
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 93
    return-void
.end method


# virtual methods
.method public bridge synthetic _withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public _withValueTypeSerializer(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
    .locals 6

    .prologue
    .line 97
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-boolean v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/util/EnumValues;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v0
.end method

.method public acceptJsonFormatVisitor(Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 329
    if-nez p1, :cond_1

    .line 365
    :cond_0
    return-void

    .line 332
    :cond_1
    invoke-interface {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectObjectFormat(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;

    move-result-object v4

    .line 333
    if-eqz v4, :cond_0

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 338
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 339
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {v1, v0, v2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 341
    :cond_2
    if-nez v0, :cond_8

    .line 342
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    move-object v2, v0

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    .line 345
    if-nez v0, :cond_6

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 347
    if-nez v0, :cond_3

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not resolve Enum type of EnumMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 352
    :goto_1
    instance-of v3, v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSerializer;

    if-nez v3, :cond_5

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not resolve Enum type of EnumMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_4
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v3

    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {v3, v0, v5}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_1

    .line 355
    :cond_5
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSerializer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSerializer;->getEnumValues()Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    move-result-object v0

    .line 357
    :cond_6
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;->internalMap()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 360
    if-nez v3, :cond_7

    .line 361
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v6, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {v3, v0, v6}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 363
    :goto_3
    invoke-interface {v4, v1, v0, v2}, Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;->property(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/shaded/fasterxml/jackson/databind/JavaType;)V

    move-object v3, v0

    .line 364
    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move-object v2, v0

    goto/16 :goto_0
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
    .line 116
    const/4 v0, 0x0

    .line 118
    if-eqz p2, :cond_0

    .line 119
    invoke-interface {p2}, Lcom/shaded/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p1, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 127
    :cond_0
    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 131
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->findConvertingContentSerializer(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 132
    if-nez v0, :cond_3

    .line 133
    iget-boolean v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z

    if-eqz v1, :cond_4

    .line 134
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->withValueSerializer(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;

    move-result-object p0

    .line 142
    :cond_2
    :goto_0
    return-object p0

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    instance-of v1, v1, Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;

    if-eqz v1, :cond_4

    .line 137
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;

    invoke-interface {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-eq v0, v1, :cond_2

    .line 140
    invoke-virtual {p0, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->withValueSerializer(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;

    move-result-object p0

    goto :goto_0
.end method

.method public getContentSerializer()Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 299
    const-string v0, "object"

    invoke-virtual {p0, v0, v5}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    .line 300
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 301
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 302
    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 303
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 304
    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 305
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v5

    .line 306
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v6, v0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v0, v2

    .line 308
    invoke-virtual {v4}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v8, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v1, v8}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 309
    instance-of v8, v1, Lcom/shaded/fasterxml/jackson/databind/jsonschema/SchemaAware;

    if-eqz v8, :cond_0

    check-cast v1, Lcom/shaded/fasterxml/jackson/databind/jsonschema/SchemaAware;

    const/4 v8, 0x0

    invoke-interface {v1, p1, v8}, Lcom/shaded/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 312
    :goto_1
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JsonNode;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    .line 307
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 309
    :cond_0
    invoke-static {}, Lcom/shaded/fasterxml/jackson/databind/jsonschema/JsonSchema;->getDefaultSchemaNode()Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    goto :goto_1

    .line 314
    :cond_1
    const-string v0, "properties"

    invoke-virtual {v3, v0, v5}, Lcom/shaded/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JsonNode;)Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    .line 317
    :cond_2
    return-object v3
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->hasSingleElement(Ljava/util/EnumMap;)Z

    move-result v0

    return v0
.end method

.method public hasSingleElement(Ljava/util/EnumMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p1}, Ljava/util/EnumMap;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->isEmpty(Ljava/util/EnumMap;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Ljava/util/EnumMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;)Z"
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

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
    .line 30
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serialize(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
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
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 182
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 185
    :cond_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 186
    return-void
.end method

.method protected serializeContents(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
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
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeContentsUsing(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    .line 255
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    .line 210
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v3, v0

    .line 211
    :goto_0
    iget-object v6, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 213
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v2

    move-object v5, v2

    move-object v2, v1

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 215
    if-eqz v3, :cond_3

    if-eqz v8, :cond_2

    .line 219
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 220
    if-nez v2, :cond_4

    .line 226
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v9, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v2, v9}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;

    .line 228
    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSerializer;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSerializer;->getEnumValues()Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    move-result-object v2

    .line 230
    :cond_4
    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V

    .line 231
    if-nez v8, :cond_6

    .line 232
    invoke-virtual {p3, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 210
    :cond_5
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 235
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 237
    if-ne v1, v4, :cond_7

    move-object v1, v4

    move-object v4, v5

    .line 245
    :goto_2
    if-nez v6, :cond_8

    .line 246
    :try_start_0
    invoke-virtual {v5, v8, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v5, v4

    move-object v4, v1

    .line 254
    goto :goto_1

    .line 240
    :cond_7
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v1, v4}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    move-object v4, v5

    .line 242
    goto :goto_2

    .line 248
    :cond_8
    :try_start_1
    invoke-virtual {v5, v8, p2, p3, v6}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 250
    :catch_0
    move-exception v5

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v5, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->wrapAndThrow(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected serializeContentsUsing(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lcom/shaded/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    .line 262
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    .line 263
    :goto_0
    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 265
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 267
    if-eqz v3, :cond_1

    if-eqz v6, :cond_0

    .line 270
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 271
    if-nez v2, :cond_2

    .line 273
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v7, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v2, v7}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdSerializer;

    .line 275
    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSerializer;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSerializer;->getEnumValues()Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;

    move-result-object v2

    .line 277
    :cond_2
    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/databind/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V

    .line 278
    if-nez v6, :cond_4

    .line 279
    invoke-virtual {p3, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 262
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 283
    :cond_4
    if-nez v4, :cond_5

    .line 284
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v1

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->wrapAndThrow(Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_5
    :try_start_1
    invoke-virtual {p4, v6, p2, p3, v4}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 292
    :cond_6
    return-void
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
    .line 30
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeWithType(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
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
    .line 193
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 194
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 197
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;)V

    .line 198
    return-void
.end method

.method public withValueSerializer(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-ne p2, v0, :cond_0

    .line 104
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;

    invoke-direct {v0, p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumMapSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    move-object p0, v0

    goto :goto_0
.end method
