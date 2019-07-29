.class Lcom/amplitude/api/AmplitudeClient$14;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->makeEventUploadPostRequest(Lokhttp3/OkHttpClient;Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$maxEventId:J

.field final synthetic val$maxIdentifyId:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 1776
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-wide p2, p0, Lcom/amplitude/api/AmplitudeClient$14;->val$maxEventId:J

    iput-wide p4, p0, Lcom/amplitude/api/AmplitudeClient$14;->val$maxIdentifyId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1779
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->val$maxEventId:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient$14;->val$maxEventId:J

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->removeEvents(J)V

    .line 1780
    :cond_0
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->val$maxIdentifyId:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient$14;->val$maxIdentifyId:J

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/DatabaseHelper;->removeIdentifys(J)V

    .line 1781
    :cond_1
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1782
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getTotalEventCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v2}, Lcom/amplitude/api/AmplitudeClient;->access$800(Lcom/amplitude/api/AmplitudeClient;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1783
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$14$1;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$14$1;-><init>(Lcom/amplitude/api/AmplitudeClient$14;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    .line 1794
    :goto_0
    return-void

    .line 1791
    :cond_2
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v0, v4}, Lcom/amplitude/api/AmplitudeClient;->access$902(Lcom/amplitude/api/AmplitudeClient;Z)Z

    .line 1792
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$1100(Lcom/amplitude/api/AmplitudeClient;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$1002(Lcom/amplitude/api/AmplitudeClient;I)I

    goto :goto_0
.end method
