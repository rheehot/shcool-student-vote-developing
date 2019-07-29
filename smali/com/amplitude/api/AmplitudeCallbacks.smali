.class Lcom/amplitude/api/AmplitudeCallbacks;
.super Ljava/lang/Object;
.source "AmplitudeCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final NULLMSG:Ljava/lang/String; = "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.AmplitudeCallbacks"

.field private static logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field private clientInstance:Lcom/amplitude/api/AmplitudeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/AmplitudeCallbacks;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method public constructor <init>(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 3
    .param p1, "clientInstance"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeCallbacks;->clientInstance:Lcom/amplitude/api/AmplitudeClient;

    .line 16
    if-nez p1, :cond_0

    .line 17
    sget-object v0, Lcom/amplitude/api/AmplitudeCallbacks;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.AmplitudeCallbacks"

    const-string v2, "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeCallbacks;->clientInstance:Lcom/amplitude/api/AmplitudeClient;

    .line 22
    invoke-virtual {p1}, Lcom/amplitude/api/AmplitudeClient;->useForegroundTracking()V

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeCallbacks;->clientInstance:Lcom/amplitude/api/AmplitudeClient;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/amplitude/api/AmplitudeCallbacks;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.AmplitudeCallbacks"

    const-string v2, "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeCallbacks;->clientInstance:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeCallbacks;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->onExitForeground(J)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeCallbacks;->clientInstance:Lcom/amplitude/api/AmplitudeClient;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/amplitude/api/AmplitudeCallbacks;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.AmplitudeCallbacks"

    const-string v2, "Need to initialize AmplitudeCallbacks with AmplitudeClient instance"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeCallbacks;->clientInstance:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeCallbacks;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->onEnterForeground(J)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outstate"    # Landroid/os/Bundle;

    .prologue
    .line 52
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    return-void
.end method
