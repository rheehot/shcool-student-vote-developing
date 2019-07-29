.class Lcom/firebase/client/authentication/AuthenticationManager$8$1;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/authentication/AuthenticationManager$8;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$8;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$8;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$1;->val$result:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$8;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$handler:Lcom/firebase/client/authentication/RequestHandler;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$1;->val$result:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/firebase/client/authentication/RequestHandler;->onResult(Ljava/util/Map;)V

    .line 458
    return-void
.end method
