.class Lcom/amplitude/api/AmplitudeClient$3;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->disableLocationListening()Lcom/amplitude/api/AmplitudeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amplitude/api/AmplitudeClient;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/amplitude/api/AmplitudeClient;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$400(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize before acting on location listening."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$3;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$400(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amplitude/api/DeviceInfo;->setLocationListening(Z)V

    .line 366
    return-void
.end method
