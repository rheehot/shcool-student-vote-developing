.class public final Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
.super Ljava/lang/Object;
.source "ObjectIdWriter.java"


# instance fields
.field public final alwaysAsId:Z

.field public final generator:Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;"
        }
    .end annotation
.end field

.field public final idType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

.field public final propertyName:Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

.field public final serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/core/io/SerializedString;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/core/io/SerializedString;",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 54
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    .line 55
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 56
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 57
    iput-boolean p5, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    .line 58
    return-void
.end method

.method public static construct(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;Z)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    if-nez p1, :cond_0

    move-object v2, v4

    .line 69
    :goto_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/core/io/SerializedString;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Z)V

    return-object v0

    .line 68
    :cond_0
    new-instance v2, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v2, p1}, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public withAlwaysAsId(Z)Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 6

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-ne p1, v0, :cond_0

    .line 83
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/core/io/SerializedString;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSerializer(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/core/io/SerializedString;Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;Z)V

    return-object v0
.end method
