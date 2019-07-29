.class Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;
.super Lcom/firebase/client/core/EventRegistration;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/SyncTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepSyncedEventRegistration"
.end annotation


# instance fields
.field private spec:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 0
    .param p1, "spec"    # Lcom/firebase/client/core/view/QuerySpec;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/firebase/client/core/EventRegistration;-><init>()V

    .line 584
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    .line 585
    return-void
.end method


# virtual methods
.method public clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;
    .locals 1
    .param p1, "newQuery"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 592
    new-instance v0, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;-><init>(Lcom/firebase/client/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/DataEvent;
    .locals 1
    .param p1, "change"    # Lcom/firebase/client/core/view/Change;
    .param p2, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 597
    instance-of v0, p1, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

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
    .locals 0
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 589
    return-void
.end method

.method public fireEvent(Lcom/firebase/client/core/view/DataEvent;)V
    .locals 0
    .param p1, "dataEvent"    # Lcom/firebase/client/core/view/DataEvent;

    .prologue
    .line 588
    return-void
.end method

.method public getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .annotation build Lcom/firebase/client/annotations/NotNull;
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSameListener(Lcom/firebase/client/core/EventRegistration;)Z
    .locals 1
    .param p1, "other"    # Lcom/firebase/client/core/EventRegistration;

    .prologue
    .line 594
    instance-of v0, p1, Lcom/firebase/client/core/SyncTree$KeepSyncedEventRegistration;

    return v0
.end method

.method public respondsTo(Lcom/firebase/client/core/view/Event$EventType;)Z
    .locals 1
    .param p1, "eventType"    # Lcom/firebase/client/core/view/Event$EventType;

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method
