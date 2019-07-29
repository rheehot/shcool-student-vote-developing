.class final Lcom/firebase/client/core/GaePlatform$1;
.super Ljava/lang/Object;
.source "GaePlatform.java"

# interfaces
.implements Lcom/firebase/client/core/ThreadInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/GaePlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDaemon(Ljava/lang/Thread;Z)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 33
    return-void
.end method

.method public setName(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 38
    return-void
.end method
