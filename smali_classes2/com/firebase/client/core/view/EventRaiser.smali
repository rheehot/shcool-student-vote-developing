.class public Lcom/firebase/client/core/view/EventRaiser;
.super Ljava/lang/Object;
.source "EventRaiser.java"


# instance fields
.field private final eventTarget:Lcom/firebase/client/EventTarget;

.field private final logger:Lcom/firebase/client/utilities/LogWrapper;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Context;)V
    .locals 1
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/EventRaiser;->eventTarget:Lcom/firebase/client/EventTarget;

    .line 26
    const-string v0, "EventRaiser"

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/view/EventRaiser;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/view/EventRaiser;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object v0
.end method


# virtual methods
.method public raiseEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    iget-object v1, p0, Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raising "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .local v0, "eventsClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/firebase/client/core/view/Event;>;"
    iget-object v1, p0, Lcom/firebase/client/core/view/EventRaiser;->eventTarget:Lcom/firebase/client/EventTarget;

    new-instance v2, Lcom/firebase/client/core/view/EventRaiser$1;

    invoke-direct {v2, p0, v0}, Lcom/firebase/client/core/view/EventRaiser$1;-><init>(Lcom/firebase/client/core/view/EventRaiser;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
