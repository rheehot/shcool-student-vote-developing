.class Lcom/firebase/client/authentication/AuthenticationManager$21;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->removeUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ResultHandler;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->val$email:Ljava/lang/String;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 742
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 743
    .local v3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "password"

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->val$password:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v0, "/users/%s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->val$email:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    sget-object v2, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->DELETE:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$21;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-static/range {v0 .. v6}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V

    .line 747
    return-void
.end method
