.class public Lorg/shaded/apache/http/protocol/SyncBasicHttpContext;
.super Lorg/shaded/apache/http/protocol/BasicHttpContext;
.source "SyncBasicHttpContext.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 0
    .param p1, "parentContext"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpContext;-><init>(Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/shaded/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
