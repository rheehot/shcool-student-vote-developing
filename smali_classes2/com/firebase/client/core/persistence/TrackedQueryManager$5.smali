.class Lcom/firebase/client/core/persistence/TrackedQueryManager$5;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/persistence/TrackedQueryManager;->setQueriesComplete(Lcom/firebase/client/core/Path;)V
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
        "Ljava/util/Map",
        "<",
        "Lcom/firebase/client/core/view/QueryParams;",
        "Lcom/firebase/client/core/persistence/TrackedQuery;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager$5;->this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;

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
    .line 152
    check-cast p2, Ljava/util/Map;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Void;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/persistence/TrackedQueryManager$5;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "relativePath"    # Lcom/firebase/client/core/Path;
    .param p3, "accum"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/persistence/TrackedQuery;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/persistence/TrackedQuery;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 157
    .local v2, "trackedQuery":Lcom/firebase/client/core/persistence/TrackedQuery;
    iget-boolean v3, v2, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    if-nez v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager$5;->this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v2}, Lcom/firebase/client/core/persistence/TrackedQuery;->setComplete()Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->access$100(Lcom/firebase/client/core/persistence/TrackedQueryManager;Lcom/firebase/client/core/persistence/TrackedQuery;)V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/persistence/TrackedQuery;>;"
    .end local v2    # "trackedQuery":Lcom/firebase/client/core/persistence/TrackedQuery;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
