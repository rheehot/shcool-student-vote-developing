.class public Lcom/amplitude/api/AmplitudeLog;
.super Ljava/lang/Object;
.source "AmplitudeLog.java"


# static fields
.field protected static instance:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field private volatile enableLogging:Z

.field private volatile logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/amplitude/api/AmplitudeLog;

    invoke-direct {v0}, Lcom/amplitude/api/AmplitudeLog;-><init>()V

    sput-object v0, Lcom/amplitude/api/AmplitudeLog;->instance:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    .line 11
    const/4 v0, 0x4

    iput v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    .line 19
    return-void
.end method

.method public static getLogger()Lcom/amplitude/api/AmplitudeLog;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amplitude/api/AmplitudeLog;->instance:Lcom/amplitude/api/AmplitudeLog;

    return-object v0
.end method


# virtual methods
.method d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method setEnableLogging(Z)Lcom/amplitude/api/AmplitudeLog;
    .locals 1
    .param p1, "enableLogging"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    .line 23
    sget-object v0, Lcom/amplitude/api/AmplitudeLog;->instance:Lcom/amplitude/api/AmplitudeLog;

    return-object v0
.end method

.method setLogLevel(I)Lcom/amplitude/api/AmplitudeLog;
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    .line 28
    sget-object v0, Lcom/amplitude/api/AmplitudeLog;->instance:Lcom/amplitude/api/AmplitudeLog;

    return-object v0
.end method

.method v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeLog;->enableLogging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amplitude/api/AmplitudeLog;->logLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
