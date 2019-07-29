.class Lcom/firebase/client/Firebase$3;
.super Ljava/lang/Object;
.source "Firebase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Firebase;->updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Firebase;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$merge:Lcom/firebase/client/core/CompoundWrite;

.field final synthetic val$update:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/firebase/client/Firebase$3;->this$0:Lcom/firebase/client/Firebase;

    iput-object p2, p0, Lcom/firebase/client/Firebase$3;->val$merge:Lcom/firebase/client/core/CompoundWrite;

    iput-object p3, p0, Lcom/firebase/client/Firebase$3;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    iput-object p4, p0, Lcom/firebase/client/Firebase$3;->val$update:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 444
    iget-object v0, p0, Lcom/firebase/client/Firebase$3;->this$0:Lcom/firebase/client/Firebase;

    iget-object v0, v0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Firebase$3;->this$0:Lcom/firebase/client/Firebase;

    invoke-virtual {v1}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/Firebase$3;->val$merge:Lcom/firebase/client/core/CompoundWrite;

    iget-object v3, p0, Lcom/firebase/client/Firebase$3;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v4, p0, Lcom/firebase/client/Firebase$3;->val$update:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/firebase/client/core/Repo;->updateChildren(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V

    .line 445
    return-void
.end method
