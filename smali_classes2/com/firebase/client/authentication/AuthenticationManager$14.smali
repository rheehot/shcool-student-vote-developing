.class Lcom/firebase/client/authentication/AuthenticationManager$14;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$AuthStateListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthStateListener;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$14;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$14;->val$listener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$14;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1900(Lcom/firebase/client/authentication/AuthenticationManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$14;->val$listener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method
