.class Lcom/firebase/client/Query$3;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Query;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Query;

.field final synthetic val$listener:Lcom/firebase/client/core/EventRegistration;


# direct methods
.method constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/core/EventRegistration;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/firebase/client/Query$3;->this$0:Lcom/firebase/client/Query;

    iput-object p2, p0, Lcom/firebase/client/Query$3;->val$listener:Lcom/firebase/client/core/EventRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/firebase/client/Query$3;->this$0:Lcom/firebase/client/Query;

    iget-object v0, v0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Query$3;->val$listener:Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->addEventCallback(Lcom/firebase/client/core/EventRegistration;)V

    .line 193
    return-void
.end method
