.class public Lcom/amplitude/api/AmplitudeClient;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"


# static fields
.field public static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id"

.field public static final END_SESSION_EVENT:Ljava/lang/String; = "session_end"

.field public static final LAST_EVENT_ID_KEY:Ljava/lang/String; = "last_event_id"

.field public static final LAST_EVENT_TIME_KEY:Ljava/lang/String; = "last_event_time"

.field public static final LAST_IDENTIFY_ID_KEY:Ljava/lang/String; = "last_identify_id"

.field public static final OPT_OUT_KEY:Ljava/lang/String; = "opt_out"

.field public static final PREVIOUS_SESSION_ID_KEY:Ljava/lang/String; = "previous_session_id"

.field public static final SEQUENCE_NUMBER_KEY:Ljava/lang/String; = "sequence_number"

.field public static final START_SESSION_EVENT:Ljava/lang/String; = "session_start"

.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.AmplitudeClient"

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"

.field private static final logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field protected apiKey:Ljava/lang/String;

.field private backoffUpload:Z

.field private backoffUploadBatchSize:I

.field protected context:Landroid/content/Context;

.field protected dbHelper:Lcom/amplitude/api/DatabaseHelper;

.field protected deviceId:Ljava/lang/String;

.field private deviceInfo:Lcom/amplitude/api/DeviceInfo;

.field private eventMaxCount:I

.field private eventUploadMaxBatchSize:I

.field private eventUploadPeriodMillis:J

.field private eventUploadThreshold:I

.field private flushEventsOnClose:Z

.field protected httpClient:Lokhttp3/OkHttpClient;

.field httpThread:Lcom/amplitude/api/WorkerThread;

.field private inForeground:Z

.field protected initialized:Z

.field protected instanceName:Ljava/lang/String;

.field lastError:Ljava/lang/Throwable;

.field lastEventId:J

.field lastEventTime:J

.field lastIdentifyId:J

.field logThread:Lcom/amplitude/api/WorkerThread;

.field private minTimeBetweenSessionsMillis:J

.field private newDeviceIdPerInstall:Z

.field private offline:Z

.field private optOut:Z

.field previousSessionId:J

.field sequenceNumber:J

.field sessionId:J

.field private sessionTimeoutMillis:J

.field private trackingSessionEvents:Z

.field private updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

.field url:Ljava/lang/String;

.field private useAdvertisingIdForDeviceId:Z

.field protected userId:Ljava/lang/String;

