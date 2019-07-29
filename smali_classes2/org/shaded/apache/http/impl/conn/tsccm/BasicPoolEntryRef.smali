.class public Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
.super Ljava/lang/ref/WeakReference;
.source "BasicPoolEntryRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;",
        ">;"
    }
.end annotation

.annotation build Lorg/shaded/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final route:Lorg/shaded/apache/http/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "entry"    # Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pool entry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .line 67
    return-void
.end method


# virtual methods
.method public final getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/shaded/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method
