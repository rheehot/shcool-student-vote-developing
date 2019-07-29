.class Lcom/firebase/client/authentication/AuthenticationManager$17;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->authWithCustomToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$17;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$17;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$17;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 677
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$17;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$17;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    invoke-static {v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2100(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    move-result-object v0

    .line 678
    .local v0, "attempt":Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$17;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$17;->val$token:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$800(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 679
    return-void
.end method
