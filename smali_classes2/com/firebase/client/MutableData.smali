.class public Lcom/firebase/client/MutableData;
.super Ljava/lang/Object;
.source "MutableData.java"


# instance fields
.field private final holder:Lcom/firebase/client/core/SnapshotHolder;

.field private final prefixPath:Lcom/firebase/client/core/Path;


# direct methods
.method private constructor <init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V
    .locals 2
    .param p1, "holder"    # Lcom/firebase/client/core/SnapshotHolder;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    .line 42
    iput-object p2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    .line 43
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/client/core/ValidationPath;->validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;Lcom/firebase/client/MutableData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firebase/client/core/SnapshotHolder;
    .param p2, "x1"    # Lcom/firebase/client/core/Path;
    .param p3, "x2"    # Lcom/firebase/client/MutableData$1;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/snapshot/Node;)V
    .locals 3
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 37
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/SnapshotHolder;-><init>(Lcom/firebase/client/snapshot/Node;)V

    new-instance v1, Lcom/firebase/client/core/Path;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/SnapshotHolder;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/MutableData;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/MutableData;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    return-object v0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/firebase/client/MutableData;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/firebase/client/MutableData;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    new-instance v3, Lcom/firebase/client/core/Path;

    invoke-direct {v3, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 323
    instance-of v0, p1, Lcom/firebase/client/MutableData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    move-object v0, p1

    check-cast v0, Lcom/firebase/client/MutableData;

    iget-object v0, v0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    check-cast p1, Lcom/firebase/client/MutableData;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/firebase/client/MutableData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 95
    .local v1, "node":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    new-instance v2, Lcom/firebase/client/MutableData$1;

    invoke-direct {v2, p0}, Lcom/firebase/client/MutableData$1;-><init>(Lcom/firebase/client/MutableData;)V

    .line 119
    :goto_0
    return-object v2

    .line 118
    :cond_1
    invoke-static {v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/firebase/client/snapshot/NamedNode;>;"
    new-instance v2, Lcom/firebase/client/MutableData$2;

    invoke-direct {v2, p0, v0}, Lcom/firebase/client/MutableData$2;-><init>(Lcom/firebase/client/MutableData;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public getChildrenCount()J
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNode()Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/firebase/client/MutableData;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 153
    .local v0, "path":Lcom/firebase/client/core/Path;
    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lcom/firebase/client/MutableData;

    iget-object v2, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    .line 156
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/firebase/client/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/firebase/client/GenericTypeIndicator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "t":Lcom/firebase/client/GenericTypeIndicator;, "Lcom/firebase/client/GenericTypeIndicator<TT;>;"
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, "value":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    .local v1, "result":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 256
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/firebase/client/FirebaseException;

    const-string v4, "Failed to bounce to type"

    invoke-direct {v3, v4, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 229
    .local v2, "value":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    .local v1, "result":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 231
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/firebase/client/FirebaseException;

    const-string v4, "Failed to bounce to type"

    invoke-direct {v3, v4, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 55
    .local v0, "node":Lcom/firebase/client/snapshot/Node;
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # Ljava/lang/Object;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 305
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-static {v2, p1}, Lcom/firebase/client/core/ValidationPath;->validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "bouncedValue":Ljava/lang/Object;
    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    .line 293
    iget-object v2, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v3, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 294
    .end local v0    # "bouncedValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/firebase/client/FirebaseException;

    const-string v3, "Failed to parse to snapshot"

    invoke-direct {v2, v3, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 331
    .local v0, "front":Lcom/firebase/client/snapshot/ChildKey;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MutableData { key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v2}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "<none>"

    goto :goto_0
.end method
