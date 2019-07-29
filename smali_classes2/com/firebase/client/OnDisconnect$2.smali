.class Lcom/firebase/client/OnDisconnect$2;
.super Ljava/lang/Object;
.source "OnDisconnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/OnDisconnect;->updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/OnDisconnect;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$parsedUpdate:Ljava/util/Map;

.field final synthetic val$update:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/OnDisconnect;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/firebase/client/OnDisconnect$2;->this$0:Lcom/firebase/client/OnDisconnect;

    iput-object p2, p0, Lcom/firebase/client/OnDisconnect$2;->val$parsedUpdate:Ljava/util/Map;

    iput-object p3, p0, Lcom/firebase/client/OnDisconnect$2;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    iput-object p4, p0, Lcom/firebase/client/OnDisconnect$2;->val$update:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/firebase/client/OnDisconnect$2;->this$0:Lcom/firebase/client/OnDisconnect;

    invoke-static {v0}, Lcom/firebase/client/OnDisconnect;->access$100(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Repo;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/OnDisconnect$2;->this$0:Lcom/firebase/client/OnDisconnect;

    invoke-static {v1}, Lcom/firebase/client/OnDisconnect;->access$000(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/OnDisconnect$2;->val$parsedUpdate:Ljava/util/Map;

    iget-object v3, p0, Lcom/firebase/client/OnDisconnect$2;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v4, p0, Lcom/firebase/client/OnDisconnect$2;->val$update:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/firebase/client/core/Repo;->onDisconnectUpdate(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V

    .line 191
    return-void
.end method
