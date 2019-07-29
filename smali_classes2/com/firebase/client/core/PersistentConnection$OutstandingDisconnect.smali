.class Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingDisconnect"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final data:Ljava/lang/Object;

.field private final onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field private final path:Lcom/firebase/client/core/Path;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->action:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->path:Lcom/firebase/client/core/Path;

    .line 108
    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->data:Ljava/lang/Object;

    .line 109
    iput-object p4, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/firebase/client/core/Path;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/firebase/client/Firebase$CompletionListener;
    .param p5, "x4"    # Lcom/firebase/client/core/PersistentConnection$1;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;)Lcom/firebase/client/Firebase$CompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method
