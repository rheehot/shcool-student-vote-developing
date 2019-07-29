.class final Lcom/firebase/client/core/persistence/TrackedQueryManager$4;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/persistence/TrackedQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Predicate",
        "<",
        "Lcom/firebase/client/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/firebase/client/core/persistence/TrackedQuery;)Z
    .locals 1
    .param p1, "query"    # Lcom/firebase/client/core/persistence/TrackedQuery;

    .prologue
    .line 45
    invoke-static {}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->access$000()Lcom/firebase/client/core/utilities/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lcom/firebase/client/core/persistence/TrackedQuery;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager$4;->evaluate(Lcom/firebase/client/core/persistence/TrackedQuery;)Z

    move-result v0

    return v0
.end method
