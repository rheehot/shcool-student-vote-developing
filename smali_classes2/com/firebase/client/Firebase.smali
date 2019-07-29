.class public Lcom/firebase/client/Firebase;
.super Lcom/firebase/client/Query;
.source "Firebase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/Firebase$ValueResultHandler;,
        Lcom/firebase/client/Firebase$ResultHandler;,
        Lcom/firebase/client/Firebase$AuthResultHandler;,
        Lcom/firebase/client/Firebase$AuthStateListener;,
        Lcom/firebase/client/Firebase$AuthListener;,
        Lcom/firebase/client/Firebase$CompletionListener;
    }
.end annotation


# static fields
.field private static defaultConfig:Lcom/firebase/client/Config;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V
    .locals 0
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 165
    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/utilities/ParsedUrl;)V
    .locals 1
    .param p1, "parsedUrl"    # Lcom/firebase/client/utilities/ParsedUrl;

    .prologue
    .line 177
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/utilities/ParsedUrl;Lcom/firebase/client/Config;)V

    .line 178
    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/utilities/ParsedUrl;Lcom/firebase/client/Config;)V
    .locals 4
    .param p1, "parsedUrl"    # Lcom/firebase/client/utilities/ParsedUrl;
    .param p2, "config"    # Lcom/firebase/client/Config;

    .prologue
    .line 172
    iget-object v0, p1, Lcom/firebase/client/utilities/ParsedUrl;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-static {p2, v0}, Lcom/firebase/client/core/RepoManager;->getRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;

    move-result-object v0

    iget-object v1, p1, Lcom/firebase/client/utilities/ParsedUrl;->path:Lcom/firebase/client/core/Path;

    sget-object v2, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;Z)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/firebase/client/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/firebase/client/utilities/ParsedUrl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/utilities/ParsedUrl;)V

    .line 156
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/firebase/client/Config;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/firebase/client/Config;

    .prologue
    .line 168
    invoke-static {p1}, Lcom/firebase/client/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/firebase/client/utilities/ParsedUrl;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/utilities/ParsedUrl;Lcom/firebase/client/Config;)V

    .line 169
    return-void
.end method

.method private getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getRepo()Lcom/firebase/client/core/Repo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefaultConfig()Lcom/firebase/client/Config;
    .locals 2

    .prologue
    .line 942
    const-class v1, Lcom/firebase/client/Firebase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    if-nez v0, :cond_0

    .line 943
    new-instance v0, Lcom/firebase/client/Config;

    invoke-direct {v0}, Lcom/firebase/client/Config;-><init>()V

    sput-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    .line 945
    :cond_0
    sget-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    const-string v0, "2.5.0"

    return-object v0
.end method

.method public static goOffline()V
    .locals 1

    .prologue
    .line 832
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/Firebase;->goOffline(Lcom/firebase/client/Config;)V

    .line 833
    return-void
.end method

.method static goOffline(Lcom/firebase/client/Config;)V
    .locals 0
    .param p0, "config"    # Lcom/firebase/client/Config;

    .prologue
    .line 836
    invoke-static {p0}, Lcom/firebase/client/core/RepoManager;->interrupt(Lcom/firebase/client/core/Context;)V

    .line 837
    return-void
.end method

.method public static goOnline()V
    .locals 1

    .prologue
    .line 845
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/Firebase;->goOnline(Lcom/firebase/client/Config;)V

    .line 846
    return-void
.end method

.method static goOnline(Lcom/firebase/client/Config;)V
    .locals 0
    .param p0, "config"    # Lcom/firebase/client/Config;

    .prologue
    .line 849
    invoke-static {p0}, Lcom/firebase/client/core/RepoManager;->resume(Lcom/firebase/client/core/Context;)V

    .line 850
    return-void
.end method

.method public static setAndroidContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 971
    if-nez p0, :cond_0

    .line 972
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'context\' in setAndroidContext()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_0
    invoke-static {p0}, Lcom/firebase/client/core/Context;->setAndroidContext(Landroid/content/Context;)V

    .line 975
    return-void
.end method

.method public static declared-synchronized setDefaultConfig(Lcom/firebase/client/Config;)V
    .locals 3
    .param p0, "config"    # Lcom/firebase/client/Config;

    .prologue
    .line 954
    const-class v1, Lcom/firebase/client/Firebase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    invoke-virtual {v0}, Lcom/firebase/client/Config;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v2, "Modifications to Config objects must occur before they are in use"

    invoke-direct {v0, v2}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 957
    :cond_0
    :try_start_1
    sput-object p0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    monitor-exit v1

    return-void
