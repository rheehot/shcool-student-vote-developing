.class final Lcom/firebase/client/core/persistence/CachePolicy$1;
.super Ljava/lang/Object;
.source "CachePolicy.java"

# interfaces
.implements Lcom/firebase/client/core/persistence/CachePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/persistence/CachePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxNumberOfQueriesToKeep()J
    .locals 2

    .prologue
    .line 13
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getPercentOfQueriesToPruneAtOnce()F
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckCacheSize(J)Z
    .locals 1
    .param p1, "serverUpdatesSinceLastCheck"    # J

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public shouldPrune(JJ)Z
    .locals 1
    .param p1, "currentSizeBytes"    # J
    .param p3, "countOfPrunableQueries"    # J

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method
