.class final Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtTypedProperty"
.end annotation


# instance fields
.field private final _property:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field private final _typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

.field private final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 291
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 292
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method public getDefaultTypeId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 304
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v1

    .line 305
    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getTypeIdResolver()Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProperty()Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0
.end method

.method public getTypePropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public hasDefaultType()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typeDeserializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTypePropertyName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