.end method

.method private setPriorityInternal(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2
    .param p1, "priority"    # Lcom/firebase/client/snapshot/Node;
    .param p2, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 411
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/firebase/client/Firebase$2;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method private setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 334
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/firebase/client/core/ValidationPath;->validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V

    .line 336
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, "bouncedValue":Ljava/lang/Object;
    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    .line 338
    invoke-static {v0, p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 339
    .local v2, "node":Lcom/firebase/client/snapshot/Node;
    iget-object v3, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v4, Lcom/firebase/client/Firebase$1;

    invoke-direct {v4, p0, v2, p3}, Lcom/firebase/client/Firebase$1;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 346
    .end local v0    # "bouncedValue":Ljava/lang/Object;
    .end local v2    # "node":Lcom/firebase/client/snapshot/Node;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/firebase/client/FirebaseException;

    const-string v4, "Failed to parse to snapshot"

    invoke-direct {v3, v4, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public addAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)Lcom/firebase/client/Firebase$AuthStateListener;
    .locals 2
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthStateListener;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'listener\' in addAuthStateListener()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->addAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V

    .line 541
    return-object p1
.end method

.method public auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 2
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/firebase/client/Firebase$AuthListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 487
    if-nez p2, :cond_0

    .line 488
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'listener\' in auth()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    if-nez p1, :cond_1

    .line 491
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'credential\' in auth()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager;->authWithFirebaseToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V

    .line 494
    return-void
.end method

.method public authAnonymously(Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->authAnonymously(Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 575
    return-void
.end method

.method public authWithCustomToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'token\' in authWithCustomToken()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager;->authWithCustomToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 607
    return-void
.end method

.method public authWithOAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'provider\' in authWithOAuthToken()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    if-nez p2, :cond_1

    .line 628
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'token\' in authWithOAuthToken()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->authWithOAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 631
    return-void
.end method

.method public authWithOAuthToken(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 2
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
    .line 648
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 649
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'provider\' in authWithOAuthToken()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    if-nez p2, :cond_1

    .line 652
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'options\' in authWithOAuthToken()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->authWithOAuthToken(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 655
    return-void
.end method

.method public authWithPassword(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$AuthResultHandler;

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 587
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'email\' in authWithPassword()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    if-nez p2, :cond_1

    .line 590
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'password\' in authWithPassword()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->authWithPassword(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 593
    return-void
.end method

.method public changeEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 2
    .param p1, "oldEmail"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 748
    if-nez p1, :cond_0

    .line 749
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'oldEmail\' in changeEmail()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_0
    if-nez p2, :cond_1

    .line 752
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'password\' in changeEmail()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_1
    if-nez p3, :cond_2

    .line 755
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'newEmail\' in changeEmail()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_2
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/firebase/client/authentication/AuthenticationManager;->changeEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    .line 758
    return-void
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 726
    if-nez p1, :cond_0

    .line 727
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'email\' in changePassword()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    if-nez p2, :cond_1

    .line 730
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'oldPassword\' in changePassword()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_1
    if-nez p3, :cond_2

    .line 733
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'newPassword\' in changePassword()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_2
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/firebase/client/authentication/AuthenticationManager;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    .line 736
    return-void
.end method

.method public child(Ljava/lang/String;)Lcom/firebase/client/Firebase;
    .locals 3
    .param p1, "pathString"    # Ljava/lang/String;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Can\'t pass null for argument \'pathString\' in child()"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 196
    .local v0, "childPath":Lcom/firebase/client/core/Path;
    new-instance v1, Lcom/firebase/client/Firebase;

    iget-object v2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v1

    .line 193
    .end local v0    # "childPath":Lcom/firebase/client/core/Path;
    :cond_1
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'email\' in createUser()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    if-nez p2, :cond_1

    .line 672
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'password\' in createUser()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    .line 675
    return-void
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ValueResultHandler;)V
    .locals 2
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
    .line 689
    .local p3, "handler":Lcom/firebase/client/Firebase$ValueResultHandler;, "Lcom/firebase/client/Firebase$ValueResultHandler<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p1, :cond_0

    .line 690
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'email\' in createUser()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    if-nez p2, :cond_1

    .line 693
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'password\' in createUser()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ValueResultHandler;)V

    .line 696
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 913
    instance-of v0, p1, Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApp()Lcom/firebase/client/FirebaseApp;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->getFirebaseApp()Lcom/firebase/client/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public getAuth()Lcom/firebase/client/AuthData;
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->getAuth()Lcom/firebase/client/AuthData;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x0

    .line 908
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Lcom/firebase/client/Firebase;
    .locals 3

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 887
    .local v0, "parentPath":Lcom/firebase/client/core/Path;
    if-eqz v0, :cond_0

    .line 888
    new-instance v1, Lcom/firebase/client/Firebase;

    iget-object v2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 890
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoot()Lcom/firebase/client/Firebase;
    .locals 4

    .prologue
    .line 898
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/core/Path;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onDisconnect()Lcom/firebase/client/OnDisconnect;
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 474
    new-instance v0, Lcom/firebase/client/OnDisconnect;

    iget-object v1, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/OnDisconnect;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public push()Lcom/firebase/client/Firebase;
    .locals 5

    .prologue
    .line 207
    iget-object v2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v2}, Lcom/firebase/client/core/Repo;->getServerTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/firebase/client/utilities/PushIdGenerator;->generatePushChildName(J)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "childNameStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 209
    .local v0, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    new-instance v2, Lcom/firebase/client/Firebase;

    iget-object v3, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v2
.end method

.method public removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthStateListener;

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'listener\' in removeAuthStateListener()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V

    .line 554
    return-void
.end method

.method public removeUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 707
    if-nez p1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'email\' in removeUser()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    if-nez p2, :cond_1

    .line 711
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'password\' in removeUser()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/client/authentication/AuthenticationManager;->removeUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    .line 714
    return-void
.end method

.method public removeValue()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method public removeValue(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 464
    return-void
.end method

.method public resetPassword(Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/firebase/client/Firebase$ResultHandler;

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'email\' in resetPassword()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/authentication/AuthenticationManager;->resetPassword(Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V

    .line 772
    return-void
.end method

.method public runTransaction(Lcom/firebase/client/Transaction$Handler;)V
    .locals 1
    .param p1, "handler"    # Lcom/firebase/client/Transaction$Handler;

    .prologue
    .line 783
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Firebase;->runTransaction(Lcom/firebase/client/Transaction$Handler;Z)V

    .line 784
    return-void
.end method

.method public runTransaction(Lcom/firebase/client/Transaction$Handler;Z)V
    .locals 2
    .param p1, "handler"    # Lcom/firebase/client/Transaction$Handler;
    .param p2, "fireLocalEvents"    # Z

    .prologue
    .line 796
    if-nez p1, :cond_0

    .line 797
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'handler\' in runTransaction()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 800
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/firebase/client/Firebase$4;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/Transaction$Handler;Z)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 806
    return-void
.end method

.method setHijackHash(Z)V
    .locals 2
    .param p1, "hijackHash"    # Z

    .prologue
    .line 929
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$5;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Firebase$5;-><init>(Lcom/firebase/client/Firebase;Z)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 935
    return-void
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 2
    .param p1, "priority"    # Ljava/lang/Object;

    .prologue
    .line 377
    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/Firebase;->setPriorityInternal(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 378
    return-void
.end method

.method public setPriority(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "priority"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 406
    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/firebase/client/Firebase;->setPriorityInternal(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 407
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-static {v1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 239
    return-void
.end method

.method public setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 299
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Ljava/lang/Object;

    .prologue
    .line 268
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 269
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 329
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getParent()Lcom/firebase/client/Firebase;

    move-result-object v1

    .line 870
    .local v1, "parent":Lcom/firebase/client/Firebase;
    if-nez v1, :cond_0

    .line 871
    iget-object v2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v2}, Lcom/firebase/client/core/Repo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 874
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/firebase/client/Firebase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/firebase/client/FirebaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to URLEncode key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unauth()V
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->unauth()V

    .line 502
    return-void
.end method

.method public unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    if-nez p1, :cond_0

    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'listener\' in unauth()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/Firebase;->getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/authentication/AuthenticationManager;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 516
    return-void
.end method

.method public updateChildren(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Firebase;->updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 427
    return-void
.end method

.method public updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 4
    .param p2, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 436
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Can\'t pass null for argument \'update\' in updateChildren()"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/firebase/client/utilities/Validation;->parseAndValidateUpdate(Lcom/firebase/client/core/Path;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 439
    .local v1, "parsedUpdate":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-static {v1}, Lcom/firebase/client/core/CompoundWrite;->fromPathMerge(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 441
    .local v0, "merge":Lcom/firebase/client/core/CompoundWrite;
    iget-object v2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v3, Lcom/firebase/client/Firebase$3;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/firebase/client/Firebase$3;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method
