.class public Lcom/amplitude/api/Amplitude;
.super Ljava/lang/Object;
.source "Amplitude.java"


# static fields
.field static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amplitude/api/AmplitudeClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amplitude/api/Amplitude;->instances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableLocationListening()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->disableLocationListening()Lcom/amplitude/api/AmplitudeClient;

    .line 107
    return-void
.end method

.method public static enableLocationListening()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->enableLocationListening()Lcom/amplitude/api/AmplitudeClient;

    .line 99
    return-void
.end method

.method public static enableNewDeviceIdPerInstall(Z)V
    .locals 1
    .param p0, "newDeviceIdPerInstall"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amplitude/api/AmplitudeClient;->enableNewDeviceIdPerInstall(Z)Lcom/amplitude/api/AmplitudeClient;

    .line 83
    return-void
.end method

.method public static endSession()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amplitude/api/Amplitude;->getInstance(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 3
    .param p0, "instance"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v2, Lcom/amplitude/api/Amplitude;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/amplitude/api/Utils;->normalizeInstanceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    sget-object v1, Lcom/amplitude/api/Amplitude;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amplitude/api/AmplitudeClient;

    .line 43
    .local v0, "client":Lcom/amplitude/api/AmplitudeClient;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/amplitude/api/AmplitudeClient;

    .end local v0    # "client":Lcom/amplitude/api/AmplitudeClient;
    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeClient;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v0    # "client":Lcom/amplitude/api/AmplitudeClient;
    sget-object v1, Lcom/amplitude/api/Amplitude;->instances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v2

    return-object v0

    .line 41
    .end local v0    # "client":Lcom/amplitude/api/AmplitudeClient;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    .line 60
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    .line 73
    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "eventProperties"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 148
    return-void
.end method

.method public static logRevenue(D)V
    .locals 2
    .param p0, "amount"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(D)V

    .line 178
    return-void
.end method

.method public static logRevenue(Ljava/lang/String;ID)V
    .locals 2
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "quantity"    # I
    .param p2, "price"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;ID)V

    .line 190
    return-void
.end method

.method public static logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "quantity"    # I
    .param p2, "price"    # D
    .param p4, "receipt"    # Ljava/lang/String;
    .param p5, "receiptSignature"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static setOptOut(Z)V
    .locals 1
    .param p0, "optOut"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amplitude/api/AmplitudeClient;->setOptOut(Z)Lcom/amplitude/api/AmplitudeClient;

    .line 127
    return-void
.end method

.method public static setSessionTimeoutMillis(J)V
    .locals 2
    .param p0, "sessionTimeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/AmplitudeClient;->setSessionTimeoutMillis(J)Lcom/amplitude/api/AmplitudeClient;

    .line 117
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amplitude/api/AmplitudeClient;->setUserId(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    .line 236
    return-void
.end method

.method public static setUserProperties(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "userProperties"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;)V

    .line 215
    return-void
.end method

.method public static setUserProperties(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p0, "userProperties"    # Lorg/json/JSONObject;
    .param p1, "replace"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;Z)V

    .line 226
    return-void
.end method

.method public static startSession()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public static uploadEvents()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->uploadEvents()V

    .line 156
    return-void
.end method

.method public static useAdvertisingIdForDeviceId()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId()Lcom/amplitude/api/AmplitudeClient;

    .line 91
    return-void
.end method
