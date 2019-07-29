.class public abstract Lcom/firebase/client/core/EventRegistration;
.super Ljava/lang/Object;
.source "EventRegistration.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private isUserInitiated:Z

.field private listener:Lcom/firebase/client/core/EventRegistrationZombieListener;

.field private zombied:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/EventRegistration;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/firebase/client/core/EventRegistration;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    iput-boolean v1, p0, Lcom/firebase/client/core/EventRegistration;->isUserInitiated:Z

    return-void
.end method


# virtual methods
.method public abstract clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;
.end method

.method public abstract createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/DataEvent;
.end method

.method public abstract fireCancelEvent(Lcom/firebase/client/FirebaseError;)V
.end method

.method public abstract fireEvent(Lcom/firebase/client/core/view/DataEvent;)V
.end method

.method public abstract getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;
    .annotation build Lcom/firebase/client/annotations/NotNull;
    .end annotation
.end method

.method getRepo()Lcom/firebase/client/core/Repo;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isSameListener(Lcom/firebase/client/core/EventRegistration;)Z
.end method

.method public isUserInitiated()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/firebase/client/core/EventRegistration;->isUserInitiated:Z

    return v0
.end method

.method public isZombied()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/EventRegistration;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract respondsTo(Lcom/firebase/client/core/view/Event$EventType;)Z
.end method

.method public setIsUserInitiated(Z)V
    .locals 0
    .param p1, "isUserInitiated"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/firebase/client/core/EventRegistration;->isUserInitiated:Z

    .line 57
    return-void
.end method

.method public setOnZombied(Lcom/firebase/client/core/EventRegistrationZombieListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/core/EventRegistrationZombieListener;

    .prologue
    .line 46
    sget-boolean v0, Lcom/firebase/client/core/EventRegistration;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/EventRegistration;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    sget-boolean v0, Lcom/firebase/client/core/EventRegistration;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/EventRegistration;->listener:Lcom/firebase/client/core/EventRegistrationZombieListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/firebase/client/core/EventRegistration;->listener:Lcom/firebase/client/core/EventRegistrationZombieListener;

    .line 49
    return-void
.end method

.method public zombify()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/firebase/client/core/EventRegistration;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/firebase/client/core/EventRegistration;->listener:Lcom/firebase/client/core/EventRegistrationZombieListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/firebase/client/core/EventRegistration;->listener:Lcom/firebase/client/core/EventRegistrationZombieListener;

    invoke-interface {v0, p0}, Lcom/firebase/client/core/EventRegistrationZombieListener;->onZombied(Lcom/firebase/client/core/EventRegistration;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/core/EventRegistration;->listener:Lcom/firebase/client/core/EventRegistrationZombieListener;

    .line 39
    :cond_0
    return-void
.end method
