.class public Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;
.super Ljava/lang/Object;
.source "SimpleKeyDeserializers.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/deser/KeyDeserializers;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e2e21b238d7306bL


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public addDeserializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;)Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object p0
.end method

.method public findKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    goto :goto_0
.end method
