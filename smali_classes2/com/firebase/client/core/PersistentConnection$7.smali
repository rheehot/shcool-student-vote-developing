.class Lcom/firebase/client/core/PersistentConnection$7;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/PersistentConnection;->sendStats(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$7;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 5
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
    .line 930
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "s"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 931
    .local v1, "status":Ljava/lang/String;
    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 934
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$7;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$7;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send stats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 936
    .end local v0    # "error":Lcom/firebase/client/FirebaseError;
    :cond_0
    return-void
.end method
