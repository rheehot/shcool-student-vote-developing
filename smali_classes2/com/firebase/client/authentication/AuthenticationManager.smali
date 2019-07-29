.class public Lcom/firebase/client/authentication/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AUTH_DATA_KEY:Ljava/lang/String; = "authData"

.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field private static final CUSTOM_PROVIDER:Ljava/lang/String; = "custom"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final LOG_TAG:Ljava/lang/String; = "AuthenticationManager"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final USER_DATA_KEY:Ljava/lang/String; = "userData"


# instance fields
.field private authData:Lcom/firebase/client/AuthData;

.field private final connection:Lcom/firebase/client/core/PersistentConnection;

.field private final context:Lcom/firebase/client/core/Context;

.field private currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

.field private final listenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/Firebase$AuthStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/firebase/client/utilities/LogWrapper;

.field private final repo:Lcom/firebase/client/core/Repo;

.field private final repoInfo:Lcom/firebase/client/core/RepoInfo;

.field private final store:Lcom/firebase/client/CredentialStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/authentication/AuthenticationManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/PersistentConnection;)V
    .locals 1
    .param p1, "context"    # Lcom/firebase/client/core/Context;
    .param p2, "repo"    # Lcom/firebase/client/core/Repo;
    .param p3, "repoInfo"    # Lcom/firebase/client/core/RepoInfo;
    .param p4, "connection"    # Lcom/firebase/client/core/PersistentConnection;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    .line 112
    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager;->repo:Lcom/firebase/client/core/Repo;

    .line 113
    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 114
    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;

    .line 116
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getCredentialStore()Lcom/firebase/client/CredentialStore;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->store:Lcom/firebase/client/CredentialStore;

    .line 117
    const-string v0, "AuthenticationManager"

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->listenerSet:Ljava/util/Set;

    .line 119
    return-void
.end method

