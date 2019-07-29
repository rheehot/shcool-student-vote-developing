.class public Lcom/google/appinventor/components/runtime/Ev3TouchSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3TouchSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a touch sensor on a LEGO MINDSTORMS EV3 robot."
    docUri = "internet-of-things/lego-mindstorms#ev3-touch-sensor"
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_MODE_TOUCH:I = 0x0

.field private static final SENSOR_MODE_TOUCH_STRING:Ljava/lang/String; = "touch"

.field private static final SENSOR_TYPE:I = 0x10

.field private static final SENSOR_VALUE_THRESHOLD:I = 0x32


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private mode:I

.field private modeString:Ljava/lang/String;

.field private pressedEventEnabled:Z

.field private releasedEventEnabled:Z

.field private savedPressedValue:I

.field private final sensorValueChecker:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "Ev3TouchSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 42
    const-string v0, "touch"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->modeString:Ljava/lang/String;

    .line 43
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->mode:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->savedPressedValue:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->eventHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->PressedEventEnabled(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->ReleasedEventEnabled(Z)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->getPressedValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->savedPressedValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->savedPressedValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->releasedEventEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->pressedEventEnabled:Z

    return v0
.end method

.method private getPressedValue(Ljava/lang/String;)I
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->sensorPortNumber:I

    const/16 v4, 0x10

    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->mode:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->readInputPercentage(Ljava/lang/String;IIII)I

    move-result v6

    .line 165
    .local v6, "value":I
    return v6
.end method


# virtual methods
.method public IsPressed()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the touch sensor is pressed."
    .end annotation

    .prologue
    .line 95
    const-string v0, "IsPressed"

    .line 96
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->getPressedValue(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Pressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the touch sensor is pressed."
    .end annotation

    .prologue
    .line 126
    const-string v0, "Pressed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public PressedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->pressedEventEnabled:Z

    .line 108
    return-void
.end method

.method public PressedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Released event should fire when the touch sensor is pressed."
    .end annotation

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->pressedEventEnabled:Z

    return v0
.end method

.method public Released()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the touch sensor is pressed."
    .end annotation

    .prologue
    .line 156
    const-string v0, "Released"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public ReleasedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->releasedEventEnabled:Z

    .line 149
    return-void
.end method

.method public ReleasedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Released event should fire when the touch sensor is released."
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->releasedEventEnabled:Z

    return v0
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 173
    return-void
.end method
