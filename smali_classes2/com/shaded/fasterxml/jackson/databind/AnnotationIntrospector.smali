.class public abstract Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector$Pair;,
        Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    return-void
.end method

.method public static nopInstance()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    return-object v0
.end method

.method public static pair(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;-><init>(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V

    return-object v0
.end method


# virtual methods
.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p1
.end method

.method public findAutoDetectVisibility(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 305
    return-object p2
.end method

.method public findContentDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return-object v0
.end method

.method public findContentSerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationContentConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationContentType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 893
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationKeyType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 878
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1040
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1070
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 864
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findFilterId(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFormat(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    .prologue
    .line 503
    instance-of v0, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz v0, :cond_0

    .line 504
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findFormat(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    return-object v0
.end method

.method public findIgnoreUnknownProperties(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public findInjectableValueId(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public findKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public findKeySerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNameForDeserialization(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1008
    instance-of v1, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_1

    .line 1009
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    :goto_0
    if-eqz v1, :cond_0

    .line 1018
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1019
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    .line 1023
    :cond_0
    :goto_1
    return-object v0

    .line 1010
    :cond_1
    instance-of v1, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_2

    .line 1011
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1012
    :cond_2
    instance-of v1, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v1, :cond_3

    .line 1013
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 1015
    goto :goto_0

    .line 1021
    :cond_4
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findNameForSerialization(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 734
    instance-of v1, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_1

    .line 735
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 741
    :goto_0
    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 743
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    .line 747
    :cond_0
    :goto_1
    return-object v0

    .line 736
    :cond_1
    instance-of v1, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_2

    .line 737
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 739
    goto :goto_0

    .line 745
    :cond_3
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findNamingStrategy(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public findObjectIdInfo(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public findObjectReferenceInfo(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 0

    .prologue
    .line 208
    return-object p2
.end method

.method public findPOJOBuilder(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 973
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPOJOBuilderConfig(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyContentTypeResolver(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyTypeResolver(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public findReferenceType(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method public findRootName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationContentConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationContentType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 624
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationInclusion(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 0

    .prologue
    .line 587
    return-object p2
.end method

.method public findSerializationKeyType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 781
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationPropertyOrder(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationSortAlphabetically(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationTyping(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTypeName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTypeResolver(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public findUnwrappingNameTransformer(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public findValueInstantiator(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x0

    return-object v0
.end method

.method public findViews(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public findWrapperName(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnyGetterAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public hasAnySetterAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x0

    return v0
.end method

.method public hasAsValueAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public hasCreatorAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x0

    return v0
.end method

.method public hasIgnoreMarker(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public hasRequiredMarker(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableType(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTypeId(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract version()Lcom/shaded/fasterxml/jackson/core/Version;
.end method
