.class Lcom/firebase/client/authentication/AuthenticationManager$9;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/firebase/client/authentication/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->makeAuthenticationRequest(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 492
    new-instance v0, Lcom/firebase/client/FirebaseError;

    const/16 v1, -0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an exception while connecting to the authentication server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/FirebaseError;-><init>(ILjava/lang/String;)V

    .line 494
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v1, v0, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1000(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 495
    return-void
.end method

.method public onResult(Ljava/util/Map;)V
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
    .line 477
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "error"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 478
    .local v1, "errorResponse":Ljava/lang/Object;
    const-string v3, "token"

    const-class v4, Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 479
    .local v2, "token":Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 481
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v3, v4}, Lcom/firebase/client/authentication/AuthenticationManager;->access$700(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v3, v2, p1, v4}, Lcom/firebase/client/authentication/AuthenticationManager;->access$800(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v3, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$900(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Object;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 486
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$9;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static {v3, v0, v4}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1000(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    goto :goto_0
.end method
