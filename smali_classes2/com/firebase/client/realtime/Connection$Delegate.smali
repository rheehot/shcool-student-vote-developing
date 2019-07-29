.class public interface abstract Lcom/firebase/client/realtime/Connection$Delegate;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/realtime/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract onDataMessage(Ljava/util/Map;)V
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
.end method

.method public abstract onDisconnect(Lcom/firebase/client/realtime/Connection$DisconnectReason;)V
.end method

.method public abstract onKill(Ljava/lang/String;)V
.end method

.method public abstract onReady(JLjava/lang/String;)V
.end method
