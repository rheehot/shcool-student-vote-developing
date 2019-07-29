.class public Lcom/shaded/fasterxml/jackson/databind/util/RootNameLookup;
.super Ljava/lang/Object;
.source "RootNameLookup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _rootNames:Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/shaded/fasterxml/jackson/core/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findRootName(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/shaded/fasterxml/jackson/core/io/SerializedString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/core/io/SerializedString;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized findRootName(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/shaded/fasterxml/jackson/core/io/SerializedString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/core/io/SerializedString;"
        }
    .end annotation

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v2, p1}, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 35
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;

    if-nez v0, :cond_2

    .line 36
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x14

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3}, Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;

    .line 43
    :cond_0
    invoke-virtual {p2, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findRootName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 55
    :goto_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v1, v2, v0}, Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_1
    monitor-exit p0

    return-object v0

    .line 38
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v0, v2}, Lcom/shaded/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    .line 39
    if-eqz v0, :cond_0

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
