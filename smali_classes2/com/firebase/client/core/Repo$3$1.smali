.class Lcom/firebase/client/core/Repo$3$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$RequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo$3;->startListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/SyncTree$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/core/Repo$3;

.field final synthetic val$onListenComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo$3;Lcom/firebase/client/core/SyncTree$CompletionListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/firebase/client/core/Repo$3$1;->this$1:Lcom/firebase/client/core/Repo$3;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$3$1;->val$onListenComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/firebase/client/FirebaseError;)V
    .locals 2
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/firebase/client/core/Repo$3$1;->val$onListenComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

    invoke-interface {v1, p1}, Lcom/firebase/client/core/SyncTree$CompletionListener;->onListenComplete(Lcom/firebase/client/FirebaseError;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    iget-object v1, p0, Lcom/firebase/client/core/Repo$3$1;->this$1:Lcom/firebase/client/core/Repo$3;

    iget-object v1, v1, Lcom/firebase/client/core/Repo$3;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1, v0}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    .line 122
    return-void
.end method
