.class public Lcom/firebase/client/core/view/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/view/QueryParams$1;,
        Lcom/firebase/client/core/view/QueryParams$ViewFrom;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

.field private static final INDEX:Ljava/lang/String; = "i"

.field private static final INDEX_END_NAME:Ljava/lang/String; = "en"

.field private static final INDEX_END_VALUE:Ljava/lang/String; = "ep"

.field private static final INDEX_START_NAME:Ljava/lang/String; = "sn"

.field private static final INDEX_START_VALUE:Ljava/lang/String; = "sp"

.field private static final LIMIT:Ljava/lang/String; = "l"

.field private static final VIEW_FROM:Ljava/lang/String; = "vf"

.field private static final mapperInstance:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private index:Lcom/firebase/client/snapshot/Index;

.field private indexEndName:Lcom/firebase/client/snapshot/ChildKey;

.field private indexEndValue:Lcom/firebase/client/snapshot/Node;

.field private indexStartName:Lcom/firebase/client/snapshot/ChildKey;

.field private indexStartValue:Lcom/firebase/client/snapshot/Node;

.field private jsonSerialization:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 19
    const-class v0, Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/QueryParams;->$assertionsDisabled:Z

    .line 20
    new-instance v0, Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {v0}, Lcom/firebase/client/core/view/QueryParams;-><init>()V

    sput-object v0, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    .line 36
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/firebase/client/core/view/QueryParams;->mapperInstance:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    .line 37
    sget-object v0, Lcom/firebase/client/core/view/QueryParams;->mapperInstance:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    sget-object v2, Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v2, v1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    .line 38
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    .line 43
    iput-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    .line 44
    iput-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    .line 45
    iput-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    .line 47
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    .line 49
    iput-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;

    return-void
.end method

.method private copy()Lcom/firebase/client/core/view/QueryParams;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {v0}, Lcom/firebase/client/core/view/QueryParams;-><init>()V

    .line 116
    .local v0, "params":Lcom/firebase/client/core/view/QueryParams;
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 117
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    .line 118
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    .line 119
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    .line 120
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    .line 121
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    .line 122
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    .line 123
    return-object v0
.end method

.method public static fromQueryObject(Ljava/util/Map;)Lcom/firebase/client/core/view/QueryParams;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/view/QueryParams;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {v5}, Lcom/firebase/client/core/view/QueryParams;-><init>()V

    .line 243
    .local v5, "params":Lcom/firebase/client/core/view/QueryParams;
    const-string v7, "l"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, v5, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 245
    const-string v7, "sp"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 246
    const-string v7, "sp"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 247
    .local v3, "indexStartValue":Ljava/lang/Object;
    invoke-static {v3}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    iput-object v7, v5, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    .line 248
    const-string v7, "sn"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    .local v2, "indexStartName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 250
    invoke-static {v2}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v7

    iput-object v7, v5, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    .line 254
    .end local v2    # "indexStartName":Ljava/lang/String;
    .end local v3    # "indexStartValue":Ljava/lang/Object;
    :cond_0
    const-string v7, "ep"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    const-string v7, "ep"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "indexEndValue":Ljava/lang/Object;
    invoke-static {v1}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    iput-object v7, v5, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    .line 257
    const-string v7, "en"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, "indexEndName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 259
    invoke-static {v0}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v7

    iput-object v7, v5, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    .line 263
    .end local v0    # "indexEndName":Ljava/lang/String;
    .end local v1    # "indexEndValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "vf"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 264
    .local v6, "viewFrom":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 265
    const-string v7, "l"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->LEFT:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    :goto_0
    iput-object v7, v5, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    .line 268
    :cond_2
    const-string v7, "i"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 269
    .local v4, "indexStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 270
    invoke-static {v4}, Lcom/firebase/client/snapshot/Index;->fromQueryDefinition(Ljava/lang/String;)Lcom/firebase/client/snapshot/Index;

    move-result-object v7

    iput-object v7, v5, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    .line 273
    :cond_3
    return-object v5

    .line 265
    .end local v4    # "indexStr":Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->RIGHT:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    goto :goto_0
.end method


# virtual methods
.method public endAt(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/view/QueryParams;
    .locals 2
    .param p1, "indexEndValue"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "indexEndName"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 156
    sget-boolean v1, Lcom/firebase/client/core/view/QueryParams;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 158
    .local v0, "copy":Lcom/firebase/client/core/view/QueryParams;
    iput-object p1, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    .line 159
    iput-object p2, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    .line 160
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    if-ne p0, p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 298
    check-cast v0, Lcom/firebase/client/core/view/QueryParams;

    .line 300
    .local v0, "that":Lcom/firebase/client/core/view/QueryParams;
    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-nez v3, :cond_4

    .line 301
    :cond_6
    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    iget-object v4, v0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    if-nez v3, :cond_7

    .line 302
    :cond_9
    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    iget-object v4, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v3, v4}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    if-nez v3, :cond_a

    .line 303
    :cond_c
    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    iget-object v4, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 304
    goto :goto_0

    .line 303
    :cond_e
    iget-object v3, v0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    if-nez v3, :cond_d

    .line 305
    :cond_f
    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    iget-object v4, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v3, v4}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 306
    goto :goto_0

    .line 305
    :cond_11
    iget-object v3, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    if-nez v3, :cond_10

    .line 307
    :cond_12
    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    iget-object v4, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    .line 308
    goto/16 :goto_0

    .line 307
    :cond_14
    iget-object v3, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    if-nez v3, :cond_13

    .line 310
    :cond_15
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->isViewFromLeft()Z

    move-result v3

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->isViewFromLeft()Z

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 311
    goto/16 :goto_0
