.class public Lcom/firebase/client/core/operation/ListenComplete;
.super Lcom/firebase/client/core/operation/Operation;
.source "ListenComplete.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/firebase/client/core/operation/ListenComplete;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/operation/ListenComplete;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V
    .locals 2
    .param p1, "source"    # Lcom/firebase/client/core/operation/OperationSource;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 9
    sget-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->ListenComplete:Lcom/firebase/client/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/firebase/client/core/operation/Operation;-><init>(Lcom/firebase/client/core/operation/Operation$OperationType;Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    .line 10
    sget-boolean v0, Lcom/firebase/client/core/operation/ListenComplete;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/operation/OperationSource;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t have a listen complete from a user source"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public operationForChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/operation/Operation;
    .locals 3
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/firebase/client/core/operation/ListenComplete;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/firebase/client/core/operation/ListenComplete;

    iget-object v1, p0, Lcom/firebase/client/core/operation/ListenComplete;->source:Lcom/firebase/client/core/operation/OperationSource;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/operation/ListenComplete;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/firebase/client/core/operation/ListenComplete;

    iget-object v1, p0, Lcom/firebase/client/core/operation/ListenComplete;->source:Lcom/firebase/client/core/operation/OperationSource;

    iget-object v2, p0, Lcom/firebase/client/core/operation/ListenComplete;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/operation/ListenComplete;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    const-string v0, "ListenComplete { path=%s, source=%s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/ListenComplete;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/ListenComplete;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
