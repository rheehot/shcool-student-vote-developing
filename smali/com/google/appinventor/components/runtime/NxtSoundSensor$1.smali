.class Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;
.super Ljava/lang/Object;
.source "NxtSoundSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtSoundSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$000(Lcom/google/appinventor/components/runtime/NxtSoundSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 62
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$100(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    .line 72
    .local v0, "currentState":Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$300(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 73
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$400(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->BelowRange()V

    .line 76
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$500(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->WithinRange()V

    .line 79
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$600(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->AboveRange()V

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$302(Lcom/google/appinventor/components/runtime/NxtSoundSensor;Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;)Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    .line 87
    .end local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
    .end local v1    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$700(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$900(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$800(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :cond_4
    return-void

    .line 66
    .restart local v1    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtSoundSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor;->access$200(Lcom/google/appinventor/components/runtime/NxtSoundSensor;)I

    move-result v3

    if-le v2, v3, :cond_6

    .line 67
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    .restart local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
    goto :goto_0

    .line 69
    .end local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
    :cond_6
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    .restart local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
    goto :goto_0
.end method
