.class Lcom/firebase/client/authentication/AuthenticationManager$11;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->authWithCredential(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

.field final synthetic val$credential:Ljava/lang/String;

.field final synthetic val$optionalUserData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$credential:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$optionalUserData:Ljava/util/Map;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/firebase/client/FirebaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V

    .line 568
    return-void
.end method

.method public onAuthRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V

    .line 564
    return-void
.end method

.method public onAuthSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "authData"    # Ljava/lang/Object;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$credential:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$optionalUserData:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-static/range {v0 .. v5}, Lcom/firebase/client/authentication/AuthenticationManager;->access$400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 560
    return-void
.end method
