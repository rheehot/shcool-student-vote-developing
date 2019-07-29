.class Lcom/firebase/client/core/PersistentConnection$6;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/PersistentConnection;->sendListen(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 7
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
    .line 898
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "s"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 900
    .local v3, "status":Ljava/lang/String;
    const-string v5, "ok"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 901
    const-string v5, "d"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 902
    .local v2, "serverBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "w"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 903
    const-string v5, "w"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 904
    .local v4, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iget-object v6, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-virtual {v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/firebase/client/core/PersistentConnection;->access$1300(Lcom/firebase/client/core/PersistentConnection;Ljava/util/List;Lcom/firebase/client/core/view/QuerySpec;)V

    .line 908
    .end local v2    # "serverBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v5}, Lcom/firebase/client/core/PersistentConnection;->access$1400(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-virtual {v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 910
    .local v0, "currentListen":Lcom/firebase/client/core/PersistentConnection$OutstandingListen;
    iget-object v5, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    if-ne v0, v5, :cond_1

    .line 911
    const-string v5, "ok"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 912
    iget-object v5, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iget-object v6, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-virtual {v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/firebase/client/core/PersistentConnection;->access$1500(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 913
    const-string v5, "d"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v1

    .line 914
    .local v1, "error":Lcom/firebase/client/FirebaseError;
    iget-object v5, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-static {v5}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->access$500(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/firebase/client/core/PersistentConnection$RequestResultListener;->onRequestResult(Lcom/firebase/client/FirebaseError;)V

    .line 919
    .end local v1    # "error":Lcom/firebase/client/FirebaseError;
    :cond_1
    :goto_0
    return-void

    .line 916
    :cond_2
    iget-object v5, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-static {v5}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->access$500(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/firebase/client/core/PersistentConnection$RequestResultListener;->onRequestResult(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0
.end method
