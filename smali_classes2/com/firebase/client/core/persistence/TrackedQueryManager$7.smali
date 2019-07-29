.class Lcom/firebase/client/core/persistence/TrackedQueryManager$7;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/persistence/TrackedQueryManager;->verifyCache()V
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

.field final synthetic val$trackedQueries:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager$7;->this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    iput-object p2, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager$7;->val$trackedQueries:Ljava/util/List;

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
    .line 289
    check-cast p2, Ljava/util/Map;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Void;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/persistence/TrackedQueryManager$7;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
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
    .line 292
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/persistence/TrackedQuery;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 293
    .local v1, "trackedQuery":Lcom/firebase/client/core/persistence/TrackedQuery;
    iget-object v2, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager$7;->val$trackedQueries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    .end local v1    # "trackedQuery":Lcom/firebase/client/core/persistence/TrackedQuery;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
