.class Lcom/amplitude/api/AmplitudeClient$13;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->updateServer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$maxEventId:J

.field final synthetic val$maxIdentifyId:J

.field final synthetic val$mergedEventsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$13;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient$13;->val$mergedEventsString:Ljava/lang/String;

    iput-wide p3, p0, Lcom/amplitude/api/AmplitudeClient$13;->val$maxEventId:J

    iput-wide p5, p0, Lcom/amplitude/api/AmplitudeClient$13;->val$maxIdentifyId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$13;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$13;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v2, v0, Lcom/amplitude/api/AmplitudeClient;->httpClient:Lokhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/amplitude/api/AmplitudeClient$13;->val$mergedEventsString:Ljava/lang/String;

    iget-wide v4, p0, Lcom/amplitude/api/AmplitudeClient$13;->val$maxEventId:J

    iget-wide v6, p0, Lcom/amplitude/api/AmplitudeClient$13;->val$maxIdentifyId:J

    invoke-virtual/range {v1 .. v7}, Lcom/amplitude/api/AmplitudeClient;->makeEventUploadPostRequest(Lokhttp3/OkHttpClient;Ljava/lang/String;JJ)V

    .line 1642
    return-void
.end method
