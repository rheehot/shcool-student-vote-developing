.class public Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;
.super Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;
.source "BasicClassIntrospector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final BOOLEAN_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field protected static final INT_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field protected static final LONG_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field protected static final STRING_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2, v2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 27
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 32
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 36
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 37
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 41
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 42
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 51
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->instance:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _findCachedDesc(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 175
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->STRING_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 186
    :goto_0
    return-object v0

    .line 177
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 178
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->BOOLEAN_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    goto :goto_0

    .line 180
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 181
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->INT_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    goto :goto_0

    .line 183
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 184
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->LONG_DESC:Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected collectProperties(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;ZLjava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    .line 140
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLjava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collect()Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected collectPropertiesWithBuilder(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Z)",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 150
    :goto_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 151
    if-nez v0, :cond_1

    .line 152
    :goto_1
    if-nez v1, :cond_2

    const-string v5, "with"

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->constructPropertyCollector(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLjava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collect()Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 149
    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v0, v2}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    move-result-object v1

    goto :goto_1

    .line 152
    :cond_2
    iget-object v5, v1, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->withPrefix:Ljava/lang/String;

    goto :goto_2
.end method

.method protected constructPropertyCollector(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLjava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-object v1, p1

    move v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;ZLcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic forClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    .line 113
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 115
    invoke-static {p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic forCreation(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forCreation(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forCreation(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 6

    .prologue
    .line 100
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findCachedDesc(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    const/4 v4, 0x0

    const-string v5, "set"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;ZLjava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forDeserialization(Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserialization(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserialization(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forDeserialization(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 6

    .prologue
    .line 79
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findCachedDesc(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    const/4 v4, 0x0

    const-string v5, "set"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;ZLjava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forDeserialization(Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserializationWithBuilder(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserializationWithBuilder(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forDeserializationWithBuilder(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectPropertiesWithBuilder(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forDeserialization(Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forDirectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDirectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forDirectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    .line 123
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 124
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v2, v0, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 126
    invoke-static {p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic forSerialization(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forSerialization(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public forSerialization(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .locals 6

    .prologue
    .line 66
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findCachedDesc(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const/4 v4, 0x1

    const-string v5, "set"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->collectProperties(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;ZLjava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    move-result-object v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forSerialization(Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/shaded/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method
