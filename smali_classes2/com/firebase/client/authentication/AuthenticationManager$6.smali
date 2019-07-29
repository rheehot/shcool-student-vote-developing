.class Lcom/firebase/client/authentication/AuthenticationManager$6;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->resumeSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$authDataObj:Ljava/util/Map;

.field final synthetic val$tokenString:Ljava/lang/String;

.field final synthetic val$userData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$6;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$6;->val$tokenString:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$6;->val$authDataObj:Ljava/util/Map;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$6;->val$userData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$6;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$500(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/core/PersistentConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$6;->val$tokenString:Ljava/lang/String;

    new-instance v2, Lcom/firebase/client/authentication/AuthenticationManager$6$1;

    invoke-direct {v2, p0}, Lcom/firebase/client/authentication/AuthenticationManager$6$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/PersistentConnection;->auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V

    .line 362
    return-void
.end method
