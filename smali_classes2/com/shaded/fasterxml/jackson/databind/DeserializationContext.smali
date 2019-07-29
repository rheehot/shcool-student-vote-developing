.class public abstract Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;
.super Lcom/shaded/fasterxml/jackson/databind/DatabindContext;
.source "DeserializationContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_ERROR_STR_LEN:I = 0x1f4

.field private static final serialVersionUID:J = -0x6b3d251561173673L


# instance fields
.field protected transient _arrayBuilders:Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;

.field protected final _cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

.field protected final _config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

.field protected transient _dateFormat:Ljava/text/DateFormat;

.field protected final _factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

.field protected final _featureFlags:I

.field protected final _injectableValues:Lcom/shaded/fasterxml/jackson/databind/InjectableValues;

.field protected transient _objectBuffer:Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;

.field protected transient _parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

.field protected final _view:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/InjectableValues;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/DatabindContext;-><init>()V

    .line 165
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    .line 166
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    .line 168
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    .line 169
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getDeserializationFeatures()I

    move-result v0

    iput v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_featureFlags:I

    .line 170
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_view:Ljava/lang/Class;

    .line 171
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    .line 172
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_injectableValues:Lcom/shaded/fasterxml/jackson/databind/InjectableValues;

    .line 173
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/DatabindContext;-><init>()V

    .line 151
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    .line 152
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    .line 154
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    .line 155
    iget v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_featureFlags:I

    iput v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_featureFlags:I

    .line 156
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_view:Ljava/lang/Class;

    .line 157
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    .line 158
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_injectableValues:Lcom/shaded/fasterxml/jackson/databind/InjectableValues;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_injectableValues:Lcom/shaded/fasterxml/jackson/databind/InjectableValues;

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/DatabindContext;-><init>()V

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null DeserializerFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    .line 140
    if-nez p2, :cond_1

    new-instance p2, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    invoke-direct {p2}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_featureFlags:I

    .line 143
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    .line 144
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_injectableValues:Lcom/shaded/fasterxml/jackson/databind/InjectableValues;

    .line 145
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_view:Ljava/lang/Class;

    .line 146
    return-void
.end method


# virtual methods
.method protected _calcName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 720
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _desc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 737
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]...["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 740
    :cond_0
    return-object p1
.end method

.method protected _valueDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    const-string v0, "[N/A]"

    goto :goto_0
.end method

.method public constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 499
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 500
    return-object v0
.end method

.method public final constructType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public abstract deserializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
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
.end method

.method protected determineClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/util/ClassUtil;->getClassDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endOfInputException(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input when trying to deserialize a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {p1}, Lcom/shaded/fasterxml/jackson/databind/util/ClassUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final findContextualValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
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
    .line 305
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p0, v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->findValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    instance-of v1, v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v1, :cond_0

    .line 309
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p0, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 312
    :cond_0
    return-object v0
.end method

.method public final findInjectableValue(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_injectableValues:Lcom/shaded/fasterxml/jackson/databind/InjectableValues;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No \'injectableValues\' configured, can not inject value with id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_injectableValues:Lcom/shaded/fasterxml/jackson/databind/InjectableValues;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/InjectableValues;->findInjectableValue(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final findKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p0, v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->findKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v0

    .line 350
    instance-of v1, v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;

    invoke-interface {v0, p0, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;->createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v0

    .line 353
    :cond_0
    return-object v0
.end method

.method public abstract findObjectId(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;"
        }
    .end annotation
.end method

.method public final findRootValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
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

    .line 322
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p0, v2, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->findValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 324
    if-nez v0, :cond_1

    move-object v0, v1

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    instance-of v2, v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    if-eqz v2, :cond_2

    .line 328
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;

    invoke-interface {v0, p0, v1}, Lcom/shaded/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v2, v3, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->findTypeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    .line 334
    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;

    invoke-direct {v1, v2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getActiveView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_view:Ljava/lang/Class;

    return-object v0
.end method

.method public final getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public final getArrayBuilders()Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_arrayBuilders:Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;-><init>()V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_arrayBuilders:Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_arrayBuilders:Lcom/shaded/fasterxml/jackson/databind/util/ArrayBuilders;

    return-object v0
.end method

.method public final getBase64Variant()Lcom/shaded/fasterxml/jackson/core/Base64Variant;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getBase64Variant()Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    .line 704
    :goto_0
    return-object v0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    goto :goto_0
.end method

.method public getFactory()Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getParser()Lcom/shaded/fasterxml/jackson/core/JsonParser;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public handleUnknownProperty(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_1

    move-object v6, v0

    .line 526
    :goto_0
    if-eqz v6, :cond_1

    .line 528
    invoke-virtual {v6}, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializationProblemHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializationProblemHandler;->handleUnknownProperty(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x1

    .line 534
    :goto_1
    return v0

    .line 531
    :cond_0
    invoke-virtual {v6}, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 534
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasValueDeserializerFor(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_cache:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p0, v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->hasValueDeserializerFor(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    return v0
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_featureFlags:I

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract keyDeserializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public final leaseObjectBuffer()Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_objectBuffer:Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;

    .line 426
    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;-><init>()V

    .line 431
    :goto_0
    return-object v0

    .line 429
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_objectBuffer:Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;

    goto :goto_0
.end method

.method public mappingException(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/core/JsonToken;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public mappingException(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/core/JsonToken;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/core/JsonToken;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public mappingException(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/shaded/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse Date value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reportUnknownProperty(Ljava/lang/Object;Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 550
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    return-void

    .line 554
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 555
    :goto_0
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    invoke-static {v1, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)Lcom/shaded/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;

    move-result-object v0

    throw v0

    .line 554
    :cond_1
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public final returnObjectBuffer(Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_objectBuffer:Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;->initialCapacity()I

    move-result v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_objectBuffer:Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;->initialCapacity()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 447
    :cond_0
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_objectBuffer:Lcom/shaded/fasterxml/jackson/databind/util/ObjectBuffer;

    .line 449
    :cond_1
    return-void
.end method

.method public unknownTypeException(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' into a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct Map key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object v0

    return-object v0
.end method

.method public weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdNumberException(Ljava/lang/Number;Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from number value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object v0

    return-object v0
.end method

.method public weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_parser:Lcom/shaded/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object v0

    return-object v0
.end method

.method public wrongTokenException(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
    .locals 2

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method
