.class Lcom/firebase/client/authentication/AuthenticationManager$10;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/firebase/client/authentication/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->makeOperationRequestWithResult(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ValueResultHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

.field final synthetic val$logUserOut:Z


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;ZLcom/firebase/client/Firebase$ValueResultHandler;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-boolean p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$logUserOut:Z

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 541
    new-instance v0, Lcom/firebase/client/FirebaseError;

    const/16 v1, -0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an exception while performing the request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/FirebaseError;-><init>(ILjava/lang/String;)V

    .line 543
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    invoke-static {v1, v2, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V

    .line 544
    return-void
.end method

.method public onResult(Ljava/util/Map;)V
    .locals 6
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
    .line 518
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "error"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 519
    .local v1, "errorResponse":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 520
    iget-boolean v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$logUserOut:Z

    if-eqz v3, :cond_0

    .line 521
    const-string v3, "uid"

    const-class v4, Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 522
    .local v2, "uid":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v3}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1100(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/AuthData;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v3}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1100(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/AuthData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/AuthData;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/firebase/client/authentication/AuthenticationManager;->unauth(Lcom/firebase/client/Firebase$CompletionListener;Z)V

    .line 527
    .end local v2    # "uid":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v4, Lcom/firebase/client/authentication/AuthenticationManager$10$1;

    invoke-direct {v4, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$10$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$10;Ljava/util/Map;)V

    invoke-static {v3, v4}, Lcom/firebase/client/authentication/AuthenticationManager;->access$600(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v3, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$900(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Object;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 535
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    invoke-static {v3, v4, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V

    goto :goto_0
.end method
