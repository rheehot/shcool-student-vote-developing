.class Lcom/firebase/client/authentication/AuthenticationManager$18;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->authWithFirebaseToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$AuthListener;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 692
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    invoke-static {v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2200(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    move-result-object v0

    .line 693
    .local v0, "attempt":Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$token:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$800(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 694
    return-void
.end method
