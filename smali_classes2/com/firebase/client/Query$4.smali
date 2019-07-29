.class Lcom/firebase/client/Query$4;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Query;->keepSynced(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Query;

.field final synthetic val$keepSynced:Z


# direct methods
.method constructor <init>(Lcom/firebase/client/Query;Z)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/firebase/client/Query$4;->this$0:Lcom/firebase/client/Query;

    iput-boolean p2, p0, Lcom/firebase/client/Query$4;->val$keepSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/firebase/client/Query$4;->this$0:Lcom/firebase/client/Query;

    iget-object v0, v0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Query$4;->this$0:Lcom/firebase/client/Query;

    invoke-virtual {v1}, Lcom/firebase/client/Query;->getSpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    iget-boolean v2, p0, Lcom/firebase/client/Query$4;->val$keepSynced:Z

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/Repo;->keepSynced(Lcom/firebase/client/core/view/QuerySpec;Z)V

    .line 214
    return-void
.end method
