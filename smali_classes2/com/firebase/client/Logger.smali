.class public interface abstract Lcom/firebase/client/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/Logger$Level;
    }
.end annotation


# virtual methods
.method public abstract getLogLevel()Lcom/firebase/client/Logger$Level;
.end method

.method public abstract onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V
.end method
