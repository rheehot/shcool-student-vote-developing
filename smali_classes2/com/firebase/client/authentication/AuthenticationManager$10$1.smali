.class Lcom/firebase/client/authentication/AuthenticationManager$10$1;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager$10;->onResult(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/authentication/AuthenticationManager$10;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$10;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$10;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$10$1;->val$result:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$10$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$10;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$10;

    iget-object v1, v1, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$10$1;->val$result:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1200(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Ljava/lang/Object;)V

    .line 531
    return-void
.end method
