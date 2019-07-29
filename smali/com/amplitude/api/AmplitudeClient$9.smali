.class Lcom/amplitude/api/AmplitudeClient$9;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->setDeviceId(Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$client:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$9;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iput-object p3, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$client:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    .line 1525
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$9;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->dbHelper:Lcom/amplitude/api/DatabaseHelper;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient$9;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method
