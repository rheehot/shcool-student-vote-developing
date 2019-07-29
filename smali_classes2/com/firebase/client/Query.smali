.class public Lcom/firebase/client/Query;
.super Ljava/lang/Object;
.source "Query.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final orderByCalled:Z

.field protected final params:Lcom/firebase/client/core/view/QueryParams;

.field protected final path:Lcom/firebase/client/core/Path;

.field protected final repo:Lcom/firebase/client/core/Repo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/firebase/client/Query;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/Query;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V
    .locals 1
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    .line 42
    iput-object p2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    .line 43
    sget-object v0, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    iput-object v0, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V
    .locals 2
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "params"    # Lcom/firebase/client/core/view/QueryParams;
    .param p4, "orderByCalled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    .line 34
    iput-object p2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    .line 35
    iput-object p3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    .line 36
    iput-boolean p4, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    .line 37
    invoke-virtual {p3}, Lcom/firebase/client/core/view/QueryParams;->isValid()Z

    move-result v0

    const-string v1, "Validation of queries failed."

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 38
    return-void
.end method

.method private addEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
    .locals 2
    .param p1, "listener"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 188
    invoke-static {}, Lcom/firebase/client/core/ZombieEventManager;->getInstance()Lcom/firebase/client/core/ZombieEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/ZombieEventManager;->recordEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 189
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Query$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Query$3;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/core/EventRegistration;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method private endAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 6
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {p2}, Lcom/firebase/client/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 405
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can only use simple values for endAt()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 409
    .local v0, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    :goto_0
    iget-object v2, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    .end local v0    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    .restart local v0    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    :cond_2
    iget-object v2, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v2, p1, v0}, Lcom/firebase/client/core/view/QueryParams;->endAt(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v1

    .line 413
    .local v1, "newParams":Lcom/firebase/client/core/view/QueryParams;
    invoke-direct {p0, v1}, Lcom/firebase/client/Query;->validateLimit(Lcom/firebase/client/core/view/QueryParams;)V

    .line 414
    invoke-direct {p0, v1}, Lcom/firebase/client/Query;->validateQueryEndpoints(Lcom/firebase/client/core/view/QueryParams;)V

    .line 415
    sget-boolean v2, Lcom/firebase/client/Query;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryParams;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 416
    :cond_3
    new-instance v2, Lcom/firebase/client/Query;

    iget-object v3, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v4, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-boolean v5, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v2
.end method

.method private removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
    .locals 2
    .param p1, "registration"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 178
    invoke-static {}, Lcom/firebase/client/core/ZombieEventManager;->getInstance()Lcom/firebase/client/core/ZombieEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/ZombieEventManager;->zombifyForRemove(Lcom/firebase/client/core/EventRegistration;)V

    .line 179
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Query$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Query$2;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/core/EventRegistration;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private startAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 6
    .param p1, "node"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p2}, Lcom/firebase/client/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 311
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can only use simple values for startAt()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t call startAt() or equalTo() multiple times"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 318
    .local v0, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    :goto_0
    iget-object v2, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v2, p1, v0}, Lcom/firebase/client/core/view/QueryParams;->startAt(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v1

    .line 319
    .local v1, "newParams":Lcom/firebase/client/core/view/QueryParams;
    invoke-direct {p0, v1}, Lcom/firebase/client/Query;->validateLimit(Lcom/firebase/client/core/view/QueryParams;)V

    .line 320
    invoke-direct {p0, v1}, Lcom/firebase/client/Query;->validateQueryEndpoints(Lcom/firebase/client/core/view/QueryParams;)V

    .line 321
    sget-boolean v2, Lcom/firebase/client/Query;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryParams;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 317
    .end local v0    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v1    # "newParams":Lcom/firebase/client/core/view/QueryParams;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    .restart local v0    # "childKey":Lcom/firebase/client/snapshot/ChildKey;
    .restart local v1    # "newParams":Lcom/firebase/client/core/view/QueryParams;
    :cond_3
    new-instance v2, Lcom/firebase/client/Query;

    iget-object v3, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v4, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-boolean v5, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v2
.end method

.method private validateEqualToCall()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and startAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and endAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    return-void
.end method

.method private validateLimit(Lcom/firebase/client/core/view/QueryParams;)V
    .locals 2
    .param p1, "params"    # Lcom/firebase/client/core/view/QueryParams;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasAnchoredLimit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    return-void
.end method

.method private validateNoOrderByCall()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    return-void
.end method

.method private validateQueryEndpoints(Lcom/firebase/client/core/view/QueryParams;)V
    .locals 7
    .param p1, "params"    # Lcom/firebase/client/core/view/QueryParams;

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v5

    invoke-static {}, Lcom/firebase/client/snapshot/KeyIndex;->getInstance()Lcom/firebase/client/snapshot/KeyIndex;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 52
    const-string v2, "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    .line 55
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndexStartValue()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 57
    .local v4, "startNode":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndexStartName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    .line 58
    .local v3, "startName":Lcom/firebase/client/snapshot/ChildKey;
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMinName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    if-ne v3, v5, :cond_0

    instance-of v5, v4, Lcom/firebase/client/snapshot/StringNode;

    if-nez v5, :cond_1

    .line 59
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 62
    .end local v3    # "startName":Lcom/firebase/client/snapshot/ChildKey;
    .end local v4    # "startNode":Lcom/firebase/client/snapshot/Node;
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 63
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndexEndValue()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 64
    .local v1, "endNode":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndexEndName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 65
    .local v0, "endName":Lcom/firebase/client/snapshot/ChildKey;
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMaxName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    if-ne v0, v5, :cond_2

    instance-of v5, v1, Lcom/firebase/client/snapshot/StringNode;

    if-nez v5, :cond_6

    .line 66
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    .end local v0    # "endName":Lcom/firebase/client/snapshot/ChildKey;
    .end local v1    # "endNode":Lcom/firebase/client/snapshot/Node;
    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v5

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 70
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndexStartValue()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndexEndValue()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 72
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_6
    return-void
.end method


# virtual methods
.method public addChildEventListener(Lcom/firebase/client/ChildEventListener;)Lcom/firebase/client/ChildEventListener;
    .locals 3
    .param p1, "listener"    # Lcom/firebase/client/ChildEventListener;

    .prologue
    .line 129
    new-instance v0, Lcom/firebase/client/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p0}, Lcom/firebase/client/Query;->getSpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/firebase/client/core/ChildEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ChildEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 130
    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/firebase/client/ValueEventListener;

    .prologue
    .line 139
    new-instance v0, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/Query$1;

    invoke-direct {v2, p0, p1}, Lcom/firebase/client/Query$1;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/ValueEventListener;)V

    invoke-virtual {p0}, Lcom/firebase/client/Query;->getSpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 152
    return-void
