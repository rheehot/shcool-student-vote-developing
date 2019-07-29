.class Lcom/firebase/client/core/PersistentConnection$OutstandingPut;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingPut"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field private request:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p3, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->action:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->request:Ljava/util/Map;

    .line 82
    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/firebase/client/Firebase$CompletionListener;
    .param p4, "x3"    # Lcom/firebase/client/core/PersistentConnection$1;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/client/core/PersistentConnection$OutstandingPut;)Lcom/firebase/client/Firebase$CompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    return-object v0
.end method

.method public getRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->request:Ljava/util/Map;

    return-object v0
.end method
