.class public abstract Lcom/firebase/client/core/operation/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/operation/Operation$OperationType;
    }
.end annotation


# instance fields
.field protected final path:Lcom/firebase/client/core/Path;

.field protected final source:Lcom/firebase/client/core/operation/OperationSource;

.field protected final type:Lcom/firebase/client/core/operation/Operation$OperationType;


# direct methods
.method protected constructor <init>(Lcom/firebase/client/core/operation/Operation$OperationType;Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V
    .locals 0
    .param p1, "type"    # Lcom/firebase/client/core/operation/Operation$OperationType;
    .param p2, "source"    # Lcom/firebase/client/core/operation/OperationSource;
    .param p3, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/core/operation/Operation;->type:Lcom/firebase/client/core/operation/Operation$OperationType;

    .line 18
    iput-object p2, p0, Lcom/firebase/client/core/operation/Operation;->source:Lcom/firebase/client/core/operation/OperationSource;

    .line 19
    iput-object p3, p0, Lcom/firebase/client/core/operation/Operation;->path:Lcom/firebase/client/core/Path;

    .line 20
    return-void
.end method


# virtual methods
.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/firebase/client/core/operation/Operation;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public getSource()Lcom/firebase/client/core/operation/OperationSource;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/core/operation/Operation;->source:Lcom/firebase/client/core/operation/OperationSource;

    return-object v0
.end method

.method public getType()Lcom/firebase/client/core/operation/Operation$OperationType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/firebase/client/core/operation/Operation;->type:Lcom/firebase/client/core/operation/Operation$OperationType;

    return-object v0
.end method

.method public abstract operationForChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/operation/Operation;
.end method
