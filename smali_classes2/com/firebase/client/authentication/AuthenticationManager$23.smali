.class Lcom/firebase/client/authentication/AuthenticationManager$23;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->changeEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ResultHandler;

.field final synthetic val$newEmail:Ljava/lang/String;

.field final synthetic val$oldEmail:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$newEmail:Ljava/lang/String;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$oldEmail:Ljava/lang/String;

    iput-object p5, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 771
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 772
    .local v3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "password"

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$password:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 774
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "email"

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$newEmail:Ljava/lang/String;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v0, "/users/%s/email"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$oldEmail:Ljava/lang/String;

    aput-object v5, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    sget-object v2, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->PUT:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$23;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-static/range {v0 .. v6}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V

    .line 777
    return-void
.end method
