.class Lcom/firebase/client/Query$2;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Query;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Query;

.field final synthetic val$registration:Lcom/firebase/client/core/EventRegistration;


# direct methods
.method constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/core/EventRegistration;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/firebase/client/Query$2;->this$0:Lcom/firebase/client/Query;

    iput-object p2, p0, Lcom/firebase/client/Query$2;->val$registration:Lcom/firebase/client/core/EventRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/firebase/client/Query$2;->this$0:Lcom/firebase/client/Query;

    iget-object v0, v0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Query$2;->val$registration:Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/core/EventRegistration;)V

    .line 183
    return-void
.end method
