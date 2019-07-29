.class public interface abstract Lcom/firebase/client/core/PersistentConnection$Delegate;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract onAuthStatus(Z)V
.end method

.method public abstract onConnect()V
.end method

.method public abstract onDataUpdate(Ljava/lang/String;Ljava/lang/Object;ZLcom/firebase/client/core/Tag;)V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onRangeMergeUpdate(Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Tag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/RangeMerge;",
            ">;",
            "Lcom/firebase/client/core/Tag;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onServerInfoUpdate(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
