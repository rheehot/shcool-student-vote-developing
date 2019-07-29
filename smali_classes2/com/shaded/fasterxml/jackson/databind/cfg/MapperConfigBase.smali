.class public abstract Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
.super Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;
.source "MapperConfigBase.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Lcom/shaded/fasterxml/jackson/databind/cfg/ConfigFeature;",
        "T:",
        "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
        "<TCFG;TT;>;>",
        "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAPPER_FEATURES:I

.field private static final serialVersionUID:J = -0x744574246f52876fL


# instance fields
.field protected final _mixInAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final _rootName:Ljava/lang/String;

.field protected final _subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

.field protected final _view:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/MapperFeature;

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->DEFAULT_MAPPER_FEATURES:I

    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            "Ljava/util/Map",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    sget v0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->DEFAULT_MAPPER_FEATURES:I

    invoke-direct {p0, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;I)V

    .line 77
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 78
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 79
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 81
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 90
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 91
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 92
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 94
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_base:Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-direct {p0, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;I)V

    .line 108
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 109
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 110
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 112
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    iget v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mapperFeatures:I

    invoke-direct {p0, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/BaseSettings;I)V

    .line 99
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 100
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 101
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 103
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 116
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 117
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 118
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 120
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 133
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 134
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 135
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 137
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 124
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 125
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 126
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 128
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase",
            "<TCFG;TT;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 145
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    .line 146
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 147
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    .line 149
    return-void
.end method


# virtual methods
.method public final findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method public final getActiveView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    return-object v0
.end method

.method public final getRootName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtypeResolver()Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public final mixInCount()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/core/Base64Variant;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/Base64Variant;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/PropertyNamingStrategy;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/HandlerInstantiator;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/text/DateFormat;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/util/Locale;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/util/TimeZone;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withAppendedAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withInsertedAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withRootName(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withView(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract withVisibility(Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method
