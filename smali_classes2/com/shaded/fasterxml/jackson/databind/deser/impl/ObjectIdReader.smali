.class public final Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.super Ljava/lang/Object;
.source "ObjectIdReader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final deserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final generator:Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;"
        }
    .end annotation
.end field

.field public final idProperty:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field public final idType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

.field public final propertyName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 45
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 47
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->deserializer:Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    .line 48
    iput-object p5, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 49
    return-void
.end method

.method public static construct(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ObjectIdReader;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-object v0
.end method
