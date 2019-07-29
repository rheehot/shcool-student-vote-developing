.class public abstract Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;
.super Ljava/lang/Object;
.source "MapperConfig.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7b656637b7cdf9a9L


# instance fields
.field protected final _base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

.field protected final _mapperFeatures:I


# direct methods
.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 58
    iput p2, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 64
    iget v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    iput v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 65
    return-void
.end method

.method public static collectFeatureDefaults(Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum",
            "<TF;>;:",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/ConfigFeature;",
            ">(",
            "Ljava/lang/Class",
            "<TF;>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v5, v0

    move v4, v1

    move v3, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    move-object v1, v2

    .line 75
    check-cast v1, Lcom/shaded/fasterxml/jackson/databind/cfg/ConfigFeature;

    invoke-interface {v1}, Lcom/shaded/fasterxml/jackson/databind/cfg/ConfigFeature;->enabledByDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/cfg/ConfigFeature;

    invoke-interface {v2}, Lcom/shaded/fasterxml/jackson/databind/cfg/ConfigFeature;->getMask()I

    move-result v1

    or-int/2addr v1, v3

    .line 74
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_0

    .line 79
    :cond_0
    return v3

    :cond_1
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public final canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/shaded/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public constructSpecializedType(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final constructType(Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v1, v2, v0}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/shaded/fasterxml/jackson/databind/type/TypeBindings;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final constructType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v1, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/shaded/fasterxml/jackson/databind/type/TypeBindings;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getActiveView()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public getBase64Variant()Lcom/shaded/fasterxml/jackson/core/Base64Variant;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getBase64Variant()Lcom/shaded/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getClassIntrospector()Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getClassIntrospector()Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public final getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultTyper(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getTypeResolverBuilder()Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVisibilityChecker()Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getVisibilityChecker()Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public final getHandlerInstantiator()Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getHandlerInstantiator()Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyNamingStrategy()Lcom/shaded/fasterxml/jackson/databind/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getPropertyNamingStrategy()Lcom/shaded/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSubtypeResolver()Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.end method

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract introspectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
.end method

.method public introspectClassAnnotations(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public abstract introspectDirectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
.end method

.method public introspectDirectClassAnnotations(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->introspectDirectClassAnnotations(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public final isAnnotationProcessingEnabled()Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/shaded/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldSortPropertiesAlphabetically()Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/shaded/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public typeIdResolverInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;->typeIdResolverInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    goto :goto_0
.end method

.method public typeResolverBuilderInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;>;)",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;->typeResolverBuilderInstance(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/shaded/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    goto :goto_0
.end method

.method public abstract useRootWrapping()Z
.end method

.method public varargs abstract with([Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/shaded/fasterxml/jackson/databind/MapperFeature;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs abstract without([Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/shaded/fasterxml/jackson/databind/MapperFeature;",
            ")TT;"
        }
    .end annotation
.end method
