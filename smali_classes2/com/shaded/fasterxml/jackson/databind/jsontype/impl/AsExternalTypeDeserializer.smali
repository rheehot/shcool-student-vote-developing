.class public Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;
.super Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;
.source "AsExternalTypeDeserializer.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    .line 30
    return-void
.end method


# virtual methods
.method public forProperty(Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;->_property:Lcom/shaded/fasterxml/jackson/databind/BeanProperty;

    if-ne p1, v0, :cond_0

    .line 38
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getTypeInclusion()Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/shaded/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
