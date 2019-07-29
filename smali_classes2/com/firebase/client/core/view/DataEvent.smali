.class public Lcom/firebase/client/core/view/DataEvent;
.super Ljava/lang/Object;
.source "DataEvent.java"

# interfaces
.implements Lcom/firebase/client/core/view/Event;


# instance fields
.field private final eventRegistration:Lcom/firebase/client/core/EventRegistration;

.field private final eventType:Lcom/firebase/client/core/view/Event$EventType;

.field private final prevName:Ljava/lang/String;

.field private final snapshot:Lcom/firebase/client/DataSnapshot;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/view/Event$EventType;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Lcom/firebase/client/core/view/Event$EventType;
    .param p2, "eventRegistration"    # Lcom/firebase/client/core/EventRegistration;
    .param p3, "snapshot"    # Lcom/firebase/client/DataSnapshot;
    .param p4, "prevName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/firebase/client/core/view/DataEvent;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    .line 16
    iput-object p2, p0, Lcom/firebase/client/core/view/DataEvent;->eventRegistration:Lcom/firebase/client/core/EventRegistration;

    .line 17
    iput-object p3, p0, Lcom/firebase/client/core/view/DataEvent;->snapshot:Lcom/firebase/client/DataSnapshot;

    .line 18
    iput-object p4, p0, Lcom/firebase/client/core/view/DataEvent;->prevName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/firebase/client/core/view/DataEvent;->eventRegistration:Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v0, p0}, Lcom/firebase/client/core/EventRegistration;->fireEvent(Lcom/firebase/client/core/view/DataEvent;)V

    .line 46
    return-void
.end method

.method public getEventType()Lcom/firebase/client/core/view/Event$EventType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/firebase/client/core/view/DataEvent;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 3

    .prologue
    .line 23
    iget-object v1, p0, Lcom/firebase/client/core/view/DataEvent;->snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v1}, Lcom/firebase/client/DataSnapshot;->getRef()Lcom/firebase/client/Firebase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 24
    .local v0, "path":Lcom/firebase/client/core/Path;
    iget-object v1, p0, Lcom/firebase/client/core/view/DataEvent;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v1, v2, :cond_0

    .line 27
    .end local v0    # "path":Lcom/firebase/client/core/Path;
    :goto_0
    return-object v0

    .restart local v0    # "path":Lcom/firebase/client/core/Path;
    :cond_0
    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/client/core/view/DataEvent;->prevName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshot()Lcom/firebase/client/DataSnapshot;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/firebase/client/core/view/DataEvent;->snapshot:Lcom/firebase/client/DataSnapshot;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    iget-object v0, p0, Lcom/firebase/client/core/view/DataEvent;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/core/view/DataEvent;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/DataEvent;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/DataEvent;->snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v1, v2}, Lcom/firebase/client/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/core/view/DataEvent;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/DataEvent;->eventType:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/DataEvent;->snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v1}, Lcom/firebase/client/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/DataEvent;->snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v1, v2}, Lcom/firebase/client/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
