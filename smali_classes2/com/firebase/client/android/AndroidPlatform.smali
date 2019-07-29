.class public Lcom/firebase/client/android/AndroidPlatform;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Lcom/firebase/client/core/Platform;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final createdPersistenceCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/android/AndroidPlatform;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/android/AndroidPlatform;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/firebase/client/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public createPersistenceManager(Lcom/firebase/client/core/Context;Ljava/lang/String;)Lcom/firebase/client/core/persistence/PersistenceManager;
    .locals 7
    .param p1, "firebaseContext"    # Lcom/firebase/client/core/Context;
    .param p2, "firebaseId"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "cacheId":Ljava/lang/String;
    iget-object v4, p0, Lcom/firebase/client/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    new-instance v4, Lcom/firebase/client/FirebaseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionPersistenceKey \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' has already been used."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/firebase/client/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Lcom/firebase/client/android/SqlPersistenceStorageEngine;

    iget-object v4, p0, Lcom/firebase/client/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v4, p1, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;-><init>(Landroid/content/Context;Lcom/firebase/client/core/Context;Ljava/lang/String;)V

    .line 103
    .local v2, "engine":Lcom/firebase/client/android/SqlPersistenceStorageEngine;
    new-instance v1, Lcom/firebase/client/core/persistence/LRUCachePolicy;

    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getPersistenceCacheSizeBytes()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/firebase/client/core/persistence/LRUCachePolicy;-><init>(J)V

    .line 104
    .local v1, "cachePolicy":Lcom/firebase/client/core/persistence/CachePolicy;
    new-instance v4, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;

    invoke-direct {v4, p1, v2, v1}, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/persistence/PersistenceStorageEngine;Lcom/firebase/client/core/persistence/CachePolicy;)V

    return-object v4
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Lcom/firebase/client/core/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newCredentialStore(Lcom/firebase/client/core/Context;)Lcom/firebase/client/CredentialStore;
    .locals 2
    .param p1, "context"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 109
    new-instance v0, Lcom/firebase/client/android/AndroidCredentialStore;

    iget-object v1, p0, Lcom/firebase/client/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/firebase/client/android/AndroidCredentialStore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newEventTarget(Lcom/firebase/client/core/Context;)Lcom/firebase/client/EventTarget;
    .locals 1
    .param p1, "context"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/firebase/client/android/AndroidEventTarget;

    invoke-direct {v0}, Lcom/firebase/client/android/AndroidEventTarget;-><init>()V

    return-object v0
.end method

.method public newLogger(Lcom/firebase/client/core/Context;Lcom/firebase/client/Logger$Level;Ljava/util/List;)Lcom/firebase/client/Logger;
    .locals 1
    .param p1, "context"    # Lcom/firebase/client/core/Context;
    .param p2, "component"    # Lcom/firebase/client/Logger$Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Context;",
            "Lcom/firebase/client/Logger$Level;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/firebase/client/Logger;"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "enabledComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/firebase/client/android/AndroidLogger;

    invoke-direct {v0, p2, p3}, Lcom/firebase/client/android/AndroidLogger;-><init>(Lcom/firebase/client/Logger$Level;Ljava/util/List;)V

    return-object v0
.end method

.method public newRunLoop(Lcom/firebase/client/core/Context;)Lcom/firebase/client/RunLoop;
    .locals 2
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 33
    const-string v1, "RunLoop"

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    .line 34
    .local v0, "logger":Lcom/firebase/client/utilities/LogWrapper;
    new-instance v1, Lcom/firebase/client/android/AndroidPlatform$1;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/android/AndroidPlatform$1;-><init>(Lcom/firebase/client/android/AndroidPlatform;Lcom/firebase/client/utilities/LogWrapper;)V

    return-object v1
.end method

.method public runBackgroundTask(Lcom/firebase/client/core/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Lcom/firebase/client/core/Context;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    new-instance v0, Lcom/firebase/client/android/AndroidPlatform$2;

    invoke-direct {v0, p0, p2}, Lcom/firebase/client/android/AndroidPlatform$2;-><init>(Lcom/firebase/client/android/AndroidPlatform;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/firebase/client/android/AndroidPlatform$2;->start()V

    .line 86
    return-void
.end method
