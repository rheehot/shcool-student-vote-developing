.class Lcom/firebase/client/core/PersistentConnection$4;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/PersistentConnection;->sendAuthHelper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

.field final synthetic val$restoreWritesAfterComplete:Z


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$AuthCredential;Z)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    iput-boolean p3, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$restoreWritesAfterComplete:Z

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
    .line 734
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    sget-object v3, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    invoke-static {v2, v3}, Lcom/firebase/client/core/PersistentConnection;->access$602(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$ConnectionState;)Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 737
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v3}, Lcom/firebase/client/core/PersistentConnection;->access$700(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 738
    const-string v2, "s"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 739
    .local v1, "status":Ljava/lang/String;
    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$800(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$Delegate;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 741
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    const-string v3, "d"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onSuccess(Ljava/lang/Object;)V

    .line 751
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$restoreWritesAfterComplete:Z

    if-eqz v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$900(Lcom/firebase/client/core/PersistentConnection;)V

    .line 754
    :cond_1
    return-void

    .line 744
    .restart local v1    # "status":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/firebase/client/core/PersistentConnection;->access$702(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$AuthCredential;)Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 745
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    invoke-static {v2}, Lcom/firebase/client/core/PersistentConnection;->access$800(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$Delegate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 746
    const-string v2, "d"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 747
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-static {v1, v0}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onCancel(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0
.end method
