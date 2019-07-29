.class Lcom/firebase/client/core/PersistentConnection$5;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/PersistentConnection;->sendPut(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$put:Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

.field final synthetic val$putId:J


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;JLcom/firebase/client/core/PersistentConnection$OutstandingPut;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    .prologue
    .line 843
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$action:Ljava/lang/String;

    iput-wide p3, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    iput-object p5, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$put:Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    iput-object p6, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

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
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 846
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1200(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .line 849
    .local v0, "currentPut":Lcom/firebase/client/core/PersistentConnection$OutstandingPut;
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$put:Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    if-ne v0, v2, :cond_3

    .line 850
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1200(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    if-eqz v2, :cond_1

    .line 853
    const-string v2, "s"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, "status":Ljava/lang/String;
    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 855
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-interface {v2, v6, v6}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 864
    .end local v1    # "status":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 857
    .restart local v1    # "status":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    goto :goto_0

    .line 862
    .end local v1    # "status":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring on complete for put "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because it was removed already."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
