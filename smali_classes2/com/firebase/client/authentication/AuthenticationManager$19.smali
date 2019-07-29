.class Lcom/firebase/client/authentication/AuthenticationManager$19;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->authWithOAuthToken(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$provider:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$params:Ljava/util/Map;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 712
    const-string v1, "/auth/%s/token"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$provider:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$params:Ljava/util/Map;

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    invoke-static {v1, v0, v2, v3}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2000(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 714
    return-void
.end method
