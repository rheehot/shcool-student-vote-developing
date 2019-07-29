.class Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/authentication/AuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthAttempt"
.end annotation


# instance fields
.field private handler:Lcom/firebase/client/Firebase$AuthResultHandler;

.field private final legacyListener:Lcom/firebase/client/Firebase$AuthListener;

.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 1
    .param p2, "legacyListener"    # Lcom/firebase/client/Firebase$AuthListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->legacyListener:Lcom/firebase/client/Firebase$AuthListener;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 1
    .param p2, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->legacyListener:Lcom/firebase/client/Firebase$AuthListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Lcom/firebase/client/Firebase$AuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->legacyListener:Lcom/firebase/client/Firebase$AuthListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Lcom/firebase/client/Firebase$AuthResultHandler;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/Firebase$AuthResultHandler;)Lcom/firebase/client/Firebase$AuthResultHandler;
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .param p1, "x1"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    return-object p1
.end method


# virtual methods
.method public fireError(Lcom/firebase/client/FirebaseError;)V
    .locals 2
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->legacyListener:Lcom/firebase/client/Firebase$AuthListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v1, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/FirebaseError;)V

    invoke-static {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$200(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 80
    :cond_1
    return-void
.end method

.method public fireRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 2
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->legacyListener:Lcom/firebase/client/Firebase$AuthListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v1, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$3;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/FirebaseError;)V

    invoke-static {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$200(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 107
    :cond_0
    return-void
.end method

.method public fireSuccess(Lcom/firebase/client/AuthData;)V
    .locals 2
    .param p1, "authData"    # Lcom/firebase/client/AuthData;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->legacyListener:Lcom/firebase/client/Firebase$AuthListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v1, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt$2;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/AuthData;)V

    invoke-static {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$200(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 96
    :cond_1
    return-void
.end method
