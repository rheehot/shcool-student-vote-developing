.class final enum Lcom/firebase/client/core/GaePlatform;
.super Ljava/lang/Enum;
.source "GaePlatform.java"

# interfaces
.implements Lcom/firebase/client/core/Platform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/core/GaePlatform;",
        ">;",
        "Lcom/firebase/client/core/Platform;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/core/GaePlatform;

.field public static final enum INSTANCE:Lcom/firebase/client/core/GaePlatform;

.field static threadFactoryInstance:Ljava/util/concurrent/ThreadFactory;

.field static final threadInitializerInstance:Lcom/firebase/client/core/ThreadInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/firebase/client/core/GaePlatform;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/GaePlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/GaePlatform;->INSTANCE:Lcom/firebase/client/core/GaePlatform;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/firebase/client/core/GaePlatform;

    sget-object v1, Lcom/firebase/client/core/GaePlatform;->INSTANCE:Lcom/firebase/client/core/GaePlatform;

    aput-object v1, v0, v2

    sput-object v0, Lcom/firebase/client/core/GaePlatform;->$VALUES:[Lcom/firebase/client/core/GaePlatform;

    .line 24
    new-instance v0, Lcom/firebase/client/core/GaePlatform$1;

    invoke-direct {v0}, Lcom/firebase/client/core/GaePlatform$1;-><init>()V

    sput-object v0, Lcom/firebase/client/core/GaePlatform;->threadInitializerInstance:Lcom/firebase/client/core/ThreadInitializer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getGaeThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 47
    sget-object v2, Lcom/firebase/client/core/GaePlatform;->threadFactoryInstance:Ljava/util/concurrent/ThreadFactory;

    if-nez v2, :cond_0

    .line 49
    :try_start_0
    const-string v2, "com.google.appengine.api.ThreadManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 51
    const-string v2, "backgroundThreadFactory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadFactory;

    sput-object v2, Lcom/firebase/client/core/GaePlatform;->threadFactoryInstance:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 64
    :cond_0
    sget-object v2, Lcom/firebase/client/core/GaePlatform;->threadFactoryInstance:Ljava/util/concurrent/ThreadFactory;

    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v3

    .line 55
    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 60
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/firebase/client/core/GaePlatform;->getGaeThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/core/GaePlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/firebase/client/core/GaePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/GaePlatform;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/core/GaePlatform;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->$VALUES:[Lcom/firebase/client/core/GaePlatform;

    invoke-virtual {v0}, [Lcom/firebase/client/core/GaePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/core/GaePlatform;

    return-object v0
.end method


# virtual methods
.method public createPersistenceManager(Lcom/firebase/client/core/Context;Ljava/lang/String;)Lcom/firebase/client/core/persistence/PersistenceManager;
    .locals 1
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gae-"

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
    .locals 4
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 110
    const-string v0, "AppEngine"

    .line 111
    .local v0, "deviceName":Ljava/lang/String;
    const-string v2, "java.specification.version"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "systemVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->threadFactoryInstance:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/firebase/client/core/GaePlatform$2;

    invoke-direct {v1, p0}, Lcom/firebase/client/core/GaePlatform$2;-><init>(Lcom/firebase/client/core/GaePlatform;)V

    invoke-static {v0, v1}, Lcom/firebase/tubesock/WebSocket;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;Lcom/firebase/tubesock/ThreadInitializer;)V

    .line 79
    return-void
.end method

.method public newCredentialStore(Lcom/firebase/client/core/Context;)Lcom/firebase/client/CredentialStore;
    .locals 1
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 128
    new-instance v0, Lcom/firebase/client/authentication/NoopCredentialStore;

    invoke-direct {v0, p1}, Lcom/firebase/client/authentication/NoopCredentialStore;-><init>(Lcom/firebase/client/core/Context;)V

    return-object v0
.end method

.method public newEventTarget(Lcom/firebase/client/core/Context;)Lcom/firebase/client/EventTarget;
    .locals 3
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 83
    new-instance v0, Lcom/firebase/client/core/ThreadPoolEventTarget;

    invoke-static {}, Lcom/firebase/client/core/GaePlatform;->getGaeThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget-object v2, Lcom/firebase/client/core/GaePlatform;->threadInitializerInstance:Lcom/firebase/client/core/ThreadInitializer;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/ThreadPoolEventTarget;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/firebase/client/core/ThreadInitializer;)V

    return-object v0
.end method

.method public newLogger(Lcom/firebase/client/core/Context;Lcom/firebase/client/Logger$Level;Ljava/util/List;)Lcom/firebase/client/Logger;
    .locals 1
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;
    .param p2, "level"    # Lcom/firebase/client/Logger$Level;
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
    .line 43
    .local p3, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/firebase/client/utilities/DefaultLogger;

    invoke-direct {v0, p2, p3}, Lcom/firebase/client/utilities/DefaultLogger;-><init>(Lcom/firebase/client/Logger$Level;Ljava/util/List;)V

    return-object v0
.end method

.method public newRunLoop(Lcom/firebase/client/core/Context;)Lcom/firebase/client/RunLoop;
    .locals 2
    .param p1, "context"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 88
    const-string v1, "RunLoop"

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    .line 89
    .local v0, "logger":Lcom/firebase/client/utilities/LogWrapper;
    new-instance v1, Lcom/firebase/client/core/GaePlatform$3;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/core/GaePlatform$3;-><init>(Lcom/firebase/client/core/GaePlatform;Lcom/firebase/client/utilities/LogWrapper;)V

    return-object v1
.end method

.method public runBackgroundTask(Lcom/firebase/client/core/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->threadFactoryInstance:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/firebase/client/core/GaePlatform$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/firebase/client/core/GaePlatform$4;-><init>(Lcom/firebase/client/core/GaePlatform;Ljava/lang/Runnable;Lcom/firebase/client/core/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method
