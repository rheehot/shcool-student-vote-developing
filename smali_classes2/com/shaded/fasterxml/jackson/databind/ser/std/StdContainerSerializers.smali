.class public Lcom/shaded/fasterxml/jackson/databind/ser/std/StdContainerSerializers;
.super Ljava/lang/Object;
.source "StdContainerSerializers.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-static {p0, p1, p2, p4}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdContainerSerializers;->collectionSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static collectionSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/CollectionSerializer;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/ser/std/CollectionSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v0
.end method

.method public static enumSetSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    return-object v0
.end method

.method public static indexedListSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-static {p0, p1, p2, p4}, Lcom/shaded/fasterxml/jackson/databind/ser/std/StdContainerSerializers;->indexedListSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static indexedListSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v0
.end method

.method public static iterableSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/std/IterableSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    return-object v0
.end method

.method public static iteratorSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/IteratorSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/IteratorSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;ZLcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)V

    return-object v0
.end method