.method static synthetic access$1000(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/FirebaseError;
    .param p2, "x2"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager;->fireAuthErrorIfNotPreempted(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/AuthData;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/Firebase$ValueResultHandler;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager;->fireOnSuccess(Lcom/firebase/client/Firebase$ValueResultHandler;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/Firebase$ValueResultHandler;
    .param p2, "x2"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager;->fireOnError(Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/firebase/client/authentication/AuthenticationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->preemptAnyExistingAttempts()V

    return-void
.end method

.method static synthetic access$1500(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/AuthData;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/AuthData;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->updateAuthState(Lcom/firebase/client/AuthData;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/firebase/client/authentication/AuthenticationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->clearSession()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/core/Repo;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->repo:Lcom/firebase/client/core/Repo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/firebase/client/authentication/AuthenticationManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->listenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->fireEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->makeAuthenticationRequest(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->newAuthAttempt(Lcom/firebase/client/Firebase$AuthResultHandler;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/Firebase$AuthListener;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->newAuthAttempt(Lcom/firebase/client/Firebase$AuthListener;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ValueResultHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/util/Map;
    .param p5, "x5"    # Lcom/firebase/client/Firebase$ValueResultHandler;
    .param p6, "x6"    # Z

    .prologue
    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/firebase/client/authentication/AuthenticationManager;->makeOperationRequestWithResult(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ValueResultHandler;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/util/Map;
    .param p5, "x5"    # Lcom/firebase/client/Firebase$ResultHandler;
    .param p6, "x6"    # Z

    .prologue
    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/firebase/client/authentication/AuthenticationManager;->makeOperationRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/FirebaseError;
    .param p2, "x2"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .param p3, "x3"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->handleBadAuthStatus(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/firebase/client/authentication/AuthenticationManager;->handleAuthSuccess(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    return-void
.end method

.method static synthetic access$500(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/core/PersistentConnection;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->attemptHasBeenPreempted(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->authWithCredential(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    return-void
.end method

.method static synthetic access$900(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Object;)Lcom/firebase/client/FirebaseError;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/authentication/AuthenticationManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->decodeErrorResponse(Ljava/lang/Object;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    return-object v0
.end method

.method private attemptHasBeenPreempted(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Z
    .locals 1
    .param p1, "attempt"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private authWithCredential(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 3
    .param p1, "credential"    # Ljava/lang/String;
    .param p3, "attempt"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, "optionalUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    if-eq p3, v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ooops. We messed up tracking which authentications are running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authenticating with credential of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 555
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .line 556
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    new-instance v1, Lcom/firebase/client/authentication/AuthenticationManager$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager$11;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/PersistentConnection;->auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V

    .line 570
    return-void
.end method

.method private buildUrlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urlPath"    # Ljava/lang/String;

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v0, "path":Ljava/lang/StringBuilder;
    const-string v1, "/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iget-object v1, v1, Lcom/firebase/client/core/RepoInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkServerSettings()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-virtual {v0}, Lcom/firebase/client/core/RepoInfo;->isDemoHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Firebase authentication is supported on production Firebases only (*.firebaseio.com). To secure your Firebase, create a production Firebase at https://www.firebase.com."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-virtual {v0}, Lcom/firebase/client/core/RepoInfo;->isCustomHost()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->isCustomAuthenticationServerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "For a custom firebase host you must first set your authentication server before using authentication features!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearSession()Z
    .locals 5

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->getFirebaseCredentialIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "firebaseId":Ljava/lang/String;
    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v2}, Lcom/firebase/client/core/Context;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "sessionId":Ljava/lang/String;
    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing credentials for Firebase \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and session \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager;->store:Lcom/firebase/client/CredentialStore;

    invoke-interface {v2, v0, v1}, Lcom/firebase/client/CredentialStore;->clearCredential(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private decodeErrorResponse(Ljava/lang/Object;)Lcom/firebase/client/FirebaseError;
    .locals 6
    .param p1, "errorResponse"    # Ljava/lang/Object;

    .prologue
    .line 171
    const-string v4, "code"

    const-class v5, Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "code":Ljava/lang/String;
    const-string v4, "message"

    const-class v5, Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "message":Ljava/lang/String;
    const-string v4, "details"

    const-class v5, Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, "details":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    invoke-static {v0, v3, v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v4

    .line 179
    :goto_0
    return-object v4

    .line 178
    :cond_0
    if-nez v3, :cond_1

    const-string v2, "Error while authenticating."

    .line 179
    .local v2, "errorMessage":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/firebase/client/FirebaseError;

    const/16 v5, -0x3e7

    invoke-direct {v4, v5, v2, v1}, Lcom/firebase/client/FirebaseError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 178
    goto :goto_1
.end method

.method private fireAuthErrorIfNotPreempted(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 1
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;
    .param p2, "attempt"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .prologue
    .line 201
    invoke-direct {p0, p2}, Lcom/firebase/client/authentication/AuthenticationManager;->attemptHasBeenPreempted(Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    if-eqz p2, :cond_0

    .line 203
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/firebase/client/authentication/AuthenticationManager$4;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Lcom/firebase/client/FirebaseError;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->fireEvent(Ljava/lang/Runnable;)V

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .line 212
    :cond_1
    return-void
.end method

.method private fireEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private fireOnError(Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V
    .locals 1
    .param p1, "handler"    # Lcom/firebase/client/Firebase$ValueResultHandler;
    .param p2, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager$2;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->fireEvent(Ljava/lang/Runnable;)V

    .line 145
    :cond_0
    return-void
.end method

.method private fireOnSuccess(Lcom/firebase/client/Firebase$ValueResultHandler;Ljava/lang/Object;)V
    .locals 1
    .param p1, "handler"    # Lcom/firebase/client/Firebase$ValueResultHandler;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->fireEvent(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    return-void
.end method

.method private getFirebaseCredentialIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iget-object v0, v0, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method private handleAuthSuccess(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;
    .param p4, "isNewSession"    # Z
    .param p5, "attempt"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "authDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "optionalUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p1}, Lcom/firebase/client/authentication/util/JsonWebToken;->decode(Ljava/lang/String;)Lcom/firebase/client/authentication/util/JsonWebToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 309
    .local v2, "token":Lcom/firebase/client/authentication/util/JsonWebToken;
    :goto_0
    if-eqz p4, :cond_0

    .line 312
    if-eqz v2, :cond_0

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->saveSession(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v4, "Failed to store credentials! Authentication will not be persistent!"

    invoke-virtual {v3, v4}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    .line 318
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->parseAuthData(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/firebase/client/AuthData;

    move-result-object v0

    .line 319
    .local v0, "authData":Lcom/firebase/client/AuthData;
    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->updateAuthState(Lcom/firebase/client/AuthData;)V

    .line 320
    if-eqz p5, :cond_1

    .line 321
    invoke-virtual {p5, v0}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->fireSuccess(Lcom/firebase/client/AuthData;)V

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v3}, Lcom/firebase/client/core/PersistentConnection;->writesPaused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v3}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v4, "Unpausing writes after successful login."

    invoke-virtual {v3, v4}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 326
    :cond_2
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v3}, Lcom/firebase/client/core/PersistentConnection;->unpauseWrites()V

    .line 328
    :cond_3
    return-void

    .line 305
    .end local v0    # "authData":Lcom/firebase/client/AuthData;
    .end local v2    # "token":Lcom/firebase/client/authentication/util/JsonWebToken;
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v3}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v4, "Failed to parse JWT, probably a Firebase secret."

    invoke-virtual {v3, v4}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 307
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "token":Lcom/firebase/client/authentication/util/JsonWebToken;
    goto :goto_0
.end method

.method private handleBadAuthStatus(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V
    .locals 3
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;
    .param p2, "attempt"    # Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .param p3, "revoked"    # Z

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v1

    const/4 v2, -0x6

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 278
    .local v0, "expiredToken":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v1}, Lcom/firebase/client/core/Context;->getAuthExpirationBehavior()Lcom/firebase/client/core/AuthExpirationBehavior;

    move-result-object v1

    sget-object v2, Lcom/firebase/client/core/AuthExpirationBehavior;->PAUSE_WRITES_UNTIL_REAUTH:Lcom/firebase/client/core/AuthExpirationBehavior;

    if-ne v1, v2, :cond_4

    .line 280
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v2, "Pausing writes due to expired token."

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v1}, Lcom/firebase/client/core/PersistentConnection;->pauseWrites()V

    .line 289
    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->updateAuthState(Lcom/firebase/client/AuthData;)V

    .line 290
    if-eqz p2, :cond_2

    .line 291
    if-eqz p3, :cond_7

    .line 292
    invoke-virtual {p2, p1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->fireRevoked(Lcom/firebase/client/FirebaseError;)V

    .line 297
    :cond_2
    :goto_2
    return-void

    .line 277
    .end local v0    # "expiredToken":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    .restart local v0    # "expiredToken":Z
    :cond_4
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v1}, Lcom/firebase/client/core/PersistentConnection;->writesPaused()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 283
    sget-boolean v1, Lcom/firebase/client/authentication/AuthenticationManager;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v1}, Lcom/firebase/client/core/Context;->getAuthExpirationBehavior()Lcom/firebase/client/core/AuthExpirationBehavior;

    move-result-object v1

    sget-object v2, Lcom/firebase/client/core/AuthExpirationBehavior;->PAUSE_WRITES_UNTIL_REAUTH:Lcom/firebase/client/core/AuthExpirationBehavior;

    if-eq v1, v2, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 284
    :cond_5
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v2, "Invalid auth while writes are paused; keeping existing session."

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_6
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->clearSession()Z

    goto :goto_1

    .line 294
    :cond_7
    invoke-virtual {p2, p1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->fireError(Lcom/firebase/client/FirebaseError;)V

    goto :goto_2
.end method

.method private ignoreResultValueHandler(Lcom/firebase/client/Firebase$ResultHandler;)Lcom/firebase/client/Firebase$ValueResultHandler;
    .locals 1
    .param p1, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 148
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$3;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$3;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ResultHandler;)V

    return-object v0
.end method

.method private makeAuthenticationRequest(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 7
    .param p1, "urlPath"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/firebase/client/Firebase$AuthResultHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 473
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->newAuthAttempt(Lcom/firebase/client/Firebase$AuthResultHandler;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    move-result-object v6

    .line 474
    .local v6, "attempt":Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    sget-object v2, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->GET:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/firebase/client/authentication/AuthenticationManager$9;

    invoke-direct {v5, p0, v6}, Lcom/firebase/client/authentication/AuthenticationManager$9;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/authentication/AuthenticationManager;->makeRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/authentication/RequestHandler;)V

    .line 497
    return-void
.end method

.method private makeOperationRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V
    .locals 7
    .param p1, "urlPath"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;
    .param p5, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;
    .param p6, "logUserOut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/firebase/client/Firebase$ResultHandler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p5}, Lcom/firebase/client/authentication/AuthenticationManager;->ignoreResultValueHandler(Lcom/firebase/client/Firebase$ResultHandler;)Lcom/firebase/client/Firebase$ValueResultHandler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/authentication/AuthenticationManager;->makeOperationRequestWithResult(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ValueResultHandler;Z)V

    .line 507
    return-void
.end method

.method private makeOperationRequestWithResult(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ValueResultHandler;Z)V
    .locals 6
    .param p1, "urlPath"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;
    .param p6, "logUserOut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/firebase/client/Firebase$ValueResultHandler",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "handler":Lcom/firebase/client/Firebase$ValueResultHandler;, "Lcom/firebase/client/Firebase$ValueResultHandler<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v5, Lcom/firebase/client/authentication/AuthenticationManager$10;

    invoke-direct {v5, p0, p6, p5}, Lcom/firebase/client/authentication/AuthenticationManager$10;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;ZLcom/firebase/client/Firebase$ValueResultHandler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/authentication/AuthenticationManager;->makeRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/authentication/RequestHandler;)V

    .line 546
    return-void
.end method

.method private makeRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/authentication/RequestHandler;)V
    .locals 13
    .param p1, "urlPath"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;
    .param p5, "handler"    # Lcom/firebase/client/authentication/RequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/firebase/client/authentication/RequestHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 428
    .local v1, "actualUrlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "transport"

    const-string v9, "json"

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v8, "v"

    iget-object v9, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v9}, Lcom/firebase/client/core/Context;->getPlatformVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v8, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v8}, Lcom/firebase/client/core/Context;->getAuthenticationServer()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->buildUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-static {v8, v9, p2, v1, v0}, Lcom/firebase/client/utilities/HttpUtilities;->requestWithType(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;)Lorg/shaded/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    .line 431
    .local v5, "request":Lorg/shaded/apache/http/client/methods/HttpUriRequest;
    iget-object v8, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v8}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 433
    invoke-interface {v5}, Lorg/shaded/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 434
    .local v7, "uri":Ljava/net/URI;
    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "authority":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v3, v8

    .line 438
    .local v3, "numQueryParams":I
    iget-object v8, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v9, "Sending request to %s://%s%s with %d query params"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const/4 v11, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 440
    .end local v2    # "authority":Ljava/lang/String;
    .end local v3    # "numQueryParams":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "uri":Ljava/net/URI;
    :cond_0
    iget-object v8, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    new-instance v9, Lcom/firebase/client/authentication/AuthenticationManager$8;

    move-object/from16 v0, p5

    invoke-direct {v9, p0, v5, v0}, Lcom/firebase/client/authentication/AuthenticationManager$8;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lcom/firebase/client/authentication/RequestHandler;)V

    invoke-virtual {v8, v9}, Lcom/firebase/client/core/Context;->runBackgroundTask(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method private newAuthAttempt(Lcom/firebase/client/Firebase$AuthListener;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthListener;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->preemptAnyExistingAttempts()V

    .line 196
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;)V

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .line 197
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    return-object v0
.end method

.method private newAuthAttempt(Lcom/firebase/client/Firebase$AuthResultHandler;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    .locals 1
    .param p1, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->preemptAnyExistingAttempts()V

    .line 189
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    iput-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .line 190
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    return-object v0
.end method

.method private parseAuthData(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/firebase/client/AuthData;
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/AuthData;"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "rawAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "auth"

    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 234
    .local v6, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v6, :cond_0

    .line 235
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received invalid auth data: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    .line 238
    :cond_0
    const-string v0, "expires"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 240
    .local v8, "expiresObj":Ljava/lang/Object;
    if-nez v8, :cond_7

    .line 241
    const-wide/16 v2, 0x0

    .line 252
    .end local v8    # "expiresObj":Ljava/lang/Object;
    .local v2, "expires":J
    :goto_0
    const-string v0, "uid"

    const-class v1, Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 253
    .local v4, "uid":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 254
    const-string v0, "uid"

    const-class v1, Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uid":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 257
    .restart local v4    # "uid":Ljava/lang/String;
    :cond_1
    const-string v0, "provider"

    const-class v1, Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 258
    .local v5, "provider":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 259
    const-string v0, "provider"

    const-class v1, Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "provider":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 261
    .restart local v5    # "provider":Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_3

    .line 262
    const-string v5, "custom"

    .line 265
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received invalid auth data: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    .line 268
    :cond_5
    const-class v0, Ljava/util/Map;

    invoke-static {p3, v5, v0}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 269
    .local v7, "providerData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_6

    .line 270
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "providerData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 272
    .restart local v7    # "providerData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v0, Lcom/firebase/client/AuthData;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/AuthData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0

    .line 242
    .end local v2    # "expires":J
    .end local v4    # "uid":Ljava/lang/String;
    .end local v5    # "provider":Ljava/lang/String;
    .end local v7    # "providerData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "expiresObj":Ljava/lang/Object;
    :cond_7
    instance-of v0, v8, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 243
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "expiresObj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .restart local v2    # "expires":J
    goto :goto_0

    .line 244
    .end local v2    # "expires":J
    .restart local v8    # "expiresObj":Ljava/lang/Object;
    :cond_8
    instance-of v0, v8, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 245
    check-cast v8, Ljava/lang/Long;

    .end local v8    # "expiresObj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .restart local v2    # "expires":J
    goto :goto_0

    .line 246
    .end local v2    # "expires":J
    .restart local v8    # "expiresObj":Ljava/lang/Object;
    :cond_9
    instance-of v0, v8, Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 247
    check-cast v8, Ljava/lang/Double;

    .end local v8    # "expiresObj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    .restart local v2    # "expires":J
    goto/16 :goto_0

    .line 249
    .end local v2    # "expires":J
    .restart local v8    # "expiresObj":Ljava/lang/Object;
    :cond_a
    const-wide/16 v2, 0x0

    .restart local v2    # "expires":J
    goto/16 :goto_0
.end method

.method private preemptAnyExistingAttempts()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    if-eqz v1, :cond_0

    .line 163
    new-instance v0, Lcom/firebase/client/FirebaseError;

    const/4 v1, -0x5

    const-string v2, "Due to another authentication attempt, this authentication attempt was aborted before it could complete."

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/FirebaseError;-><init>(ILjava/lang/String;)V

    .line 165
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-virtual {v1, v0}, Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;->fireError(Lcom/firebase/client/FirebaseError;)V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->currentAuthAttempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    .line 168
    .end local v0    # "error":Lcom/firebase/client/FirebaseError;
    :cond_0
    return-void
.end method

.method private saveSession(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 373
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->getFirebaseCredentialIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "firebaseId":Ljava/lang/String;
    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v5}, Lcom/firebase/client/core/Context;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "sessionId":Ljava/lang/String;
    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager;->store:Lcom/firebase/client/CredentialStore;

    invoke-interface {v5, v2, v3}, Lcom/firebase/client/CredentialStore;->clearCredential(Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v4, "sessionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "token"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v5, "authData"

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v5, "userData"

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :try_start_0
    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Storing credentials for Firebase \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" and session \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 382
    :cond_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "credentialData":Ljava/lang/String;
    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager;->store:Lcom/firebase/client/CredentialStore;

    invoke-interface {v5, v2, v3, v0}, Lcom/firebase/client/CredentialStore;->storeCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/shaded/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 384
    .end local v0    # "credentialData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private scheduleNow(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method private updateAuthState(Lcom/firebase/client/AuthData;)V
    .locals 5
    .param p1, "authData"    # Lcom/firebase/client/AuthData;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 397
    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    .line 398
    .local v0, "changed":Z
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;

    .line 399
    if-eqz v0, :cond_3

    .line 400
    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager;->listenerSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/Firebase$AuthStateListener;

    .line 401
    .local v2, "listener":Lcom/firebase/client/Firebase$AuthStateListener;
    new-instance v3, Lcom/firebase/client/authentication/AuthenticationManager$7;

    invoke-direct {v3, p0, v2, p1}, Lcom/firebase/client/authentication/AuthenticationManager$7;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthStateListener;Lcom/firebase/client/AuthData;)V

    invoke-direct {p0, v3}, Lcom/firebase/client/authentication/AuthenticationManager;->fireEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .end local v0    # "changed":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/firebase/client/Firebase$AuthStateListener;
    :cond_1
    move v0, v3

    .line 397
    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;

    invoke-virtual {v4, p1}, Lcom/firebase/client/AuthData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 409
    .restart local v0    # "changed":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public addAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthStateListener;

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 624
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$13;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$13;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthStateListener;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 637
    return-void
.end method

.method public authAnonymously(Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 651
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$15;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$15;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 658
    return-void
.end method

.method public authWithCustomToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 674
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$17;

    invoke-direct {v0, p0, p2, p1}, Lcom/firebase/client/authentication/AuthenticationManager$17;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method

.method public authWithFirebaseToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/firebase/client/Firebase$AuthListener;

    .prologue
    .line 689
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/firebase/client/authentication/AuthenticationManager$18;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public authWithOAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 699
    if-nez p2, :cond_0

    .line 700
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Token must not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 703
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "access_token"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    invoke-virtual {p0, p1, v0, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->authWithOAuthToken(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 705
    return-void
.end method

.method public authWithOAuthToken(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/firebase/client/Firebase$AuthResultHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 708
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 709
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager$19;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 716
    return-void
.end method

.method public authWithPassword(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 662
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager$16;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public changeEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 6
    .param p1, "oldEmail"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 768
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$23;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/authentication/AuthenticationManager$23;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 753
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$22;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/authentication/AuthenticationManager$22;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 719
    invoke-direct {p0, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->ignoreResultValueHandler(Lcom/firebase/client/Firebase$ResultHandler;)Lcom/firebase/client/Firebase$ValueResultHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ValueResultHandler;)V

    .line 720
    return-void
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ValueResultHandler;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/firebase/client/Firebase$ValueResultHandler",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p3, "handler":Lcom/firebase/client/Firebase$ValueResultHandler;, "Lcom/firebase/client/Firebase$ValueResultHandler<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 724
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager$20;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ValueResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 735
    return-void
.end method

.method public getAuth()Lcom/firebase/client/AuthData;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;

    return-object v0
.end method

.method public removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthStateListener;

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 641
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$14;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$14;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthStateListener;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method public removeUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 739
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$21;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/firebase/client/authentication/AuthenticationManager$21;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 749
    return-void
.end method

.method public resetPassword(Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 783
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager$24;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 791
    return-void
.end method

.method public resumeSession()V
    .locals 10

    .prologue
    .line 333
    :try_start_0
    iget-object v7, p0, Lcom/firebase/client/authentication/AuthenticationManager;->store:Lcom/firebase/client/CredentialStore;

    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->getFirebaseCredentialIdentifier()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v9}, Lcom/firebase/client/core/Context;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/firebase/client/CredentialStore;->loadCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "credentialData":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 335
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v7

    new-instance v8, Lcom/firebase/client/authentication/AuthenticationManager$5;

    invoke-direct {v8, p0}, Lcom/firebase/client/authentication/AuthenticationManager$5;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;)V

    invoke-virtual {v7, v2, v8}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 337
    .local v3, "credentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "token"

    const-class v8, Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 338
    .local v5, "tokenString":Ljava/lang/String;
    const-string v7, "authData"

    const-class v8, Ljava/util/Map;

    invoke-static {v3, v7, v8}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 339
    .local v1, "authDataObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "userData"

    const-class v8, Ljava/util/Map;

    invoke-static {v3, v7, v8}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 340
    .local v6, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 341
    invoke-direct {p0, v5, v1, v6}, Lcom/firebase/client/authentication/AuthenticationManager;->parseAuthData(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/firebase/client/AuthData;

    move-result-object v0

    .line 342
    .local v0, "authData":Lcom/firebase/client/AuthData;
    invoke-direct {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->updateAuthState(Lcom/firebase/client/AuthData;)V

    .line 343
    iget-object v7, p0, Lcom/firebase/client/authentication/AuthenticationManager;->context:Lcom/firebase/client/core/Context;

    invoke-virtual {v7}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v7

    new-instance v8, Lcom/firebase/client/authentication/AuthenticationManager$6;

    invoke-direct {v8, p0, v5, v1, v6}, Lcom/firebase/client/authentication/AuthenticationManager$6;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v7, v8}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "authData":Lcom/firebase/client/AuthData;
    .end local v1    # "authDataObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "credentialData":Ljava/lang/String;
    .end local v3    # "credentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "tokenString":Ljava/lang/String;
    .end local v6    # "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v4

    .line 367
    .local v4, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/firebase/client/authentication/AuthenticationManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v8, "Failed resuming authentication session!"

    invoke-virtual {v7, v8, v4}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->clearSession()Z

    goto :goto_0
.end method

.method public unauth()V
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 579
    return-void
.end method

.method public unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->unauth(Lcom/firebase/client/Firebase$CompletionListener;Z)V

    .line 583
    return-void
.end method

.method public unauth(Lcom/firebase/client/Firebase$CompletionListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;
    .param p2, "waitForCompletion"    # Z

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/firebase/client/authentication/AuthenticationManager;->checkServerSettings()V

    .line 587
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 588
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/firebase/client/authentication/AuthenticationManager$12;

    invoke-direct {v2, p0, v1, p1}, Lcom/firebase/client/authentication/AuthenticationManager$12;-><init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/util/concurrent/Semaphore;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-direct {p0, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V

    .line 612
    if-eqz p2, :cond_0

    .line 614
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
