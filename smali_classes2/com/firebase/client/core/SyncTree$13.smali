.class Lcom/firebase/client/core/SyncTree$13;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/SyncTree;->setupListener(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
        "<",
        "Lcom/firebase/client/core/SyncPoint;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/core/Path;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 679
    check-cast p2, Lcom/firebase/client/core/SyncPoint;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Void;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/SyncTree$13;->onNodeValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "relativePath"    # Lcom/firebase/client/core/Path;
    .param p2, "maybeChildSyncPoint"    # Lcom/firebase/client/core/SyncPoint;
    .param p3, "accum"    # Ljava/lang/Void;

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 683
    invoke-virtual {p2}, Lcom/firebase/client/core/SyncPoint;->getCompleteView()Lcom/firebase/client/core/view/View;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    .line 684
    .local v2, "query":Lcom/firebase/client/core/view/QuerySpec;
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v4}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v5, v2}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    iget-object v6, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v6, v2}, Lcom/firebase/client/core/SyncTree;->access$000(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    .line 692
    .end local v2    # "query":Lcom/firebase/client/core/view/QuerySpec;
    :cond_0
    const/4 v4, 0x0

    return-object v4

    .line 687
    :cond_1
    invoke-virtual {p2}, Lcom/firebase/client/core/SyncPoint;->getQueryViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/view/View;

    .line 688
    .local v3, "syncPointView":Lcom/firebase/client/core/view/View;
    invoke-virtual {v3}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    .line 689
    .local v0, "childQuery":Lcom/firebase/client/core/view/QuerySpec;
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v4}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v5, v0}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    iget-object v6, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-static {v6, v0}, Lcom/firebase/client/core/SyncTree;->access$000(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    goto :goto_0
.end method