.end method

.method public addValueEventListener(Lcom/firebase/client/ValueEventListener;)Lcom/firebase/client/ValueEventListener;
    .locals 3
    .param p1, "listener"    # Lcom/firebase/client/ValueEventListener;

    .prologue
    .line 118
    new-instance v0, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p0}, Lcom/firebase/client/Query;->getSpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 119
    return-object p1
.end method

.method public endAt()Lcom/firebase/client/Query;
    .locals 2

    .prologue
    .line 331
    sget-object v0, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/Query;->endAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(D)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/Query;->endAt(DLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(DLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 3
    .param p1, "value"    # D
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Lcom/firebase/client/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/firebase/client/Query;->endAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    if-eqz p1, :cond_0

    new-instance v0, Lcom/firebase/client/snapshot/StringNode;

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/firebase/client/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V

    .line 375
    .local v0, "node":Lcom/firebase/client/snapshot/Node;
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/firebase/client/Query;->endAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v1

    return-object v1

    .line 374
    .end local v0    # "node":Lcom/firebase/client/snapshot/Node;
    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public endAt(Z)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Query;->endAt(ZLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(ZLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 3
    .param p1, "value"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 400
    new-instance v0, Lcom/firebase/client/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/firebase/client/Query;->endAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(D)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateEqualToCall()V

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/Query;->startAt(D)Lcom/firebase/client/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/Query;->endAt(D)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(DLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # D
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateEqualToCall()V

    .line 471
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/Query;->startAt(DLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/client/Query;->endAt(DLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateEqualToCall()V

    .line 426
    invoke-virtual {p0, p1}, Lcom/firebase/client/Query;->startAt(Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/Query;->endAt(Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateEqualToCall()V

    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Z)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateEqualToCall()V

    .line 447
    invoke-virtual {p0, p1}, Lcom/firebase/client/Query;->startAt(Z)Lcom/firebase/client/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/Query;->endAt(Z)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateEqualToCall()V

    .line 483
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/Query;->startAt(ZLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/Query;->endAt(ZLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public getRef()Lcom/firebase/client/Firebase;
    .locals 3

    .prologue
    .line 604
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p0}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public getRepo()Lcom/firebase/client/core/Repo;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    return-object v0
.end method

.method public getSpec()Lcom/firebase/client/core/view/QuerySpec;
    .locals 3

    .prologue
    .line 630
    new-instance v0, Lcom/firebase/client/core/view/QuerySpec;

    iget-object v1, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/view/QuerySpec;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .locals 2
    .param p1, "keepSynced"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getInfoKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v1, "Can\'t call keepSynced() on .info paths."

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Query$4;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Query$4;-><init>(Lcom/firebase/client/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public limit(I)Lcom/firebase/client/Query;
    .locals 5
    .param p1, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    if-gtz p1, :cond_0

    .line 495
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Limit must be a positive integer!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/view/QueryParams;->limit(I)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 501
    .local v0, "newParams":Lcom/firebase/client/core/view/QueryParams;
    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->validateLimit(Lcom/firebase/client/core/view/QueryParams;)V

    .line 502
    new-instance v1, Lcom/firebase/client/Query;

    iget-object v2, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v3, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-boolean v4, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v1
.end method

.method public limitToFirst(I)Lcom/firebase/client/Query;
    .locals 5
    .param p1, "limit"    # I

    .prologue
    .line 512
    if-gtz p1, :cond_0

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be a positive integer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_1
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/firebase/client/core/view/QueryParams;->limitToFirst(I)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    iget-boolean v4, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v0
.end method

.method public limitToLast(I)Lcom/firebase/client/Query;
    .locals 5
    .param p1, "limit"    # I

    .prologue
    .line 528
    if-gtz p1, :cond_0

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be a positive integer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_1
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/firebase/client/core/view/QueryParams;->limitToLast(I)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    iget-boolean v4, p0, Lcom/firebase/client/Query;->orderByCalled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v0
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Key can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    :cond_0
    const-string v2, "$key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_2
    const-string v2, "$priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 551
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    :cond_4
    const-string v2, "$value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    :cond_6
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateNoOrderByCall()V

    .line 558
    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, "indexPath":Lcom/firebase/client/core/Path;
    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 560
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 562
    :cond_7
    new-instance v0, Lcom/firebase/client/snapshot/PathIndex;

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/PathIndex;-><init>(Lcom/firebase/client/core/Path;)V

    .line 563
    .local v0, "index":Lcom/firebase/client/snapshot/Index;
    new-instance v2, Lcom/firebase/client/Query;

    iget-object v3, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v4, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v5, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v5, v0}, Lcom/firebase/client/core/view/QueryParams;->orderBy(Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v2
.end method

.method public orderByKey()Lcom/firebase/client/Query;
    .locals 5

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateNoOrderByCall()V

    .line 585
    iget-object v1, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {}, Lcom/firebase/client/snapshot/KeyIndex;->getInstance()Lcom/firebase/client/snapshot/KeyIndex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/view/QueryParams;->orderBy(Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 586
    .local v0, "newParams":Lcom/firebase/client/core/view/QueryParams;
    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->validateQueryEndpoints(Lcom/firebase/client/core/view/QueryParams;)V

    .line 587
    new-instance v1, Lcom/firebase/client/Query;

    iget-object v2, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v3, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/firebase/client/Query;
    .locals 5

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateNoOrderByCall()V

    .line 573
    iget-object v1, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/view/QueryParams;->orderBy(Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 574
    .local v0, "newParams":Lcom/firebase/client/core/view/QueryParams;
    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->validateQueryEndpoints(Lcom/firebase/client/core/view/QueryParams;)V

    .line 575
    new-instance v1, Lcom/firebase/client/Query;

    iget-object v2, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v3, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/firebase/client/Query;
    .locals 5

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/firebase/client/Query;->validateNoOrderByCall()V

    .line 597
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {}, Lcom/firebase/client/snapshot/ValueIndex;->getInstance()Lcom/firebase/client/snapshot/ValueIndex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/view/QueryParams;->orderBy(Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/firebase/client/ChildEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/firebase/client/ChildEventListener;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/firebase/client/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p0}, Lcom/firebase/client/Query;->getSpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/firebase/client/core/ChildEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ChildEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 175
    return-void
.end method

.method public removeEventListener(Lcom/firebase/client/ValueEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/firebase/client/ValueEventListener;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v0, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p0}, Lcom/firebase/client/Query;->getSpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 163
    return-void
.end method

.method public startAt()Lcom/firebase/client/Query;
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/Query;->startAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(D)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/Query;->startAt(DLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(DLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 3
    .param p1, "value"    # D
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Lcom/firebase/client/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/firebase/client/Query;->startAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    new-instance v0, Lcom/firebase/client/snapshot/StringNode;

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/firebase/client/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V

    .line 281
    .local v0, "node":Lcom/firebase/client/snapshot/Node;
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/firebase/client/Query;->startAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v1

    return-object v1

    .line 280
    .end local v0    # "node":Lcom/firebase/client/snapshot/Node;
    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public startAt(Z)Lcom/firebase/client/Query;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Query;->startAt(ZLjava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(ZLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 3
    .param p1, "value"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Lcom/firebase/client/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/firebase/client/Query;->startAt(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method
