.class Lcom/amplitude/api/AmplitudeClient$12;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient;->updateServerLater(J)V
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
    .line 1583
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$12;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$12;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-static {v0}, Lcom/amplitude/api/AmplitudeClient;->access$700(Lcom/amplitude/api/AmplitudeClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1587
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$12;->this$0:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0}, Lcom/amplitude/api/AmplitudeClient;->updateServer()V

    .line 1588
    return-void
.end method
