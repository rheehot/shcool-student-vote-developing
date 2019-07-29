.class Lcom/firebase/client/OnDisconnect$3;
.super Ljava/lang/Object;
.source "OnDisconnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/OnDisconnect;->cancel(Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/OnDisconnect;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/OnDisconnect;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/firebase/client/OnDisconnect$3;->this$0:Lcom/firebase/client/OnDisconnect;

    iput-object p2, p0, Lcom/firebase/client/OnDisconnect$3;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/firebase/client/OnDisconnect$3;->this$0:Lcom/firebase/client/OnDisconnect;

    invoke-static {v0}, Lcom/firebase/client/OnDisconnect;->access$100(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Repo;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/OnDisconnect$3;->this$0:Lcom/firebase/client/OnDisconnect;

    invoke-static {v1}, Lcom/firebase/client/OnDisconnect;->access$000(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/OnDisconnect$3;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/Repo;->onDisconnectCancel(Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 230
    return-void
.end method
