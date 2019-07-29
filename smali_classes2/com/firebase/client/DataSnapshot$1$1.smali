.class Lcom/firebase/client/DataSnapshot$1$1;
.super Ljava/lang/Object;
.source "DataSnapshot.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/DataSnapshot$1;->iterator()Ljava/util/Iterator;
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
        "Lcom/firebase/client/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/DataSnapshot$1;


# direct methods
.method constructor <init>(Lcom/firebase/client/DataSnapshot$1;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/firebase/client/DataSnapshot$1$1;->this$1:Lcom/firebase/client/DataSnapshot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot$1$1;->this$1:Lcom/firebase/client/DataSnapshot$1;

    iget-object v0, v0, Lcom/firebase/client/DataSnapshot$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/firebase/client/DataSnapshot;
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/firebase/client/DataSnapshot$1$1;->this$1:Lcom/firebase/client/DataSnapshot$1;

    iget-object v1, v1, Lcom/firebase/client/DataSnapshot$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 261
    .local v0, "namedNode":Lcom/firebase/client/snapshot/NamedNode;
    new-instance v1, Lcom/firebase/client/DataSnapshot;

    iget-object v2, p0, Lcom/firebase/client/DataSnapshot$1$1;->this$1:Lcom/firebase/client/DataSnapshot$1;

    iget-object v2, v2, Lcom/firebase/client/DataSnapshot$1;->this$0:Lcom/firebase/client/DataSnapshot;

    invoke-static {v2}, Lcom/firebase/client/DataSnapshot;->access$000(Lcom/firebase/client/DataSnapshot;)Lcom/firebase/client/Firebase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/firebase/client/DataSnapshot$1$1;->next()Lcom/firebase/client/DataSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
