.class public Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;
.super Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.source "StdSubtypeResolver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _registeredSubtypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected _collectAndResolve(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p4, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p2, v0

    .line 149
    :cond_0
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    .line 153
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    return-void

    .line 160
    :cond_2
    invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p4, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    .line 164
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v2

    if-nez v2, :cond_3

    .line 167
    new-instance v2, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_1
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method public collectAndResolveSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 114
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    .line 116
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v2, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public collectAndResolveSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->collectAndResolveSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public collectAndResolveSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    if-nez p4, :cond_1

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v0

    move-object v6, v0

    .line 77
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 79
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    .line 82
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p4}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p3, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    .line 93
    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    goto :goto_2

    .line 98
    :cond_3
    new-instance v2, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    const/4 v0, 0x0

    invoke-direct {v2, v6, v0}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 99
    invoke-static {v6, p3, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public varargs registerSubtypes([Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;)V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    .line 37
    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 38
    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    array-length v0, p1

    new-array v1, v0, [Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    .line 46
    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 47
    new-instance v3, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lcom/shaded/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->registerSubtypes([Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 50
    return-void
.end method
