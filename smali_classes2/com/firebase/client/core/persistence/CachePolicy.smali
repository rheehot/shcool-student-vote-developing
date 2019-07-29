.class public interface abstract Lcom/firebase/client/core/persistence/CachePolicy;
.super Ljava/lang/Object;
.source "CachePolicy.java"


# static fields
.field public static final NONE:Lcom/firebase/client/core/persistence/CachePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/firebase/client/core/persistence/CachePolicy$1;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/CachePolicy$1;-><init>()V

    sput-object v0, Lcom/firebase/client/core/persistence/CachePolicy;->NONE:Lcom/firebase/client/core/persistence/CachePolicy;

    return-void
.end method


# virtual methods
.method public abstract getMaxNumberOfQueriesToKeep()J
.end method

.method public abstract getPercentOfQueriesToPruneAtOnce()F
.end method

.method public abstract shouldCheckCacheSize(J)Z
.end method

.method public abstract shouldPrune(JJ)Z
.end method
