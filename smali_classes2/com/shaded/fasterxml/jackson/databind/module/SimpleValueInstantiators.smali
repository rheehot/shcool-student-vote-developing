.class public Lcom/shaded/fasterxml/jackson/databind/module/SimpleValueInstantiators;
.super Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators$Base;
.source "SimpleValueInstantiators.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7beb8da55ae36f3aL


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators$Base;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    .line 32
    return-void
.end method


# virtual methods
.method public addValueInstantiator(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/shaded/fasterxml/jackson/databind/module/SimpleValueInstantiators;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/module/SimpleValueInstantiators;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object p0
.end method

.method public findValueInstantiator(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;

    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 46
    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method
