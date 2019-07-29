.class Lcom/firebase/client/core/persistence/TrackedQueryManager$6;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/persistence/TrackedQueryManager;->pruneOldQueries(Lcom/firebase/client/core/persistence/CachePolicy;)Lcom/firebase/client/core/persistence/PruneForest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/firebase/client/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager$6;->this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/firebase/client/core/persistence/TrackedQuery;Lcom/firebase/client/core/persistence/TrackedQuery;)I
    .locals 4
    .param p1, "q1"    # Lcom/firebase/client/core/persistence/TrackedQuery;
    .param p2, "q2"    # Lcom/firebase/client/core/persistence/TrackedQuery;

    .prologue
    .line 190
    iget-wide v0, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    iget-wide v2, p2, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v0, v1, v2, v3}, Lcom/firebase/client/utilities/Utilities;->compareLongs(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, Lcom/firebase/client/core/persistence/TrackedQuery;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/firebase/client/core/persistence/TrackedQuery;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/core/persistence/TrackedQueryManager$6;->compare(Lcom/firebase/client/core/persistence/TrackedQuery;Lcom/firebase/client/core/persistence/TrackedQuery;)I

    move-result v0

    return v0
.end method
