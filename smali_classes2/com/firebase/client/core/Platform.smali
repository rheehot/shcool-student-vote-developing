.class public interface abstract Lcom/firebase/client/core/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# virtual methods
.method public abstract createPersistenceManager(Lcom/firebase/client/core/Context;Ljava/lang/String;)Lcom/firebase/client/core/persistence/PersistenceManager;
.end method

.method public abstract getPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUserAgent(Lcom/firebase/client/core/Context;)Ljava/lang/String;
.end method

.method public abstract newCredentialStore(Lcom/firebase/client/core/Context;)Lcom/firebase/client/CredentialStore;
.end method

.method public abstract newEventTarget(Lcom/firebase/client/core/Context;)Lcom/firebase/client/EventTarget;
.end method

.method public abstract newLogger(Lcom/firebase/client/core/Context;Lcom/firebase/client/Logger$Level;Ljava/util/List;)Lcom/firebase/client/Logger;
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
.end method

.method public abstract newRunLoop(Lcom/firebase/client/core/Context;)Lcom/firebase/client/RunLoop;
.end method

.method public abstract runBackgroundTask(Lcom/firebase/client/core/Context;Ljava/lang/Runnable;)V
.end method
