.class public abstract Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.super Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;
.source "TypeSerializerBase.java"


# instance fields
.field protected final _idResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

.field protected final _property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    .line 17
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    .line 18
    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeIdResolver()Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method

.method protected idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method