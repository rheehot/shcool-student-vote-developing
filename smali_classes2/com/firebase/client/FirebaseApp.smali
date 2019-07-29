.class public Lcom/firebase/client/FirebaseApp;
.super Ljava/lang/Object;
.source "FirebaseApp.java"


# instance fields
.field private final repo:Lcom/firebase/client/core/Repo;


# direct methods
.method protected constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/firebase/client/FirebaseApp;->repo:Lcom/firebase/client/core/Repo;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/FirebaseApp;)Lcom/firebase/client/core/Repo;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/FirebaseApp;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/firebase/client/FirebaseApp;->repo:Lcom/firebase/client/core/Repo;

    return-object v0
.end method


# virtual methods
.method public goOffline()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/firebase/client/FirebaseApp;->repo:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->interrupt(Lcom/firebase/client/core/Repo;)V

    .line 57
    return-void
.end method

.method public goOnline()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/firebase/client/FirebaseApp;->repo:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->resume(Lcom/firebase/client/core/Repo;)V

    .line 50
    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/firebase/client/FirebaseApp;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/FirebaseApp$1;

    invoke-direct {v1, p0}, Lcom/firebase/client/FirebaseApp$1;-><init>(Lcom/firebase/client/FirebaseApp;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method
