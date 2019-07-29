.class Lcom/firebase/client/authentication/AuthenticationManager$8$2;
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

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$8;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$8;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$2;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$8;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$handler:Lcom/firebase/client/authentication/RequestHandler;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8$2;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/firebase/client/authentication/RequestHandler;->onError(Ljava/io/IOException;)V

    .line 465
    return-void
.end method
