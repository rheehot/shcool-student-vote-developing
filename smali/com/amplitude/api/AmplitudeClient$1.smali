.class Lcom/amplitude/api/AmplitudeClient$1;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$client:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$client:Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 234
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-boolean v2, v2, Lcom/amplitude/api/AmplitudeClient;->initialized:Z

    if-nez v2, :cond_2

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v2, v2, Lcom/amplitude/api/AmplitudeClient;->instanceName:Ljava/lang/String;

    const-string v5, "$default_instance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/amplitude/api/AmplitudeClient;->upgradePrefs(Landroid/content/Context;)Z

    .line 239
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/amplitude/api/AmplitudeClient;->upgradeSharedPrefsToDB(Landroid/content/Context;)Z

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    new-instance v5, Lokhttp3/OkHttpClient;

    invoke-direct {v5}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v5, v2, Lcom/amplitude/api/AmplitudeClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 242
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v2}, Lcom/amplitude/api/AmplitudeClient;->access$000(Lcom/amplitude/api/AmplitudeClient;)V

    .line 244
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$userId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$userId:Ljava/lang/String;

    iput-object v5, v2, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v2, v2, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v5, "user_id"

    iget-object v6, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v2, v2, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v5, "opt_out"

    invoke-virtual {v2, v5}, Lcom/amplitude/api/DatabaseHelper;->getLongValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 251
    .local v1, "optOutLong":Ljava/lang/Long;
    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/amplitude/api/AmplitudeClient;->access$102(Lcom/amplitude/api/AmplitudeClient;Z)Z

    .line 254
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const-string v6, "previous_session_id"

    const-wide/16 v8, -0x1

    invoke-static {v5, v6, v8, v9}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    .line 255
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-wide v6, v2, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    cmp-long v2, v6, v10

    if-ltz v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-wide v6, v5, Lcom/amplitude/api/AmplitudeClient;->previousSessionId:J

    iput-wide v6, v2, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const-string v6, "sequence_number"

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v8, v9}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/amplitude/api/AmplitudeClient;->sequenceNumber:J

    .line 261
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const-string v6, "last_event_id"

    const-wide/16 v8, -0x1

    invoke-static {v5, v6, v8, v9}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/amplitude/api/AmplitudeClient;->lastEventId:J

    .line 262
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const-string v6, "last_identify_id"

    const-wide/16 v8, -0x1

    invoke-static {v5, v6, v8, v9}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/amplitude/api/AmplitudeClient;->lastIdentifyId:J

    .line 263
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const-string v6, "last_event_time"

    const-wide/16 v8, -0x1

    invoke-static {v5, v6, v8, v9}, Lcom/amplitude/api/AmplitudeClient;->access$200(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/amplitude/api/AmplitudeClient;->lastEventTime:J

    .line 265
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/amplitude/api/AmplitudeClient;->initialized:Z

    .line 274
    .end local v1    # "optOutLong":Ljava/lang/Long;
    :cond_2
    :goto_2
    return-void

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient$1;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v5, v5, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lcom/amplitude/api/DatabaseHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amplitude/api/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Lcom/amplitude/api/CursorWindowAllocationException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeClient;->access$300()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v2

    const-string v5, "com.amplitude.api.AmplitudeClient"

    const-string v6, "Failed to initialize Amplitude SDK due to: %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 269
    invoke-virtual {v0}, Lcom/amplitude/api/CursorWindowAllocationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 268
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$1;->val$client:Lcom/amplitude/api/AmplitudeClient;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    goto :goto_2

    .end local v0    # "e":Lcom/amplitude/api/CursorWindowAllocationException;
    .restart local v1    # "optOutLong":Ljava/lang/Long;
    :cond_4
    move v2, v4

    .line 251
    goto/16 :goto_1
.end method
