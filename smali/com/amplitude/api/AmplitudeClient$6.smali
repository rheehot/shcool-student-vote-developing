.class Lcom/amplitude/api/AmplitudeClient$6;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->onExitForeground(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$6;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iput-wide p2, p0, Lcom/amplitude/api/AmplitudeClient$6;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$6;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$6;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient$6;->val$timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->refreshSessionTime(J)V

    .line 1162
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$6;->this$0:Lcom/amplitude/api/AmplitudeClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->access$502(Lcom/amplitude/api/AmplitudeClient;Z)Z

    .line 1163
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$6;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$600(Lcom/amplitude/api/AmplitudeClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$6;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->updateServer()V

    goto :goto_0
.end method
