.class public final Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
.super Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "ObjectIdValueProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 33
    iget-object v1, p1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/PropertyName;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/shaded/fasterxml/jackson/databind/util/Annotations;Z)V

    .line 35
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 36
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->deserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 42
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 43
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;)V

    .line 47
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 48
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->deserializeSetAndReturn(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public deserializeSetAndReturn(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_valueDeserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/shaded/fasterxml/jackson/core/JsonParser;Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, v1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p2, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->bindItem(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, v1, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1, p3, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 97
    :cond_0
    return-object p3
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMember()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 111
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not call set() on ObjectIdProperty that has no SettableBeanProperty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withName(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->withName(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    move-result-object v0

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->withValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method
