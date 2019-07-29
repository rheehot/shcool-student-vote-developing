.class public Lcom/firebase/client/android/AndroidEventTarget;
.super Ljava/lang/Object;
.source "AndroidEventTarget.java"

# interfaces
.implements Lcom/firebase/client/EventTarget;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/firebase/client/android/AndroidEventTarget;->handler:Landroid/os/Handler;

    .line 14
    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/android/AndroidEventTarget;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
