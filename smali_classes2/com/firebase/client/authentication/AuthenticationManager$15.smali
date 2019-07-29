.class Lcom/firebase/client/authentication/AuthenticationManager$15;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->authAnonymously(Lcom/firebase/client/Firebase$AuthResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const-string v2, "/auth/anonymous"

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    invoke-static {v1, v2, v0, v3}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2000(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 656
    return-void
.end method
