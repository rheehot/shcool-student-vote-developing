.class public Lcom/firebase/client/core/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:J = 0xa00000L

.field private static androidContext:Landroid/content/Context;

.field private static platform:Lcom/firebase/client/core/Platform;


# instance fields
.field protected authExpirationBehavior:Lcom/firebase/client/core/AuthExpirationBehavior;

.field protected authenticationServer:Ljava/lang/String;

.field protected cacheSize:J

.field protected credentialStore:Lcom/firebase/client/CredentialStore;

.field protected eventTarget:Lcom/firebase/client/EventTarget;

.field private forcedPersistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

.field private frozen:Z

.field protected logLevel:Lcom/firebase/client/Logger$Level;

.field protected loggedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lcom/firebase/client/Logger;

.field protected persistenceEnabled:Z

.field protected persistenceKey:Ljava/lang/String;

.field protected runLoop:Lcom/firebase/client/RunLoop;

.field private stopped:Z

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/firebase/client/Logger$Level;->INFO:Lcom/firebase/client/Logger$Level;

    iput-object v0, p0, Lcom/firebase/client/core/Context;->logLevel:Lcom/firebase/client/Logger$Level;

    .line 33
    sget-object v0, Lcom/firebase/client/core/AuthExpirationBehavior;->DEFAULT:Lcom/firebase/client/core/AuthExpirationBehavior;

    iput-object v0, p0, Lcom/firebase/client/core/Context;->authExpirationBehavior:Lcom/firebase/client/core/AuthExpirationBehavior;

    .line 34
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/firebase/client/core/Context;->cacheSize:J

    .line 36
    iput-boolean v2, p0, Lcom/firebase/client/core/Context;->frozen:Z

    .line 37
    iput-boolean v2, p0, Lcom/firebase/client/core/Context;->stopped:Z

    return-void
.end method

.method private buildUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "platformAgent"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firebase/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private ensureCredentialStore()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/firebase/client/core/Context;->credentialStore:Lcom/firebase/client/CredentialStore;

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getPlatform()Lcom/firebase/client/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/firebase/client/core/Platform;->newCredentialStore(Lcom/firebase/client/core/Context;)Lcom/firebase/client/CredentialStore;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->credentialStore:Lcom/firebase/client/CredentialStore;

    .line 244
    :cond_0
    return-void
.end method

.method private ensureEventTarget()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getPlatform()Lcom/firebase/client/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/firebase/client/core/Platform;->newEventTarget(Lcom/firebase/client/core/Context;)Lcom/firebase/client/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    .line 232
    :cond_0
    return-void
.end method

.method private ensureLogger()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getPlatform()Lcom/firebase/client/core/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Context;->logLevel:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/core/Context;->loggedComponents:Ljava/util/List;

    invoke-interface {v0, p0, v1, v2}, Lcom/firebase/client/core/Platform;->newLogger(Lcom/firebase/client/core/Context;Lcom/firebase/client/Logger$Level;Ljava/util/List;)Lcom/firebase/client/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    .line 220
    :cond_0
    return-void
.end method

.method private ensureRunLoop()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/firebase/client/core/Context;->platform:Lcom/firebase/client/core/Platform;

    invoke-interface {v0, p0}, Lcom/firebase/client/core/Platform;->newRunLoop(Lcom/firebase/client/core/Context;)Lcom/firebase/client/RunLoop;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    .line 226
    :cond_0
    return-void
.end method

.method private ensureSessionIdentifier()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/firebase/client/core/Context;->persistenceKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "default"

    iput-object v0, p0, Lcom/firebase/client/core/Context;->persistenceKey:Ljava/lang/String;

    .line 250
    :cond_0
    return-void
.end method

