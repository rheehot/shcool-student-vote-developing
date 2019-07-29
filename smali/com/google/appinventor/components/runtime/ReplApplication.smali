.class public Lcom/google/appinventor/components/runtime/ReplApplication;
.super Landroid/app/Application;
.source "ReplApplication.java"


# static fields
.field public static installed:Z

.field private static thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;


# instance fields
.field private active:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    return-void
.end method

.method public static isAcraActive()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportError(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "reportId"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/ReplApplication;->reportError(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    .line 48
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 53
    sput-object p0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    .line 54
    return-void
.end method
