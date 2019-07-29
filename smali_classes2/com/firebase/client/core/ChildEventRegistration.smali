.class public Lcom/firebase/client/core/ChildEventRegistration;
.super Lcom/firebase/client/core/EventRegistration;
.source "ChildEventRegistration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/ChildEventRegistration$1;
    }
.end annotation


# instance fields
.field private final eventListener:Lcom/firebase/client/ChildEventListener;

.field private final repo:Lcom/firebase/client/core/Repo;

.field private final spec:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ChildEventListener;Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 0
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "eventListener"    # Lcom/firebase/client/ChildEventListener;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "spec"    # Lcom/firebase/client/core/view/QuerySpec;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/firebase/client/core/EventRegistration;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/firebase/client/core/ChildEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    .line 20
    iput-object p2, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    .line 21
    iput-object p3, p0, Lcom/firebase/client/core/ChildEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    .line 22
    return-void
.end method


# virtual methods
.method public clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;
    .locals 3
    .param p1, "newQuery"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 81
    new-instance v0, Lcom/firebase/client/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/firebase/client/core/ChildEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/core/ChildEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ChildEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/DataEvent;
    .locals 6
    .param p1, "change"    # Lcom/firebase/client/core/view/Change;
    .param p2, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 44
    new-instance v1, Lcom/firebase/client/Firebase;

    iget-object v3, p0, Lcom/firebase/client/core/ChildEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 46
    .local v1, "ref":Lcom/firebase/client/Firebase;
    new-instance v2, Lcom/firebase/client/DataSnapshot;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 47
    .local v2, "snapshot":Lcom/firebase/client/DataSnapshot;
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getPrevName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getPrevName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "prevName":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/firebase/client/core/view/DataEvent;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v4

    invoke-direct {v3, v4, p0, v2, v0}, Lcom/firebase/client/core/view/DataEvent;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    return-object v3

    .line 47
    .end local v0    # "prevName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p1, Lcom/firebase/client/core/ChildEventRegistration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/firebase/client/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    iget-object v1, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/firebase/client/core/ChildEventRegistration;

    iget-object v0, v0, Lcom/firebase/client/core/ChildEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/ChildEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/firebase/client/core/ChildEventRegistration;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lcom/firebase/client/core/ChildEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    iget-object v1, p0, Lcom/firebase/client/core/ChildEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fireCancelEvent(Lcom/firebase/client/FirebaseError;)V
    .locals 1
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/firebase/client/ChildEventListener;->onCancelled(Lcom/firebase/client/FirebaseError;)V

    .line 77
    return-void
.end method

.method public fireEvent(Lcom/firebase/client/core/view/DataEvent;)V
    .locals 3
    .param p1, "eventData"    # Lcom/firebase/client/core/view/DataEvent;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/firebase/client/core/ChildEventRegistration;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/firebase/client/core/ChildEventRegistration$1;->$SwitchMap$com$firebase$client$core$view$Event$EventType:[I

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Event$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/ChildEventListener;->onChildAdded(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/ChildEventListener;->onChildChanged(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/ChildEventListener;->onChildMoved(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_3
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/ChildEventListener;->onChildRemoved(Lcom/firebase/client/DataSnapshot;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .annotation build Lcom/firebase/client/annotations/NotNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    return-object v0
.end method

.method getRepo()Lcom/firebase/client/core/Repo;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSameListener(Lcom/firebase/client/core/EventRegistration;)Z
    .locals 2
    .param p1, "other"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 86
    instance-of v0, p1, Lcom/firebase/client/core/ChildEventRegistration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/firebase/client/core/ChildEventRegistration;

    .end local p1    # "other":Lcom/firebase/client/core/EventRegistration;
    iget-object v0, p1, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    iget-object v1, p0, Lcom/firebase/client/core/ChildEventRegistration;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public respondsTo(Lcom/firebase/client/core/view/Event$EventType;)Z
    .locals 1
    .param p1, "eventType"    # Lcom/firebase/client/core/view/Event$EventType;

    .prologue
    .line 26
    sget-object v0, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "ChildEventRegistration"

    return-object v0
.end method
