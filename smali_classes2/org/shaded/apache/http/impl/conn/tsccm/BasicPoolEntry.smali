.class public Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
.super Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p1, "op"    # Lorg/shaded/apache/http/conn/ClientConnectionOperator;
    .param p2, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "op"    # Lorg/shaded/apache/http/conn/ClientConnectionOperator;
    .param p2, "route"    # Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/conn/ClientConnectionOperator;",
            "Lorg/shaded/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V

    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method protected final getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/shaded/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method protected final getPlannedRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;->route:Lorg/shaded/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method

.method protected final getWeakRef()Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected shutdownEntry()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 86
    return-void
.end method
