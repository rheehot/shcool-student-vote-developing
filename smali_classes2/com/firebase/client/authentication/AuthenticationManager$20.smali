.class Lcom/firebase/client/authentication/AuthenticationManager$20;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ValueResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ValueResultHandler;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 727
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 728
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "email"

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->val$email:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v0, "password"

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->val$password:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const-string v1, "/users"

    sget-object v2, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->POST:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$20;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2300(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ValueResultHandler;Z)V

    .line 733
    return-void
.end method
