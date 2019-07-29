.class public Lcom/firebase/client/core/ZombieEventManager;
.super Ljava/lang/Object;
.source "ZombieEventManager.java"

# interfaces
.implements Lcom/firebase/client/core/EventRegistrationZombieListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static defaultInstance:Lcom/firebase/client/core/ZombieEventManager;


# instance fields
.field final globalEventRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/firebase/client/core/ZombieEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/ZombieEventManager;->$assertionsDisabled:Z

    .line 26
    new-instance v0, Lcom/firebase/client/core/ZombieEventManager;

    invoke-direct {v0}, Lcom/firebase/client/core/ZombieEventManager;-><init>()V

    sput-object v0, Lcom/firebase/client/core/ZombieEventManager;->defaultInstance:Lcom/firebase/client/core/ZombieEventManager;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/firebase/client/core/ZombieEventManager;
    .locals 1
    .annotation build Lcom/firebase/client/annotations/NotNull;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/firebase/client/core/ZombieEventManager;->defaultInstance:Lcom/firebase/client/core/ZombieEventManager;

    return-object v0
.end method

.method private unRecordEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
    .locals 6
    .param p1, "zombiedRegistration"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 64
    iget-object v5, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v5

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "found":Z
    :try_start_0
    iget-object v4, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 68
    .local v3, "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    if-eqz v3, :cond_1

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 70
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v2    # "i":I
    :cond_1
    sget-boolean v4, Lcom/firebase/client/core/ZombieEventManager;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->isUserInitiated()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 101
    .end local v3    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 69
    .restart local v2    # "i":I
    .restart local v3    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v4

    if-nez v4, :cond_5

    .line 85
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/firebase/client/core/EventRegistration;->clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;

    move-result-object v0

    .line 88
    .local v0, "defaultRegistration":Lcom/firebase/client/core/EventRegistration;
    iget-object v4, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    check-cast v3, Ljava/util/List;

    .line 89
    .restart local v3    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    if-eqz v3, :cond_5

    .line 90
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 91
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_6

    .line 92
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    iget-object v4, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v0    # "defaultRegistration":Lcom/firebase/client/core/EventRegistration;
    .end local v2    # "i":I
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-void

    .line 90
    .restart local v0    # "defaultRegistration":Lcom/firebase/client/core/EventRegistration;
    .restart local v2    # "i":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onZombied(Lcom/firebase/client/core/EventRegistration;)V
    .locals 0
    .param p1, "zombiedInstance"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/firebase/client/core/ZombieEventManager;->unRecordEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 141
    return-void
.end method

.method public recordEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
    .locals 4
    .param p1, "registration"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 37
    iget-object v3, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v3

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 39
    .local v1, "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .restart local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    iget-object v2, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/firebase/client/core/EventRegistration;->clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;

    move-result-object v0

    .line 50
    .local v0, "defaultRegistration":Lcom/firebase/client/core/EventRegistration;
    iget-object v2, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    check-cast v1, Ljava/util/List;

    .line 51
    .restart local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    if-nez v1, :cond_1

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .restart local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    iget-object v2, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v0    # "defaultRegistration":Lcom/firebase/client/core/EventRegistration;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/firebase/client/core/EventRegistration;->setIsUserInitiated(Z)V

    .line 59
    invoke-virtual {p1, p0}, Lcom/firebase/client/core/EventRegistration;->setOnZombied(Lcom/firebase/client/core/EventRegistrationZombieListener;)V

    .line 60
    monitor-exit v3

    .line 61
    return-void

    .line 60
    .end local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public zombifyForRemove(Lcom/firebase/client/core/EventRegistration;)V
    .locals 6
    .param p1, "registration"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 105
    iget-object v5, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v5

    .line 106
    :try_start_0
    iget-object v4, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 107
    .local v2, "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v3, "zombiedQueries":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/firebase/client/core/view/QuerySpec;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 123
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/EventRegistration;

    .line 124
    .local v0, "currentRegistration":Lcom/firebase/client/core/EventRegistration;
    invoke-virtual {v0}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Lcom/firebase/client/core/EventRegistration;->zombify()V

    .line 122
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 132
    .end local v0    # "currentRegistration":Lcom/firebase/client/core/EventRegistration;
    .end local v1    # "i":I
    .end local v3    # "zombiedQueries":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/firebase/client/core/view/QuerySpec;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v4}, Lcom/firebase/client/core/EventRegistration;->zombify()V

    .line 135
    :cond_2
    monitor-exit v5

    .line 136
    return-void

    .line 135
    .end local v2    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
