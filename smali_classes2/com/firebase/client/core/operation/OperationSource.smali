.class public Lcom/firebase/client/core/operation/OperationSource;
.super Ljava/lang/Object;
.source "OperationSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/operation/OperationSource$Source;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SERVER:Lcom/firebase/client/core/operation/OperationSource;

.field public static final USER:Lcom/firebase/client/core/operation/OperationSource;


# instance fields
.field private final queryParams:Lcom/firebase/client/core/view/QueryParams;

.field private final source:Lcom/firebase/client/core/operation/OperationSource$Source;

.field private final tagged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 5
    const-class v0, Lcom/firebase/client/core/operation/OperationSource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/operation/OperationSource;->$assertionsDisabled:Z

    .line 11
    new-instance v0, Lcom/firebase/client/core/operation/OperationSource;

    sget-object v2, Lcom/firebase/client/core/operation/OperationSource$Source;->User:Lcom/firebase/client/core/operation/OperationSource$Source;

    invoke-direct {v0, v2, v3, v1}, Lcom/firebase/client/core/operation/OperationSource;-><init>(Lcom/firebase/client/core/operation/OperationSource$Source;Lcom/firebase/client/core/view/QueryParams;Z)V

    sput-object v0, Lcom/firebase/client/core/operation/OperationSource;->USER:Lcom/firebase/client/core/operation/OperationSource;

    .line 12
    new-instance v0, Lcom/firebase/client/core/operation/OperationSource;

    sget-object v2, Lcom/firebase/client/core/operation/OperationSource$Source;->Server:Lcom/firebase/client/core/operation/OperationSource$Source;

    invoke-direct {v0, v2, v3, v1}, Lcom/firebase/client/core/operation/OperationSource;-><init>(Lcom/firebase/client/core/operation/OperationSource$Source;Lcom/firebase/client/core/view/QueryParams;Z)V

    sput-object v0, Lcom/firebase/client/core/operation/OperationSource;->SERVER:Lcom/firebase/client/core/operation/OperationSource;

    return-void

    :cond_0
    move v0, v1

    .line 5
    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/operation/OperationSource$Source;Lcom/firebase/client/core/view/QueryParams;Z)V
    .locals 1
    .param p1, "source"    # Lcom/firebase/client/core/operation/OperationSource$Source;
    .param p2, "queryParams"    # Lcom/firebase/client/core/view/QueryParams;
    .param p3, "tagged"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/firebase/client/core/operation/OperationSource;->source:Lcom/firebase/client/core/operation/OperationSource$Source;

    .line 24
    iput-object p2, p0, Lcom/firebase/client/core/operation/OperationSource;->queryParams:Lcom/firebase/client/core/view/QueryParams;

    .line 25
    iput-boolean p3, p0, Lcom/firebase/client/core/operation/OperationSource;->tagged:Z

    .line 26
    sget-boolean v0, Lcom/firebase/client/core/operation/OperationSource;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/operation/OperationSource;->isFromServer()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_0
    return-void
.end method

.method public static forServerTaggedQuery(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/operation/OperationSource;
    .locals 3
    .param p0, "queryParams"    # Lcom/firebase/client/core/view/QueryParams;

    .prologue
    .line 15
    new-instance v0, Lcom/firebase/client/core/operation/OperationSource;

    sget-object v1, Lcom/firebase/client/core/operation/OperationSource$Source;->Server:Lcom/firebase/client/core/operation/OperationSource$Source;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/firebase/client/core/operation/OperationSource;-><init>(Lcom/firebase/client/core/operation/OperationSource$Source;Lcom/firebase/client/core/view/QueryParams;Z)V

    return-object v0
.end method


# virtual methods
.method public getQueryParams()Lcom/firebase/client/core/view/QueryParams;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/firebase/client/core/operation/OperationSource;->queryParams:Lcom/firebase/client/core/view/QueryParams;

    return-object v0
.end method

.method public isFromServer()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/firebase/client/core/operation/OperationSource;->source:Lcom/firebase/client/core/operation/OperationSource$Source;

    sget-object v1, Lcom/firebase/client/core/operation/OperationSource$Source;->Server:Lcom/firebase/client/core/operation/OperationSource$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromUser()Z
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/firebase/client/core/operation/OperationSource;->source:Lcom/firebase/client/core/operation/OperationSource$Source;

    sget-object v1, Lcom/firebase/client/core/operation/OperationSource$Source;->User:Lcom/firebase/client/core/operation/OperationSource$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/firebase/client/core/operation/OperationSource;->tagged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationSource{source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/operation/OperationSource;->source:Lcom/firebase/client/core/operation/OperationSource$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/operation/OperationSource;->queryParams:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/firebase/client/core/operation/OperationSource;->tagged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
