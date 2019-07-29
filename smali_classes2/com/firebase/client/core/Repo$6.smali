.class Lcom/firebase/client/core/Repo$6;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->setValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;JLcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    .prologue
    .line 326
    iput-object p1, p0, Lcom/firebase/client/core/Repo$6;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$6;->val$path:Lcom/firebase/client/core/Path;

    iput-wide p3, p0, Lcom/firebase/client/core/Repo$6;->val$writeId:J

    iput-object p5, p0, Lcom/firebase/client/core/Repo$6;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 4
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;
    .param p2, "ref"    # Lcom/firebase/client/Firebase;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/firebase/client/core/Repo$6;->this$0:Lcom/firebase/client/core/Repo;

    const-string v1, "setValue"

    iget-object v2, p0, Lcom/firebase/client/core/Repo$6;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v0, v1, v2, p1}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    .line 330
    iget-object v0, p0, Lcom/firebase/client/core/Repo$6;->this$0:Lcom/firebase/client/core/Repo;

    iget-wide v2, p0, Lcom/firebase/client/core/Repo$6;->val$writeId:J

    iget-object v1, p0, Lcom/firebase/client/core/Repo$6;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v0, v2, v3, v1, p1}, Lcom/firebase/client/core/Repo;->access$600(Lcom/firebase/client/core/Repo;JLcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    .line 331
    iget-object v0, p0, Lcom/firebase/client/core/Repo$6;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$6;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$6;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1, p1, v2}, Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    .line 332
    return-void
.end method
