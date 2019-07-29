.class Lcom/firebase/client/core/Repo$9;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->onDisconnectUpdate(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$newChildren:Ljava/util/Map;

.field final synthetic val$path:Lcom/firebase/client/core/Path;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/firebase/client/core/Repo$9;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$9;->val$path:Lcom/firebase/client/core/Path;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$9;->val$newChildren:Ljava/util/Map;

    iput-object p4, p0, Lcom/firebase/client/core/Repo$9;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 5
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;
    .param p2, "ref"    # Lcom/firebase/client/Firebase;

    .prologue
    .line 414
    iget-object v2, p0, Lcom/firebase/client/core/Repo$9;->this$0:Lcom/firebase/client/core/Repo;

    const-string v3, "onDisconnect().updateChildren"

    iget-object v4, p0, Lcom/firebase/client/core/Repo$9;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v2, v3, v4, p1}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    .line 415
    if-nez p1, :cond_0

    .line 416
    iget-object v2, p0, Lcom/firebase/client/core/Repo$9;->val$newChildren:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    iget-object v2, p0, Lcom/firebase/client/core/Repo$9;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2}, Lcom/firebase/client/core/Repo;->access$700(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SparseSnapshotTree;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/Repo$9;->val$path:Lcom/firebase/client/core/Path;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Path;

    invoke-virtual {v4, v2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v3, v4, v2}, Lcom/firebase/client/core/SparseSnapshotTree;->remember(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 420
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/Repo$9;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v3, p0, Lcom/firebase/client/core/Repo$9;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v4, p0, Lcom/firebase/client/core/Repo$9;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2, v3, p1, v4}, Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    .line 421
    return-void
.end method
