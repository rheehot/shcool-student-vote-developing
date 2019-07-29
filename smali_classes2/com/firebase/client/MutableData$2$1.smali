.class Lcom/firebase/client/MutableData$2$1;
.super Ljava/lang/Object;
.source "MutableData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/MutableData$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/firebase/client/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/MutableData$2;


# direct methods
.method constructor <init>(Lcom/firebase/client/MutableData$2;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/firebase/client/MutableData$2$1;->this$1:Lcom/firebase/client/MutableData$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/firebase/client/MutableData$2$1;->this$1:Lcom/firebase/client/MutableData$2;

    iget-object v0, v0, Lcom/firebase/client/MutableData$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/firebase/client/MutableData;
    .locals 5

    .prologue
    .line 130
    iget-object v1, p0, Lcom/firebase/client/MutableData$2$1;->this$1:Lcom/firebase/client/MutableData$2;

    iget-object v1, v1, Lcom/firebase/client/MutableData$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 131
    .local v0, "namedNode":Lcom/firebase/client/snapshot/NamedNode;
    new-instance v1, Lcom/firebase/client/MutableData;

    iget-object v2, p0, Lcom/firebase/client/MutableData$2$1;->this$1:Lcom/firebase/client/MutableData$2;

    iget-object v2, v2, Lcom/firebase/client/MutableData$2;->this$0:Lcom/firebase/client/MutableData;

    invoke-static {v2}, Lcom/firebase/client/MutableData;->access$000(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/MutableData$2$1;->this$1:Lcom/firebase/client/MutableData$2;

    iget-object v3, v3, Lcom/firebase/client/MutableData$2;->this$0:Lcom/firebase/client/MutableData;

    invoke-static {v3}, Lcom/firebase/client/MutableData;->access$100(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;Lcom/firebase/client/MutableData$1;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/firebase/client/MutableData$2$1;->next()Lcom/firebase/client/MutableData;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