.end method

.method public getIndex()Lcom/firebase/client/snapshot/Index;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    return-object v0
.end method

.method public getIndexEndName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    .line 91
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMaxName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndexEndValue()Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public getIndexStartName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    .line 69
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMinName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndexStartValue()Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public getLimit()I
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNodeFilter()Lcom/firebase/client/core/view/filter/NodeFilter;
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Lcom/firebase/client/core/view/filter/IndexedFilter;

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/view/filter/IndexedFilter;-><init>(Lcom/firebase/client/snapshot/Index;)V

    .line 283
    :goto_0
    return-object v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    new-instance v0, Lcom/firebase/client/core/view/filter/LimitedFilter;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/view/filter/LimitedFilter;-><init>(Lcom/firebase/client/core/view/QueryParams;)V

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/view/filter/RangedFilter;-><init>(Lcom/firebase/client/core/view/QueryParams;)V

    goto :goto_0
.end method

.method public getWireProtocolParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "queryObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "sp"

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v2, :cond_0

    .line 179
    const-string v2, "sn"

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    const-string v2, "ep"

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v2, :cond_1

    .line 185
    const-string v2, "en"

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 189
    const-string v2, "l"

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    .line 191
    .local v1, "viewFromToAdd":Lcom/firebase/client/core/view/QueryParams$ViewFrom;
    if-nez v1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    sget-object v1, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->LEFT:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    .line 203
    :cond_2
    :goto_0
    sget-object v2, Lcom/firebase/client/core/view/QueryParams$1;->$SwitchMap$com$firebase$client$core$view$QueryParams$ViewFrom:[I

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 212
    .end local v1    # "viewFromToAdd":Lcom/firebase/client/core/view/QueryParams$ViewFrom;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 213
    const-string v2, "i"

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/Index;->getQueryDefinition()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_4
    return-object v0

    .line 200
    .restart local v1    # "viewFromToAdd":Lcom/firebase/client/core/view/QueryParams$ViewFrom;
    :cond_5
    sget-object v1, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->RIGHT:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    goto :goto_0

    .line 205
    :pswitch_0
    const-string v2, "vf"

    const-string v3, "l"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    :pswitch_1
    const-string v2, "vf"

    const-string v3, "r"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasAnchoredLimit()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLimit()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->isViewFromLeft()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_1
    add-int v0, v3, v2

    .line 320
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 321
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 322
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndValue:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 323
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/firebase/client/core/view/QueryParams;->indexEndName:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 324
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 325
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 318
    goto :goto_0

    .line 319
    .restart local v0    # "result":I
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_1

    :cond_3
    move v2, v1

    .line 320
    goto :goto_2

    :cond_4
    move v2, v1

    .line 321
    goto :goto_3

    :cond_5
    move v2, v1

    .line 322
    goto :goto_4

    :cond_6
    move v2, v1

    .line 323
    goto :goto_5
.end method

.method public isDefault()Z
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasAnchoredLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromLeft()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    sget-object v1, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->LEFT:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    goto :goto_0
.end method

.method public limit(I)Lcom/firebase/client/core/view/QueryParams;
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 128
    .local v0, "copy":Lcom/firebase/client/core/view/QueryParams;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 129
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    .line 130
    return-object v0
.end method

.method public limitToFirst(I)Lcom/firebase/client/core/view/QueryParams;
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 135
    .local v0, "copy":Lcom/firebase/client/core/view/QueryParams;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 136
    sget-object v1, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->LEFT:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    .line 137
    return-object v0
.end method

.method public limitToLast(I)Lcom/firebase/client/core/view/QueryParams;
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 142
    .local v0, "copy":Lcom/firebase/client/core/view/QueryParams;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 143
    sget-object v1, Lcom/firebase/client/core/view/QueryParams$ViewFrom;->RIGHT:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->viewFrom:Lcom/firebase/client/core/view/QueryParams$ViewFrom;

    .line 144
    return-object v0
.end method

.method public loadsAllData()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public orderBy(Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/core/view/QueryParams;
    .locals 1
    .param p1, "index"    # Lcom/firebase/client/snapshot/Index;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 165
    .local v0, "copy":Lcom/firebase/client/core/view/QueryParams;
    iput-object p1, v0, Lcom/firebase/client/core/view/QueryParams;->index:Lcom/firebase/client/snapshot/Index;

    .line 166
    return-object v0
.end method

.method public startAt(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/view/QueryParams;
    .locals 2
    .param p1, "indexStartValue"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "indexStartName"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 148
    sget-boolean v1, Lcom/firebase/client/core/view/QueryParams;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 150
    .local v0, "copy":Lcom/firebase/client/core/view/QueryParams;
    iput-object p1, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartValue:Lcom/firebase/client/snapshot/Node;

    .line 151
    iput-object p2, v0, Lcom/firebase/client/core/view/QueryParams;->indexStartName:Lcom/firebase/client/snapshot/ChildKey;

    .line 152
    return-object v0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 233
    :try_start_0
    sget-object v1, Lcom/firebase/client/core/view/QueryParams;->mapperInstance:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;

    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