.field private usingForegroundTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amplitude/api/AmplitudeClient;-><init>(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "instance"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    .line 119
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    .line 120
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->initialized:Z

    .line 121
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    .line 122
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    .line 127
    iput-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    .line 129
    iput-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    .line 130
    iput-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    .line 131
    iput-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    .line 132
    iput-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    .line 139
    const/16 v0, 0x1e

    iput v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    .line 140
    const/16 v0, 0x64

    iput v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    .line 141
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    .line 142
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    .line 143
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    .line 144
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    .line 145
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    .line 146
    iget v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    iput v0, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    .line 147
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    .line 148
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    .line 149
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->flushEventsOnClose:Z

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    const-string v0, "https://api.amplitude.com/"

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->url:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "logThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    .line 173
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "httpThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    .line 187
    invoke-static {p1}, Lcom/amplitude/api/Utils;->normalizeInstanceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->instanceName:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    .line 189
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->initializeDeviceInfo()V

    return-void
.end method

.method static synthetic access$1002(Lcom/amplitude/api/AmplitudeClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    return p1
.end method

.method static synthetic access$102(Lcom/amplitude/api/AmplitudeClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amplitude/api/AmplitudeClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 39
    iget v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;J)J
    .locals 2
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/amplitude/api/AmplitudeClient;->getLongvalue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300()Lcom/amplitude/api/AmplitudeLog;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amplitude/api/AmplitudeClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amplitude/api/AmplitudeClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->flushEventsOnClose:Z

    return v0
.end method

.method static synthetic access$700(Lcom/amplitude/api/AmplitudeClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amplitude/api/AmplitudeClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 39
    iget v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    return v0
.end method

.method static synthetic access$900(Lcom/amplitude/api/AmplitudeClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    return v0
.end method

.method static synthetic access$902(Lcom/amplitude/api/AmplitudeClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/amplitude/api/AmplitudeClient;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    return p1
.end method

.method private getInvalidDeviceIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1867
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1868
    .local v0, "invalidDeviceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1869
    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1870
    const-string v1, "unknown"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1871
    const-string v1, "000000000000000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1872
    const-string v1, "Android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1873
    const-string v1, "DEFACE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1874
    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1876
    return-object v0
.end method

.method private getLongvalue(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 989
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 990
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method private inSession()Z
    .locals 4

    .prologue
    .line 1103
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1880
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->getInvalidDeviceIds()Ljava/util/Set;

    move-result-object v2

    .line 1883
    .local v2, "invalidIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v5, "device_id"

    invoke-virtual {v4, v5}, Lcom/amplitude/api/DatabaseHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1884
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1903
    .end local v1    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1888
    .restart local v1    # "deviceId":Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    if-eqz v4, :cond_1

    .line 1892
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v4}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1894
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v5, "device_id"

    invoke-virtual {v4, v5, v0}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    move-object v1, v0

    .line 1895
    goto :goto_0

    .line 1901
    .end local v0    # "advertisingId":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-static {}, Lcom/amplitude/api/DeviceInfo;->generateUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1902
    .local v3, "randomId":Ljava/lang/String;
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v5, "device_id"

    invoke-virtual {v4, v5, v3}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    move-object v1, v3

    .line 1903
    goto :goto_0
.end method

.method private initializeDeviceInfo()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/amplitude/api/DeviceInfo;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amplitude/api/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    .line 304
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->initializeDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v0}, Lcom/amplitude/api/DeviceInfo;->prefetch()V

    .line 306
    return-void
.end method

.method private isWithinMinTimeBetweenSessions(J)Z
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 1107
    iget-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    .line 1109
    .local v0, "sessionLimit":J
    :goto_0
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1107
    .end local v0    # "sessionLimit":J
    :cond_0
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    goto :goto_0

    .line 1109
    .restart local v0    # "sessionLimit":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static migrateBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "dbHelper"    # Lcom/amplitude/api/DatabaseHelper;
    .param p4, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 2152
    invoke-virtual {p3, p4}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2153
    .local v1, "value":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 2159
    :goto_0
    return-void

    .line 2156
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2157
    .local v0, "oldValue":Z
    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p4, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 2158
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2157
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private static migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defValue"    # J
    .param p4, "dbHelper"    # Lcom/amplitude/api/DatabaseHelper;
    .param p5, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 2130
    invoke-virtual {p4, p5}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2131
    .local v2, "value":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 2137
    :goto_0
    return-void

    .line 2134
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2135
    .local v0, "oldValue":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, p5, v3}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 2136
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static migrateStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;
    .param p3, "dbHelper"    # Lcom/amplitude/api/DatabaseHelper;
    .param p4, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 2140
    invoke-virtual {p3, p4}, Lcom/amplitude/api/DatabaseHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2149
    :cond_0
    :goto_0
    return-void

    .line 2144
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, "oldValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2146
    invoke-virtual {p3, p4, v0}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    .line 2147
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private sendSessionEvent(Ljava/lang/String;)V
    .locals 10
    .param p1, "sessionEvent"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1131
    const-string v0, "sendSessionEvent(\'%s\')"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->inSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1141
    .local v3, "apiProperties":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "special"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    iget-wide v6, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v9

    .line 1143
    .local v9, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private setSessionId(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 1113
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    .line 1114
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->setPreviousSessionId(J)V

    .line 1115
    return-void
.end method

.method private startNewSession(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    if-eqz v0, :cond_0

    .line 1091
    const-string v0, "session_end"

    invoke-direct {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->sendSessionEvent(Ljava/lang/String;)V

    .line 1095
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->setSessionId(J)V

    .line 1096
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    .line 1097
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    if-eqz v0, :cond_1

    .line 1098
    const-string v0, "session_start"

    invoke-direct {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->sendSessionEvent(Ljava/lang/String;)V

    .line 1100
    :cond_1
    return-void
.end method

.method private updateServerLater(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    :goto_0
    return-void

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$12;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$12;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/amplitude/api/WorkerThread;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static upgradePrefs(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1982
    invoke-static {p0, v0, v0}, Lcom/amplitude/api/AmplitudeClient;->upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePkgName"    # Ljava/lang/String;
    .param p2, "targetPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1995
    if-nez p1, :cond_0

    .line 1997
    :try_start_0
    const-string p1, "com.amplitude.api"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    :try_start_1
    const-class v7, Lcom/amplitude/api/Constants;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 2003
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 2004
    :try_start_2
    const-string p2, "com.amplitude.api"

    .line 2008
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2054
    :cond_2
    :goto_1
    return v6

    .line 2013
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2014
    .local v3, "sourcePrefsName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2015
    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2018
    .local v2, "source":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 2022
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2023
    .local v1, "prefsName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2024
    invoke-virtual {p0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2025
    .local v5, "targetPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2028
    .local v4, "target":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".previousSessionId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2029
    const-string v7, "com.amplitude.api.previousSessionId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".previousSessionId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, -0x1

    .line 2030
    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2029
    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2032
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".deviceId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2033
    const-string v7, "com.amplitude.api.deviceId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".deviceId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 2034
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2033
    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2036
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".userId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2037
    const-string v7, "com.amplitude.api.userId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".userId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 2038
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2037
    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2040
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".optOut"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2041
    const-string v7, "com.amplitude.api.optOut"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".optOut"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 2042
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2041
    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2046
    :cond_7
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2047
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2049
    sget-object v7, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v8, "com.amplitude.api.AmplitudeClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgraded shared preferences from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/amplitude/api/AmplitudeLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2050
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 2052
    .end local v1    # "prefsName":Ljava/lang/String;
    .end local v2    # "source":Landroid/content/SharedPreferences;
    .end local v3    # "sourcePrefsName":Ljava/lang/String;
    .end local v4    # "target":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "targetPrefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v8, "com.amplitude.api.AmplitudeClient"

    const-string v9, "Error upgrading shared preferences"

    invoke-virtual {v7, v8, v9, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2000
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method static upgradeSharedPrefsToDB(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2069
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->upgradeSharedPrefsToDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static upgradeSharedPrefsToDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePkgName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v2, -0x1

    .line 2080
    if-nez p1, :cond_0

    .line 2081
    const-string p1, "com.amplitude.api"

    .line 2085
    :cond_0
    invoke-static {p0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v4

    .line 2086
    .local v4, "dbHelper":Lcom/amplitude/api/DatabaseHelper;
    const-string v1, "device_id"

    invoke-virtual {v4, v1}, Lcom/amplitude/api/DatabaseHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2087
    .local v6, "deviceId":Ljava/lang/String;
    const-string v1, "previous_session_id"

    invoke-virtual {v4, v1}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 2088
    .local v9, "previousSessionId":Ljava/lang/Long;
    const-string v1, "last_event_time"

    invoke-virtual {v4, v1}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 2089
    .local v7, "lastEventTime":Ljava/lang/Long;
    invoke-static {v6}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v9, :cond_1

    if-eqz v7, :cond_1

    .line 2126
    :goto_0
    return v11

    .line 2093
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2095
    .local v8, "prefsName":Ljava/lang/String;
    invoke-virtual {p0, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2097
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "com.amplitude.api.deviceId"

    const-string v5, "device_id"

    invoke-static {v0, v1, v12, v4, v5}, Lcom/amplitude/api/AmplitudeClient;->migrateStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    .line 2101
    const-string v1, "com.amplitude.api.lastEventTime"

    const-string v5, "last_event_time"

    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    .line 2105
    const-string v1, "com.amplitude.api.lastEventId"

    const-string v5, "last_event_id"

    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    .line 2109
    const-string v1, "com.amplitude.api.lastIdentifyId"

    const-string v5, "last_identify_id"

    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    .line 2113
    const-string v1, "com.amplitude.api.previousSessionId"

    const-string v5, "previous_session_id"

    invoke-static/range {v0 .. v5}, Lcom/amplitude/api/AmplitudeClient;->migrateLongValue(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    .line 2118
    const-string v1, "com.amplitude.api.userId"

    const-string v2, "user_id"

    invoke-static {v0, v1, v12, v4, v2}, Lcom/amplitude/api/AmplitudeClient;->migrateStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    .line 2122
    const-string v1, "com.amplitude.api.optOut"

    const-string v2, "opt_out"

    invoke-static {v0, v1, v10, v4, v2}, Lcom/amplitude/api/AmplitudeClient;->migrateBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/amplitude/api/DatabaseHelper;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 1952
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 1954
    .local v0, "hexArray":[C
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 1956
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 1957
    aget-byte v4, p1, v2

    and-int/lit16 v3, v4, 0xff

    .line 1958
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 1959
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 1956
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1961
    .end local v3    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 1952
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public clearUserProperties()V
    .locals 2

    .prologue
    .line 1324
    new-instance v1, Lcom/amplitude/api/Identify;

    invoke-direct {v1}, Lcom/amplitude/api/Identify;-><init>()V

    invoke-virtual {v1}, Lcom/amplitude/api/Identify;->clearAll()Lcom/amplitude/api/Identify;

    move-result-object v0

    .line 1325
    .local v0, "identify":Lcom/amplitude/api/Identify;
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->identify(Lcom/amplitude/api/Identify;)V

    .line 1326
    return-void
.end method

.method protected declared-synchronized contextAndApiKeySet(Ljava/lang/String;)Z
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1931
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1932
    sget-object v1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.AmplitudeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context cannot be null, set context with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    :goto_0
    monitor-exit p0

    return v0

    .line 1936
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1937
    sget-object v1, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.AmplitudeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiKey cannot be null or empty, set apiKey with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1931
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1942
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableLocationListening()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$3;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeClient$3;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 368
    return-object p0
.end method

.method public enableForegroundTracking(Landroid/app/Application;)Lcom/amplitude/api/AmplitudeClient;
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    if-nez v0, :cond_0

    const-string v0, "enableForegroundTracking()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-object p0

    .line 294
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 295
    new-instance v0, Lcom/amplitude/api/AmplitudeCallbacks;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeCallbacks;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public enableLocationListening()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$2;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeClient$2;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 348
    return-object p0
.end method

.method public enableLogging(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 1
    .param p1, "enableLogging"    # Z

    .prologue
    .line 489
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/AmplitudeLog;->setEnableLogging(Z)Lcom/amplitude/api/AmplitudeLog;

    .line 490
    return-object p0
.end method

.method public enableNewDeviceIdPerInstall(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0
    .param p1, "newDeviceIdPerInstall"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    .line 318
    return-object p0
.end method

.method protected getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 2166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method getNextSequenceNumber()J
    .locals 4

    .prologue
    .line 999
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    .line 1000
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "sequence_number"

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 1001
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    return-wide v0
.end method

.method public getSessionId()J
    .locals 2

    .prologue
    .line 1040
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public identify(Lcom/amplitude/api/Identify;)V
    .locals 1
    .param p1, "identify"    # Lcom/amplitude/api/Identify;

    .prologue
    .line 1338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->identify(Lcom/amplitude/api/Identify;Z)V

    .line 1339
    return-void
.end method

.method public identify(Lcom/amplitude/api/Identify;Z)V
    .locals 9
    .param p1, "identify"    # Lcom/amplitude/api/Identify;
    .param p2, "outOfSession"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1353
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    .line 1354
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "identify()"

    .line 1355
    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1357
    :cond_1
    const-string v1, "$identify"

    iget-object v4, p1, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    .line 1359
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move v8, p2

    .line 1357
    invoke-virtual/range {v0 .. v8}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 216
    monitor-enter p0

    if-nez p1, :cond_0

    .line 217
    :try_start_0
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Argument context cannot be null in initialize()"

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    .line 277
    .end local p0    # "this":Lcom/amplitude/api/AmplitudeClient;
    .local v1, "this":Lcom/amplitude/api/AmplitudeClient;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 221
    .end local v1    # "this":Lcom/amplitude/api/AmplitudeClient;
    .restart local p0    # "this":Lcom/amplitude/api/AmplitudeClient;
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Argument apiKey cannot be null or blank in initialize()"

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    .line 223
    .end local p0    # "this":Lcom/amplitude/api/AmplitudeClient;
    .restart local v1    # "this":Lcom/amplitude/api/AmplitudeClient;
    goto :goto_0

    .line 226
    .end local v1    # "this":Lcom/amplitude/api/AmplitudeClient;
    .restart local p0    # "this":Lcom/amplitude/api/AmplitudeClient;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    .line 228
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amplitude/api/AmplitudeClient;->instanceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Ljava/lang/String;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    .line 230
    move-object v0, p0

    .line 231
    .local v0, "client":Lcom/amplitude/api/AmplitudeClient;
    new-instance v2, Lcom/amplitude/api/AmplitudeClient$1;

    invoke-direct {v2, p0, p1, p3, v0}, Lcom/amplitude/api/AmplitudeClient$1;-><init>(Lcom/amplitude/api/AmplitudeClient;Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    .line 277
    .end local p0    # "this":Lcom/amplitude/api/AmplitudeClient;
    .restart local v1    # "this":Lcom/amplitude/api/AmplitudeClient;
    goto :goto_0

    .line 216
    .end local v0    # "client":Lcom/amplitude/api/AmplitudeClient;
    .end local v1    # "this":Lcom/amplitude/api/AmplitudeClient;
    .restart local p0    # "this":Lcom/amplitude/api/AmplitudeClient;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isInForeground()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    return v0
.end method

.method public isOptedOut()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    return v0
.end method

.method isUsingForegroundTracking()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    return v0
.end method

.method protected logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    .locals 18
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "apiProperties"    # Lorg/json/JSONObject;
    .param p4, "userProperties"    # Lorg/json/JSONObject;
    .param p5, "groups"    # Lorg/json/JSONObject;
    .param p6, "timestamp"    # J
    .param p8, "outOfSession"    # Z

    .prologue
    .line 864
    sget-object v12, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v13, "com.amplitude.api.AmplitudeClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Logged event to Amplitude: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/amplitude/api/AmplitudeLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    if-eqz v12, :cond_0

    .line 867
    const-wide/16 v10, -0x1

    .line 937
    :goto_0
    return-wide v10

    .line 871
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    if-eqz v12, :cond_6

    const-string v12, "session_start"

    .line 872
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "session_end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_1
    const/4 v9, 0x1

    .line 874
    .local v9, "loggingSessionEvent":Z
    :goto_1
    if-nez v9, :cond_2

    if-nez p8, :cond_2

    .line 876
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/amplitude/api/AmplitudeClient;->inForeground:Z

    if-nez v12, :cond_7

    .line 877
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeClient;->startNewSessionIfNeeded(J)Z

    .line 883
    :cond_2
    :goto_2
    const-wide/16 v10, -0x1

    .line 884
    .local v10, "result":J
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 886
    .local v5, "event":Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "event_type"

    invoke-virtual/range {p0 .. p1}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string v12, "timestamp"

    move-wide/from16 v0, p6

    invoke-virtual {v5, v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 888
    const-string v12, "user_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string v12, "device_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v14, "session_id"

    if-eqz p8, :cond_8

    const-wide/16 v12, -0x1

    :goto_3
    invoke-virtual {v5, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 891
    const-string v12, "version_name"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    const-string v12, "os_name"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getOsName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string v12, "os_version"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string v12, "device_brand"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string v12, "device_manufacturer"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    const-string v12, "device_model"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    const-string v12, "carrier"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 898
    const-string v12, "country"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getCountry()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    const-string v12, "language"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    const-string v12, "platform"

    const-string v13, "Android"

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    const-string v12, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 902
    const-string v12, "sequence_number"

    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/AmplitudeClient;->getNextSequenceNumber()J

    move-result-wide v14

    invoke-virtual {v5, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 904
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 905
    .local v6, "library":Lorg/json/JSONObject;
    const-string v12, "name"

    const-string v13, "amplitude-android"

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 906
    const-string v12, "version"

    const-string v13, "2.16.0"

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 907
    const-string v12, "library"

    invoke-virtual {v5, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 909
    if-nez p3, :cond_3

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 p3, v12

    .line 910
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v12}, Lcom/amplitude/api/DeviceInfo;->getMostRecentLocation()Landroid/location/Location;

    move-result-object v7

    .line 911
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_4

    .line 912
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 913
    .local v8, "locationJSON":Lorg/json/JSONObject;
    const-string v12, "lat"

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v8, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 914
    const-string v12, "lng"

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v8, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 915
    const-string v12, "location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    .end local v8    # "locationJSON":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v12}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 918
    const-string v12, "androidADID"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    :cond_5
    const-string v12, "limit_ad_tracking"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->isLimitAdTrackingEnabled()Z

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 921
    const-string v12, "gps_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v13}, Lcom/amplitude/api/DeviceInfo;->isGooglePlayServicesEnabled()Z

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 923
    const-string v12, "api_properties"

    move-object/from16 v0, p3

    invoke-virtual {v5, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string v13, "event_properties"

    if-nez p2, :cond_9

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :goto_4
    invoke-virtual {v5, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string v13, "user_properties"

    if-nez p4, :cond_a

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :goto_5
    invoke-virtual {v5, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    const-string v13, "groups"

    if-nez p5, :cond_b

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :goto_6
    invoke-virtual {v5, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/amplitude/api/AmplitudeClient;->saveEvent(Ljava/lang/String;Lorg/json/JSONObject;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    goto/16 :goto_0

    .line 872
    .end local v5    # "event":Lorg/json/JSONObject;
    .end local v6    # "library":Lorg/json/JSONObject;
    .end local v7    # "location":Landroid/location/Location;
    .end local v9    # "loggingSessionEvent":Z
    .end local v10    # "result":J
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 879
    .restart local v9    # "loggingSessionEvent":Z
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    goto/16 :goto_2

    .line 890
    .restart local v5    # "event":Lorg/json/JSONObject;
    .restart local v10    # "result":J
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    goto/16 :goto_3

    .line 925
    .restart local v6    # "library":Lorg/json/JSONObject;
    .restart local v7    # "location":Landroid/location/Location;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v12

    goto :goto_4

    .line 927
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v12

    goto :goto_5

    .line 928
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_6

    .line 931
    .end local v6    # "library":Lorg/json/JSONObject;
    .end local v7    # "location":Landroid/location/Location;
    :catch_0
    move-exception v4

    .line 932
    .local v4, "e":Lorg/json/JSONException;
    sget-object v12, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v13, "com.amplitude.api.AmplitudeClient"

    const-string v14, "JSON Serialization of event type %s failed, skipping: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    .line 933
    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 932
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 577
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 590
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;

    .prologue
    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 627
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 10
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;
    .param p4, "timestamp"    # J
    .param p6, "outOfSession"    # Z

    .prologue
    const/4 v3, 0x0

    .line 671
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->validateLogEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    .line 672
    invoke-virtual/range {v0 .. v8}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    .line 676
    :cond_0
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 7
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;
    .param p4, "outOfSession"    # Z

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    .line 649
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "outOfSession"    # Z

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 609
    return-void
.end method

.method protected logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 12
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "apiProperties"    # Lorg/json/JSONObject;
    .param p4, "userProperties"    # Lorg/json/JSONObject;
    .param p5, "groups"    # Lorg/json/JSONObject;
    .param p6, "timestamp"    # J
    .param p8, "outOfSession"    # Z

    .prologue
    .line 820
    if-eqz p2, :cond_0

    .line 821
    invoke-static {p2}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 824
    :cond_0
    if-eqz p4, :cond_1

    .line 825
    invoke-static/range {p4 .. p4}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p4

    .line 828
    :cond_1
    if-eqz p5, :cond_2

    .line 829
    invoke-static/range {p5 .. p5}, Lcom/amplitude/api/Utils;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p5

    .line 832
    :cond_2
    move-object v4, p2

    .line 833
    .local v4, "copyEventProperties":Lorg/json/JSONObject;
    move-object/from16 v6, p4

    .line 834
    .local v6, "copyUserProperties":Lorg/json/JSONObject;
    move-object/from16 v7, p5

    .line 835
    .local v7, "copyGroups":Lorg/json/JSONObject;
    new-instance v1, Lcom/amplitude/api/AmplitudeClient$5;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/amplitude/api/AmplitudeClient$5;-><init>(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 847
    return-void
.end method

.method public logEventSync(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 686
    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 699
    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 736
    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 10
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;
    .param p4, "timestamp"    # J
    .param p6, "outOfSession"    # Z

    .prologue
    const/4 v3, 0x0

    .line 780
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->validateLogEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    .line 781
    invoke-virtual/range {v0 .. v8}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    .line 783
    :cond_0
    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 7
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;
    .param p4, "outOfSession"    # Z

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    .line 758
    return-void
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "outOfSession"    # Z

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amplitude/api/AmplitudeClient;->logEventSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 718
    return-void
.end method

.method public logRevenue(D)V
    .locals 3
    .param p1, "amount"    # D

    .prologue
    .line 1199
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;ID)V

    .line 1200
    return-void
.end method

.method public logRevenue(Ljava/lang/String;ID)V
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "price"    # D

    .prologue
    const/4 v6, 0x0

    .line 1213
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method public logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "price"    # D
    .param p5, "receipt"    # Ljava/lang/String;
    .param p6, "receiptSignature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1230
    const-string v0, "logRevenue()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1235
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1237
    .local v3, "apiProperties":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "special"

    const-string v1, "revenue_amount"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1238
    const-string v0, "productId"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1239
    const-string v0, "quantity"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1240
    const-string v0, "price"

    invoke-virtual {v3, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1241
    const-string v0, "receipt"

    invoke-virtual {v3, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1242
    const-string v0, "receiptSig"

    invoke-virtual {v3, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :goto_1
    const-string v1, "revenue_amount"

    .line 1247
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 1246
    invoke-virtual/range {v0 .. v8}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public logRevenueV2(Lcom/amplitude/api/Revenue;)V
    .locals 2
    .param p1, "revenue"    # Lcom/amplitude/api/Revenue;

    .prologue
    .line 1261
    const-string v0, "logRevenueV2()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amplitude/api/Revenue;->isValidRevenue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    const-string v0, "revenue_amount"

    invoke-virtual {p1}, Lcom/amplitude/api/Revenue;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected makeEventUploadPostRequest(Lokhttp3/OkHttpClient;Ljava/lang/String;JJ)V
    .locals 21
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "events"    # Ljava/lang/String;
    .param p3, "maxEventId"    # J
    .param p5, "maxIdentifyId"    # J

    .prologue
    .line 1729
    const-string v8, "2"

    .line 1730
    .local v8, "apiVersionString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1732
    .local v18, "timestampString":Ljava/lang/String;
    const-string v10, ""

    .line 1734
    .local v10, "checksumString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1740
    .local v14, "preimage":Ljava/lang/String;
    new-instance v12, Lcom/amplitude/security/MD5;

    invoke-direct {v12}, Lcom/amplitude/security/MD5;-><init>()V

    .line 1741
    .local v12, "messageDigest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {v14, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amplitude/api/AmplitudeClient;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1749
    .end local v12    # "messageDigest":Ljava/security/MessageDigest;
    .end local v14    # "preimage":Ljava/lang/String;
    :goto_0
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v3, "v"

    .line 1750
    invoke-virtual {v2, v3, v8}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    const-string v3, "client"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    .line 1751
    invoke-virtual {v2, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    const-string v3, "e"

    .line 1752
    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    const-string v3, "upload_time"

    .line 1753
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    const-string v3, "checksum"

    .line 1754
    invoke-virtual {v2, v3, v10}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    .line 1755
    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v9

    .line 1759
    .local v9, "body":Lokhttp3/FormBody;
    :try_start_1
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amplitude/api/AmplitudeClient;->url:Ljava/lang/String;

    .line 1760
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 1761
    invoke-virtual {v2, v9}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 1762
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 1769
    .local v15, "request":Lokhttp3/Request;
    const/16 v19, 0x0

    .line 1772
    .local v19, "uploadSuccess":Z
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v16

    .line 1773
    .local v16, "response":Lokhttp3/Response;
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v17

    .line 1774
    .local v17, "stringResponse":Ljava/lang/String;
    const-string v2, "success"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1775
    const/16 v19, 0x1

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    move-object/from16 v20, v0

    new-instance v2, Lcom/amplitude/api/AmplitudeClient$14;

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/amplitude/api/AmplitudeClient$14;-><init>(Lcom/amplitude/api/AmplitudeClient;JJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 1850
    .end local v16    # "response":Lokhttp3/Response;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :goto_1
    if-nez v19, :cond_0

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1854
    .end local v15    # "request":Lokhttp3/Request;
    .end local v19    # "uploadSuccess":Z
    :cond_0
    :goto_2
    return-void

    .line 1742
    .end local v9    # "body":Lokhttp3/FormBody;
    :catch_0
    move-exception v11

    .line 1746
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1763
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "body":Lokhttp3/FormBody;
    :catch_1
    move-exception v11

    .line 1764
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 1796
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "request":Lokhttp3/Request;
    .restart local v16    # "response":Lokhttp3/Response;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    .restart local v19    # "uploadSuccess":Z
    :cond_1
    :try_start_3
    const-string v2, "invalid_api_key"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1797
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Invalid API key, make sure your API key is correct in initialize()"

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    .line 1829
    .end local v16    # "response":Lokhttp3/Response;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 1832
    .local v11, "e":Ljava/net/ConnectException;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_1

    .line 1798
    .end local v11    # "e":Ljava/net/ConnectException;
    .restart local v16    # "response":Lokhttp3/Response;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v2, "bad_checksum"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1799
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Bad checksum, post request was mangled in transit, will attempt to reupload later"

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 1833
    .end local v16    # "response":Lokhttp3/Response;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 1836
    .local v11, "e":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_1

    .line 1801
    .end local v11    # "e":Ljava/net/UnknownHostException;
    .restart local v16    # "response":Lokhttp3/Response;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v2, "request_db_write_failed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1802
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Couldn\'t write to request database on server, will attempt to reupload later"

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    .line 1837
    .end local v16    # "response":Lokhttp3/Response;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 1838
    .local v11, "e":Ljava/io/IOException;
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto/16 :goto_1

    .line 1804
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v16    # "response":Lokhttp3/Response;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_4
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x19d

    if-ne v2, v3, :cond_7

    .line 1807
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1808
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/amplitude/api/DatabaseHelper;->removeEvent(J)V

    .line 1809
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/amplitude/api/DatabaseHelper;->removeIdentify(J)V

    .line 1814
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v2}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1816
    .local v13, "numEvents":I
    int-to-double v2, v13

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    .line 1817
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Request too large, will decrease size and attempt to reupload"

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v3, Lcom/amplitude/api/AmplitudeClient$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/amplitude/api/AmplitudeClient$15;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {v2, v3}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    .line 1840
    .end local v13    # "numEvents":I
    .end local v16    # "response":Lokhttp3/Response;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 1842
    .local v11, "e":Ljava/lang/AssertionError;
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Exception:"

    invoke-virtual {v2, v3, v4, v11}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1843
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto/16 :goto_1

    .line 1826
    .end local v11    # "e":Ljava/lang/AssertionError;
    .restart local v16    # "response":Lokhttp3/Response;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_7
    :try_start_7
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upload failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", will attempt to reupload later"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 1844
    .end local v16    # "response":Lokhttp3/Response;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 1846
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Exception:"

    invoke-virtual {v2, v3, v4, v11}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1847
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto/16 :goto_1
.end method

.method protected mergeEventsAndIdentifys(Ljava/util/List;Ljava/util/List;J)Landroid/util/Pair;
    .locals 19
    .param p3, "numEvents"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1670
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .local p2, "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 1671
    .local v8, "merged":Lorg/json/JSONArray;
    const-wide/16 v4, -0x1

    .line 1672
    .local v4, "maxEventId":J
    const-wide/16 v6, -0x1

    .line 1674
    .local v6, "maxIdentifyId":J
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    int-to-long v12, v11

    cmp-long v11, v12, p3

    if-gez v11, :cond_0

    .line 1675
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    .line 1676
    .local v9, "noEvents":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    .line 1681
    .local v10, "noIdentifys":Z
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    .line 1682
    sget-object v11, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v12, "com.amplitude.api.AmplitudeClient"

    const-string v13, "mergeEventsAndIdentifys: number of events and identifys less than expected by %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1684
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v16, p3, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    .line 1682
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    .end local v9    # "noEvents":Z
    .end local v10    # "noIdentifys":Z
    :cond_0
    new-instance v11, Landroid/util/Pair;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v11, v12, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11

    .line 1689
    .restart local v9    # "noEvents":Z
    .restart local v10    # "noIdentifys":Z
    :cond_1
    if-eqz v10, :cond_2

    .line 1690
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1691
    .local v2, "event":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1692
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1695
    .end local v2    # "event":Lorg/json/JSONObject;
    :cond_2
    if-eqz v9, :cond_3

    .line 1696
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1697
    .local v3, "identify":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1698
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1703
    .end local v3    # "identify":Lorg/json/JSONObject;
    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v12, "sequence_number"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    .line 1704
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v12, "sequence_number"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v11, 0x0

    .line 1705
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v14, "sequence_number"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-gez v11, :cond_5

    .line 1706
    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1707
    .restart local v2    # "event":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1708
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 1710
    .end local v2    # "event":Lorg/json/JSONObject;
    :cond_5
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1711
    .restart local v3    # "identify":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1712
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0
.end method

.method onEnterForeground(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 1176
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient$7;-><init>(Lcom/amplitude/api/AmplitudeClient;J)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 1186
    return-void
.end method

.method onExitForeground(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 1155
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient$6;-><init>(Lcom/amplitude/api/AmplitudeClient;J)V

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 1168
    return-void
.end method

.method refreshSessionTime(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 1123
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->inSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1127
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->setLastEventTime(J)V

    goto :goto_0
.end method

.method public regenerateDeviceId()Lcom/amplitude/api/AmplitudeClient;
    .locals 2

    .prologue
    .line 1541
    const-string v1, "regenerateDeviceId()"

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1556
    :goto_0
    return-object p0

    .line 1545
    :cond_0
    move-object v0, p0

    .line 1546
    .local v0, "client":Lcom/amplitude/api/AmplitudeClient;
    new-instance v1, Lcom/amplitude/api/AmplitudeClient$10;

    invoke-direct {v1, p0, v0}, Lcom/amplitude/api/AmplitudeClient$10;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1921
    if-nez p1, :cond_0

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method protected runOnLogThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1907
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    if-eq v0, v1, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    .line 1912
    :goto_0
    return-void

    .line 1910
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected saveEvent(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 9
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    .line 948
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "eventString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 950
    sget-object v4, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v5, "com.amplitude.api.AmplitudeClient"

    const-string v6, "Detected empty event string for event type %s, skipping"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-wide/16 v4, -0x1

    .line 983
    :goto_0
    return-wide v4

    .line 956
    :cond_0
    const-string v4, "$identify"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 957
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v4, v0}, Lcom/amplitude/api/DatabaseHelper;->addIdentify(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    .line 958
    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    invoke-virtual {p0, v4, v5}, Lcom/amplitude/api/AmplitudeClient;->setLastIdentifyId(J)V

    .line 964
    :goto_1
    iget v4, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    div-int/lit8 v4, v4, 0xa

    .line 965
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x14

    .line 964
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 968
    .local v1, "numEventsToRemove":I
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v4}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v4

    iget v6, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 969
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Lcom/amplitude/api/DatabaseHelper;->getNthEventId(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/DatabaseHelper;->removeEvents(J)V

    .line 971
    :cond_1
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v4}, Lcom/amplitude/api/DatabaseHelper;->getIdentifyCount()J

    move-result-wide v4

    iget v6, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 972
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Lcom/amplitude/api/DatabaseHelper;->getNthIdentifyId(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/DatabaseHelper;->removeIdentifys(J)V

    .line 975
    :cond_2
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v4}, Lcom/amplitude/api/DatabaseHelper;->getTotalEventCount()J

    move-result-wide v2

    .line 976
    .local v2, "totalEventCount":J
    iget v4, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    int-to-long v4, v4

    rem-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget v4, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 978
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->updateServer()V

    .line 983
    :goto_2
    const-string v4, "$identify"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    goto :goto_0

    .line 960
    .end local v1    # "numEventsToRemove":I
    .end local v2    # "totalEventCount":J
    :cond_3
    iget-object v4, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v4, v0}, Lcom/amplitude/api/DatabaseHelper;->addEvent(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    .line 961
    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    invoke-virtual {p0, v4, v5}, Lcom/amplitude/api/AmplitudeClient;->setLastEventId(J)V

    goto :goto_1

    .line 980
    .restart local v1    # "numEventsToRemove":I
    .restart local v2    # "totalEventCount":J
    :cond_4
    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    invoke-direct {p0, v4, v5}, Lcom/amplitude/api/AmplitudeClient;->updateServerLater(J)V

    goto :goto_2

    .line 983
    :cond_5
    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    goto/16 :goto_0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1511
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->getInvalidDeviceIds()Ljava/util/Set;

    move-result-object v1

    .line 1512
    .local v1, "invalidDeviceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "setDeviceId()"

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1513
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return-object p0

    .line 1517
    :cond_1
    move-object v0, p0

    .line 1518
    .local v0, "client":Lcom/amplitude/api/AmplitudeClient;
    new-instance v2, Lcom/amplitude/api/AmplitudeClient$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/amplitude/api/AmplitudeClient$9;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setEventMaxCount(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 0
    .param p1, "eventMaxCount"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    .line 408
    return-object p0
.end method

.method public setEventUploadMaxBatchSize(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 0
    .param p1, "eventUploadMaxBatchSize"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    .line 393
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    .line 394
    return-object p0
.end method

.method public setEventUploadPeriodMillis(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 2
    .param p1, "eventUploadPeriodMillis"    # I

    .prologue
    .line 420
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    .line 421
    return-object p0
.end method

.method public setEventUploadThreshold(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 0
    .param p1, "eventUploadThreshold"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    .line 381
    return-object p0
.end method

.method public setFlushEventsOnClose(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0
    .param p1, "flushEventsOnClose"    # Z

    .prologue
    .line 530
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->flushEventsOnClose:Z

    .line 531
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "groupType"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1372
    const-string v0, "setGroup()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    const/4 v5, 0x0

    .line 1377
    .local v5, "group":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1382
    :goto_1
    new-instance v0, Lcom/amplitude/api/Identify;

    invoke-direct {v0}, Lcom/amplitude/api/Identify;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/amplitude/api/Identify;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/api/Identify;

    move-result-object v10

    .line 1383
    .local v10, "identify":Lcom/amplitude/api/Identify;
    const-string v1, "$identify"

    iget-object v4, v10, Lcom/amplitude/api/Identify;->userPropertiesOperations:Lorg/json/JSONObject;

    .line 1384
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getCurrentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, v2

    .line 1383
    invoke-virtual/range {v0 .. v8}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    goto :goto_0

    .line 1379
    .end local v10    # "identify":Lcom/amplitude/api/Identify;
    :catch_0
    move-exception v9

    .line 1380
    .local v9, "e":Lorg/json/JSONException;
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setLastEventId(J)V
    .locals 3
    .param p1, "eventId"    # J

    .prologue
    .line 1020
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    .line 1021
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "last_event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 1022
    return-void
.end method

.method setLastEventTime(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 1010
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    .line 1011
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "last_event_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 1012
    return-void
.end method

.method setLastIdentifyId(J)V
    .locals 3
    .param p1, "identifyId"    # J

    .prologue
    .line 1030
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    .line 1031
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "last_identify_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 1032
    return-void
.end method

.method public setLogLevel(I)Lcom/amplitude/api/AmplitudeClient;
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 501
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/AmplitudeLog;->setLogLevel(I)Lcom/amplitude/api/AmplitudeLog;

    .line 502
    return-object p0
.end method

.method public setMinTimeBetweenSessionsMillis(J)Lcom/amplitude/api/AmplitudeClient;
    .locals 1
    .param p1, "minTimeBetweenSessionsMillis"    # J

    .prologue
    .line 431
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    .line 432
    return-object p0
.end method

.method public setOffline(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0
    .param p1, "offline"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    .line 516
    if-nez p1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->uploadEvents()V

    .line 520
    :cond_0
    return-object p0
.end method

.method public setOptOut(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 2
    .param p1, "optOut"    # Z

    .prologue
    .line 455
    const-string v1, "setOptOut()"

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    :goto_0
    return-object p0

    .line 459
    :cond_0
    move-object v0, p0

    .line 460
    .local v0, "client":Lcom/amplitude/api/AmplitudeClient;
    new-instance v1, Lcom/amplitude/api/AmplitudeClient$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/amplitude/api/AmplitudeClient$4;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Z)V

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method setPreviousSessionId(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 1049
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    .line 1050
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "previous_session_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J

    .line 1051
    return-void
.end method

.method public setSessionTimeoutMillis(J)Lcom/amplitude/api/AmplitudeClient;
    .locals 1
    .param p1, "sessionTimeoutMillis"    # J

    .prologue
    .line 444
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    .line 445
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1484
    const-string v1, "setUserId()"

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1499
    :goto_0
    return-object p0

    .line 1488
    :cond_0
    move-object v0, p0

    .line 1489
    .local v0, "client":Lcom/amplitude/api/AmplitudeClient;
    new-instance v1, Lcom/amplitude/api/AmplitudeClient$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/amplitude/api/AmplitudeClient$8;-><init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setUserProperties(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "userProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 1293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "setUserProperties"

    .line 1294
    invoke-virtual {p0, v5}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1300
    .local v4, "sanitized":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1304
    new-instance v1, Lcom/amplitude/api/Identify;

    invoke-direct {v1}, Lcom/amplitude/api/Identify;-><init>()V

    .line 1305
    .local v1, "identify":Lcom/amplitude/api/Identify;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1306
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1307
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1309
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/amplitude/api/Identify;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/amplitude/api/Identify;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1314
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->identify(Lcom/amplitude/api/Identify;)V

    goto :goto_0
.end method

.method public setUserProperties(Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "userProperties"    # Lorg/json/JSONObject;
    .param p2, "replace"    # Z

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;)V

    .line 1281
    return-void
.end method

.method startNewSessionIfNeeded(J)Z
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1060
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->inSession()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->isWithinMinTimeBetweenSessions(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    .line 1085
    :goto_0
    return v0

    .line 1067
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    move v0, v1

    .line 1068
    goto :goto_0

    .line 1072
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->isWithinMinTimeBetweenSessions(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1073
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1074
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    move v0, v1

    .line 1075
    goto :goto_0

    .line 1079
    :cond_2
    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    invoke-direct {p0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->setSessionId(J)V

    .line 1080
    invoke-virtual {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    goto :goto_0

    .line 1084
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    move v0, v1

    .line 1085
    goto :goto_0
.end method

.method public trackSessionEvents(Z)Lcom/amplitude/api/AmplitudeClient;
    .locals 0
    .param p1, "trackingSessionEvents"    # Z

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->trackingSessionEvents:Z

    .line 545
    return-object p0
.end method

.method public truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 1463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 1464
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1463
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1464
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public truncate(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1439
    if-nez p1, :cond_1

    .line 1440
    new-instance p1, Lorg/json/JSONArray;

    .end local p1    # "array":Lorg/json/JSONArray;
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1453
    :cond_0
    return-object p1

    .line 1443
    .restart local p1    # "array":Lorg/json/JSONArray;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1444
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1445
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1446
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 1443
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1447
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1448
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1449
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1450
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method public truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 1396
    if-nez p1, :cond_1

    .line 1397
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "object":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1427
    :cond_0
    :goto_0
    return-object p1

    .line 1400
    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_2

    .line 1401
    sget-object v4, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v5, "com.amplitude.api.AmplitudeClient"

    const-string v6, "Warning: too many properties (more than 1000), ignoring"

    invoke-virtual {v4, v5, v6}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "object":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 1405
    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1406
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1407
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1410
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1412
    .local v3, "value":Ljava/lang/Object;
    const-string v4, "$receipt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "$receiptSig"

    .line 1413
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1414
    :cond_4
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1422
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v5, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1415
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1416
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/amplitude/api/AmplitudeClient;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1417
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1418
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1419
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1420
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/amplitude/api/AmplitudeClient;->truncate(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected updateServer()V
    .locals 1

    .prologue
    .line 1596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->updateServer(Z)V

    .line 1597
    return-void
.end method

.method protected updateServer(Z)V
    .locals 24
    .param p1, "limit"    # Z

    .prologue
    .line 1606
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    if-eqz v5, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1611
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v5}, Lcom/amplitude/api/DatabaseHelper;->getTotalEventCount()J

    move-result-wide v18

    .line 1613
    .local v18, "totalEventCount":J
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amplitude/api/AmplitudeClient;->backoffUploadBatchSize:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    :goto_1
    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1618
    .local v12, "batchSize":J
    const-wide/16 v20, 0x0

    cmp-long v5, v12, v20

    if-gtz v5, :cond_3

    .line 1619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1613
    .end local v12    # "batchSize":J
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    goto :goto_1

    .line 1624
    .restart local v12    # "batchSize":J
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1, v12, v13}, Lcom/amplitude/api/DatabaseHelper;->getEvents(JJ)Ljava/util/List;

    move-result-object v14

    .line 1625
    .local v14, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1, v12, v13}, Lcom/amplitude/api/DatabaseHelper;->getIdentifys(JJ)Ljava/util/List;

    move-result-object v15

    .line 1627
    .local v15, "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/amplitude/api/AmplitudeClient;->mergeEventsAndIdentifys(Ljava/util/List;Ljava/util/List;J)Landroid/util/Pair;

    move-result-object v16

    .line 1629
    .local v16, "merged":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;Lorg/json/JSONArray;>;"
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lorg/json/JSONArray;

    .line 1630
    .local v17, "mergedEvents":Lorg/json/JSONArray;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 1631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amplitude/api/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1644
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v15    # "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v16    # "merged":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;Lorg/json/JSONArray;>;"
    .end local v17    # "mergedEvents":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 1645
    .local v4, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1646
    sget-object v5, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1634
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v15    # "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v16    # "merged":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;Lorg/json/JSONArray;>;"
    .restart local v17    # "mergedEvents":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1635
    .local v8, "maxEventId":J
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1636
    .local v10, "maxIdentifyId":J
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1638
    .local v7, "mergedEventsString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    move-object/from16 v20, v0

    new-instance v5, Lcom/amplitude/api/AmplitudeClient$13;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/amplitude/api/AmplitudeClient$13;-><init>(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;JJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amplitude/api/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1649
    .end local v7    # "mergedEventsString":Ljava/lang/String;
    .end local v8    # "maxEventId":J
    .end local v10    # "maxIdentifyId":J
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v15    # "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v16    # "merged":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;Lorg/json/JSONArray;>;"
    .end local v17    # "mergedEvents":Lorg/json/JSONArray;
    :catch_1
    move-exception v4

    .line 1650
    .local v4, "e":Lcom/amplitude/api/CursorWindowAllocationException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1651
    sget-object v5, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.AmplitudeClient"

    const-string v20, "Caught Cursor window exception during event upload, deferring upload: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 1653
    invoke-virtual {v4}, Lcom/amplitude/api/CursorWindowAllocationException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 1651
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public uploadEvents()V
    .locals 2

    .prologue
    .line 1563
    const-string v0, "uploadEvents()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$11;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$11;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public useAdvertisingIdForDeviceId()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    .line 328
    return-object p0
.end method

.method useForegroundTracking()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->usingForegroundTracking:Z

    .line 553
    return-void
.end method

.method protected validateLogEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-static {p1}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.AmplitudeClient"

    const-string v2, "Argument eventType cannot be null or blank in logEvent()"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v0, 0x0

    .line 798
    :goto_0
    return v0

    :cond_0
    const-string v0, "logEvent()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