.method private ensureUserAgent()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/firebase/client/core/Context;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getPlatform()Lcom/firebase/client/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/firebase/client/core/Platform;->getUserAgent(Lcom/firebase/client/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/Context;->buildUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->userAgent:Ljava/lang/String;

    .line 238
    :cond_0
    return-void
.end method

.method private getPlatform()Lcom/firebase/client/core/Platform;
    .locals 3

    .prologue
    .line 43
    sget-object v1, Lcom/firebase/client/core/Context;->platform:Lcom/firebase/client/core/Platform;

    if-nez v1, :cond_1

    .line 44
    invoke-static {}, Lcom/firebase/client/core/AndroidSupport;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You need to set the Android context using Firebase.setAndroidContext() before using Firebase."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    invoke-static {}, Lcom/firebase/client/core/GaePlatform;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->INSTANCE:Lcom/firebase/client/core/GaePlatform;

    .line 48
    .local v0, "gaePlatform":Lcom/firebase/client/core/GaePlatform;
    invoke-virtual {v0}, Lcom/firebase/client/core/GaePlatform;->initialize()V

    .line 49
    sput-object v0, Lcom/firebase/client/core/Context;->platform:Lcom/firebase/client/core/Platform;

    .line 54
    .end local v0    # "gaePlatform":Lcom/firebase/client/core/GaePlatform;
    :cond_1
    :goto_0
    sget-object v1, Lcom/firebase/client/core/Context;->platform:Lcom/firebase/client/core/Platform;

    return-object v1

    .line 51
    :cond_2
    sget-object v1, Lcom/firebase/client/core/JvmPlatform;->INSTANCE:Lcom/firebase/client/core/JvmPlatform;

    sput-object v1, Lcom/firebase/client/core/Context;->platform:Lcom/firebase/client/core/Platform;

    goto :goto_0
.end method

.method private initServices()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureLogger()V

    .line 107
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getPlatform()Lcom/firebase/client/core/Platform;

    .line 108
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureUserAgent()V

    .line 110
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureEventTarget()V

    .line 111
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureRunLoop()V

    .line 112
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureSessionIdentifier()V

    .line 113
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureCredentialStore()V

    .line 114
    return-void
.end method

.method private restartServices()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    invoke-interface {v0}, Lcom/firebase/client/EventTarget;->restart()V

    .line 118
    iget-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    invoke-interface {v0}, Lcom/firebase/client/RunLoop;->restart()V

    .line 119
    return-void
.end method

.method public static declared-synchronized setAndroidContext(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-class v4, Lcom/firebase/client/core/Context;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/firebase/client/core/Context;->androidContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/firebase/client/core/Context;->androidContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    const-string v3, "com.firebase.client.android.AndroidPlatform"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "androidPlatformClass":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 63
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/Platform;

    sput-object v3, Lcom/firebase/client/core/Context;->platform:Lcom/firebase/client/core/Platform;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v0    # "androidPlatformClass":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_0
    monitor-exit v4

    return-void

    .line 64
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Android classes not found. Are you using the firebase-client-android artifact?"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 67
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failed to instantiate AndroidPlatform class.  Using ProGuard?  See http://stackoverflow.com/questions/26273929/what-proguard-configuration-do-i-need-for-firebase-on-android"

    invoke-direct {v3, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 70
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failed to instantiate AndroidPlatform class."

    invoke-direct {v3, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 73
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failed to instantiate AndroidPlatform class."

    invoke-direct {v3, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 75
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failed to instantiate AndroidPlatform class."

    invoke-direct {v3, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method protected assertUnfrozen()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/firebase/client/core/Context;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v1, "Modifications to Config objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method forcePersistenceManager(Lcom/firebase/client/core/persistence/PersistenceManager;)V
    .locals 0
    .param p1, "persistenceManager"    # Lcom/firebase/client/core/persistence/PersistenceManager;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/firebase/client/core/Context;->forcedPersistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    .line 174
    return-void
.end method

.method declared-synchronized freeze()V
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/firebase/client/core/Context;->frozen:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/Context;->frozen:Z

    .line 92
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->initServices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthExpirationBehavior()Lcom/firebase/client/core/AuthExpirationBehavior;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/firebase/client/core/Context;->authExpirationBehavior:Lcom/firebase/client/core/AuthExpirationBehavior;

    return-object v0
.end method

.method public getAuthenticationServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/firebase/client/core/Context;->authenticationServer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 206
    const-string v0, "https://auth.firebase.com/"

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Context;->authenticationServer:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCredentialStore()Lcom/firebase/client/CredentialStore;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/firebase/client/core/Context;->credentialStore:Lcom/firebase/client/CredentialStore;

    return-object v0
.end method

.method public getEventTarget()Lcom/firebase/client/EventTarget;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 2
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Lcom/firebase/client/utilities/LogWrapper;

    iget-object v1, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/utilities/LogWrapper;-><init>(Lcom/firebase/client/Logger;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 2
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Lcom/firebase/client/utilities/LogWrapper;

    iget-object v1, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    invoke-direct {v0, v1, p1, p2}, Lcom/firebase/client/utilities/LogWrapper;-><init>(Lcom/firebase/client/Logger;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPersistenceCacheSizeBytes()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/firebase/client/core/Context;->cacheSize:J

    return-wide v0
.end method

.method getPersistenceManager(Ljava/lang/String;)Lcom/firebase/client/core/persistence/PersistenceManager;
    .locals 3
    .param p1, "firebaseId"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/firebase/client/core/Context;->forcedPersistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    if-eqz v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/firebase/client/core/Context;->forcedPersistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    iget-boolean v1, p0, Lcom/firebase/client/core/Context;->persistenceEnabled:Z

    if-eqz v1, :cond_2

    .line 147
    sget-object v1, Lcom/firebase/client/core/Context;->platform:Lcom/firebase/client/core/Platform;

    invoke-interface {v1, p0, p1}, Lcom/firebase/client/core/Platform;->createPersistenceManager(Lcom/firebase/client/core/Context;Ljava/lang/String;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v0

    .line 148
    .local v0, "cache":Lcom/firebase/client/core/persistence/PersistenceManager;
    if-nez v0, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "cache":Lcom/firebase/client/core/persistence/PersistenceManager;
    :cond_2
    new-instance v0, Lcom/firebase/client/core/persistence/NoopPersistenceManager;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;-><init>()V

    goto :goto_0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getPlatform()Lcom/firebase/client/core/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/core/Platform;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunLoop()Lcom/firebase/client/RunLoop;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    return-object v0
.end method

.method public getSessionPersistenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/firebase/client/core/Context;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/firebase/client/core/Context;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomAuthenticationServerSet()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/firebase/client/core/Context;->authenticationServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/firebase/client/core/Context;->frozen:Z

    return v0
.end method

.method public isPersistenceEnabled()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/firebase/client/core/Context;->persistenceEnabled:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/firebase/client/core/Context;->stopped:Z

    return v0
.end method

.method public requireStarted()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/firebase/client/core/Context;->stopped:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->restartServices()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/Context;->stopped:Z

    .line 101
    :cond_0
    return-void
.end method

.method public runBackgroundTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getPlatform()Lcom/firebase/client/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/firebase/client/core/Platform;->runBackgroundTask(Lcom/firebase/client/core/Context;Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/Context;->stopped:Z

    .line 123
    iget-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    invoke-interface {v0}, Lcom/firebase/client/EventTarget;->shutdown()V

    .line 124
    iget-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    invoke-interface {v0}, Lcom/firebase/client/RunLoop;->shutdown()V

    .line 125
    return-void
.end method
