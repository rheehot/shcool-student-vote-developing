.class public Lcom/firebase/client/core/persistence/LRUCachePolicy;
.super Ljava/lang/Object;
.source "LRUCachePolicy.java"

# interfaces
.implements Lcom/firebase/client/core/persistence/CachePolicy;


# static fields
.field private static final MAX_NUMBER_OF_PRUNABLE_QUERIES_TO_KEEP:J = 0x3e8L

.field private static final PERCENT_OF_QUERIES_TO_PRUNE_AT_ONCE:F = 0.2f

.field private static final SERVER_UPDATES_BETWEEN_CACHE_SIZE_CHECKS:J = 0x3e8L


# instance fields
.field public final maxSizeBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxSizeBytes"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/firebase/client/core/persistence/LRUCachePolicy;->maxSizeBytes:J

    .line 12
    return-void
.end method


# virtual methods
.method public getMaxNumberOfQueriesToKeep()J
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getPercentOfQueriesToPruneAtOnce()F
    .locals 1

    .prologue
    .line 23
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public shouldCheckCacheSize(J)Z
    .locals 3
    .param p1, "serverUpdatesSinceLastCheck"    # J

    .prologue
    .line 19
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldPrune(JJ)Z
    .locals 3
    .param p1, "currentSizeBytes"    # J
    .param p3, "countOfPrunableQueries"    # J

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/firebase/client/core/persistence/LRUCachePolicy;->maxSizeBytes:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
