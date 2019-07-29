.class Lcom/firebase/client/Firebase$5;
.super Ljava/lang/Object;
.source "Firebase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Firebase;->setHijackHash(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Firebase;

.field final synthetic val$hijackHash:Z


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase;Z)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/firebase/client/Firebase$5;->this$0:Lcom/firebase/client/Firebase;

    iput-boolean p2, p0, Lcom/firebase/client/Firebase$5;->val$hijackHash:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/firebase/client/Firebase$5;->this$0:Lcom/firebase/client/Firebase;

    iget-object v0, v0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-boolean v1, p0, Lcom/firebase/client/Firebase$5;->val$hijackHash:Z

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->setHijackHash(Z)V

    .line 933
    return-void
.end method
