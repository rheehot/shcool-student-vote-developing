.class Lcom/firebase/client/Firebase$2;
.super Ljava/lang/Object;
.source "Firebase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Firebase;->setPriorityInternal(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Firebase;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$priority:Lcom/firebase/client/snapshot/Node;


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/firebase/client/Firebase$2;->this$0:Lcom/firebase/client/Firebase;

    iput-object p2, p0, Lcom/firebase/client/Firebase$2;->val$priority:Lcom/firebase/client/snapshot/Node;

    iput-object p3, p0, Lcom/firebase/client/Firebase$2;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/firebase/client/Firebase$2;->this$0:Lcom/firebase/client/Firebase;

    iget-object v0, v0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Firebase$2;->this$0:Lcom/firebase/client/Firebase;

    invoke-virtual {v1}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/Firebase$2;->val$priority:Lcom/firebase/client/snapshot/Node;

    iget-object v3, p0, Lcom/firebase/client/Firebase$2;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/Repo;->setValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 415
    return-void
.end method
