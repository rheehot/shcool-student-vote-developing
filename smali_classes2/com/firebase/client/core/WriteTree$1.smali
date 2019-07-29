.class Lcom/firebase/client/core/WriteTree$1;
.super Ljava/lang/Object;
.source "WriteTree.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/WriteTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Predicate",
        "<",
        "Lcom/firebase/client/core/UserWriteRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/WriteTree;

.field final synthetic val$includeHiddenWrites:Z

.field final synthetic val$treePath:Lcom/firebase/client/core/Path;

.field final synthetic val$writeIdsToExclude:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/WriteTree;ZLjava/util/List;Lcom/firebase/client/core/Path;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/firebase/client/core/WriteTree$1;->this$0:Lcom/firebase/client/core/WriteTree;

    iput-boolean p2, p0, Lcom/firebase/client/core/WriteTree$1;->val$includeHiddenWrites:Z

    iput-object p3, p0, Lcom/firebase/client/core/WriteTree$1;->val$writeIdsToExclude:Ljava/util/List;

    iput-object p4, p0, Lcom/firebase/client/core/WriteTree$1;->val$treePath:Lcom/firebase/client/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/firebase/client/core/UserWriteRecord;)Z
    .locals 4
    .param p1, "write"    # Lcom/firebase/client/core/UserWriteRecord;

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/firebase/client/core/WriteTree$1;->val$includeHiddenWrites:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree$1;->val$writeIdsToExclude:Ljava/util/List;

    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/WriteTree$1;->val$treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/WriteTree$1;->val$treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, Lcom/firebase/client/core/UserWriteRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/WriteTree$1;->evaluate(Lcom/firebase/client/core/UserWriteRecord;)Z

    move-result v0

    return v0
.end method
