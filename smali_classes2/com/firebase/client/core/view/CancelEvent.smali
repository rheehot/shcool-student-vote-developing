.class public Lcom/firebase/client/core/view/CancelEvent;
.super Ljava/lang/Object;
.source "CancelEvent.java"

# interfaces
.implements Lcom/firebase/client/core/view/Event;


# instance fields
.field private final error:Lcom/firebase/client/FirebaseError;

.field private final eventRegistration:Lcom/firebase/client/core/EventRegistration;

.field private final path:Lcom/firebase/client/core/Path;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V
    .locals 0
    .param p1, "eventRegistration"    # Lcom/firebase/client/core/EventRegistration;
    .param p2, "error"    # Lcom/firebase/client/FirebaseError;
    .param p3, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/firebase/client/core/view/CancelEvent;->eventRegistration:Lcom/firebase/client/core/EventRegistration;

    .line 15
    iput-object p3, p0, Lcom/firebase/client/core/view/CancelEvent;->path:Lcom/firebase/client/core/Path;

    .line 16
    iput-object p2, p0, Lcom/firebase/client/core/view/CancelEvent;->error:Lcom/firebase/client/FirebaseError;

    .line 17
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/firebase/client/core/view/CancelEvent;->eventRegistration:Lcom/firebase/client/core/EventRegistration;

    iget-object v1, p0, Lcom/firebase/client/core/view/CancelEvent;->error:Lcom/firebase/client/FirebaseError;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/EventRegistration;->fireCancelEvent(Lcom/firebase/client/FirebaseError;)V

    .line 25
    return-void
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/firebase/client/core/view/CancelEvent;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/core/view/CancelEvent;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
