.class Lcom/firebase/client/core/PersistentConnection$3;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$3;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$3;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "s"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 574
    .local v1, "status":Ljava/lang/String;
    const/4 v0, 0x0

    .line 575
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$3;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$3;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 582
    :cond_1
    return-void
.end method
