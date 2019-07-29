.class public Lcom/firebase/client/core/ValueEventRegistration;
.super Lcom/firebase/client/core/EventRegistration;
.source "ValueEventRegistration.java"


# instance fields
.field private final eventListener:Lcom/firebase/client/ValueEventListener;

.field private final repo:Lcom/firebase/client/core/Repo;

.field private final spec:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 0
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;
    .param p2, "eventListener"    # Lcom/firebase/client/ValueEventListener;
    .param p3, "spec"    # Lcom/firebase/client/core/view/QuerySpec;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/firebase/client/core/EventRegistration;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/core/ValueEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    .line 18
    iput-object p2, p0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    .line 19
    iput-object p3, p0, Lcom/firebase/client/core/ValueEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    .line 20
    return-void
.end method


# virtual methods
.method public clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;
    .locals 3
    .param p1, "newQuery"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 63
    new-instance v0, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/firebase/client/core/ValueEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/DataEvent;
    .locals 5
    .param p1, "change"    # Lcom/firebase/client/core/view/Change;
    .param p2, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 42
    new-instance v1, Lcom/firebase/client/Firebase;

    iget-object v2, p0, Lcom/firebase/client/core/ValueEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 44
    .local v1, "ref":Lcom/firebase/client/Firebase;
    new-instance v0, Lcom/firebase/client/DataSnapshot;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 45
    .local v0, "dataSnapshot":Lcom/firebase/client/DataSnapshot;
    new-instance v2, Lcom/firebase/client/core/view/DataEvent;

    sget-object v3, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v0, v4}, Lcom/firebase/client/core/view/DataEvent;-><init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 29
    instance-of v0, p1, Lcom/firebase/client/core/ValueEventRegistration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v0, v0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    iget-object v1, p0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v0, v0, Lcom/firebase/client/core/ValueEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/ValueEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/firebase/client/core/ValueEventRegistration;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lcom/firebase/client/core/ValueEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    iget-object v1, p0, Lcom/firebase/client/core/ValueEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

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
    .line 58
    iget-object v0, p0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/firebase/client/ValueEventListener;->onCancelled(Lcom/firebase/client/FirebaseError;)V

    .line 59
    return-void
.end method

.method public fireEvent(Lcom/firebase/client/core/view/DataEvent;)V
    .locals 2
    .param p1, "eventData"    # Lcom/firebase/client/core/view/DataEvent;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/firebase/client/core/ValueEventRegistration;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/DataEvent;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/ValueEventListener;->onDataChange(Lcom/firebase/client/DataSnapshot;)V

    goto :goto_0
.end method

.method public getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .annotation build Lcom/firebase/client/annotations/NotNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/firebase/client/core/ValueEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    return-object v0
.end method

.method getRepo()Lcom/firebase/client/core/Repo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/firebase/client/core/ValueEventRegistration;->repo:Lcom/firebase/client/core/Repo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSameListener(Lcom/firebase/client/core/EventRegistration;)Z
    .locals 2
    .param p1, "other"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 68
    instance-of v0, p1, Lcom/firebase/client/core/ValueEventRegistration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/firebase/client/core/ValueEventRegistration;

    .end local p1    # "other":Lcom/firebase/client/core/EventRegistration;
    iget-object v0, p1, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

    iget-object v1, p0, Lcom/firebase/client/core/ValueEventRegistration;->eventListener:Lcom/firebase/client/ValueEventListener;

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
    .line 24
    sget-object v0, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    if-ne p1, v0, :cond_0

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
    .line 80
    const-string v0, "ValueEventRegistration"

    return-object v0
.end method
