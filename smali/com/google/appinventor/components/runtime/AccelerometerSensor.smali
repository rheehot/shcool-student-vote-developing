.class public Lcom/google/appinventor/components/runtime/AccelerometerSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AccelerometerSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that can detect shaking and measure acceleration approximately in three dimensions using SI units (m/s<sup>2</sup>).  The components are: <ul>\n<li> <strong>xAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when the phone is tilted to the right (i.e.,      its left side is raised), and negative when the phone is tilted      to the left (i.e., its right size is raised).</li>\n <li> <strong>yAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when its bottom is raised, and negative when      its top is raised. </li>\n <li> <strong>zAccel</strong>: Equal to -9.8 (earth\'s gravity in meters per      second per second when the device is at rest parallel to the ground      with the display facing up,      0 when perpendicular to the ground, and +9.8 when facing down.       The value can also be affected by accelerating it with or against      gravity. </li></ul>"
    docUri = "sensors/accelerometer"
    iconName = "images/accelerometersensor.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccelerometerSensor"

.field private static final SENSOR_CACHE_SIZE:I = 0xa

.field private static final moderateShakeThreshold:D = 13.0

.field private static final strongShakeThreshold:D = 20.0

.field private static final weakShakeThreshold:D = 5.0


# instance fields
.field private final X_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Y_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Z_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accuracy:I

.field private final androidUIHandler:Landroid/os/Handler;

.field private volatile deviceDefaultOrientation:I

.field private enabled:Z

.field private legacyMode:Z

.field private minimumInterval:I

.field private final resources:Landroid/content/res/Resources;

.field private sensitivity:I

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private timeLastShook:J

.field private final windowManager:Landroid/view/WindowManager;

.field private xAccel:F

.field private yAccel:F

.field private zAccel:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 139
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 140
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    .line 141
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    .line 142
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    .line 145
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 146
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->MinimumInterval(I)V

    .line 147
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity(I)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    .prologue
    .line 80
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AccelerometerSensor;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    return p1
.end method

.method private addToSensorCache(Ljava/util/Queue;F)V
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 383
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 385
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method private isShaking(Ljava/util/Queue;F)Z
    .locals 12
    .param p2, "currentValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)Z"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const-wide/high16 v10, 0x402a000000000000L    # 13.0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "average":F
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 396
    .local v1, "value":F
    add-float/2addr v0, v1

    .line 397
    goto :goto_0

    .line 399
    .end local v1    # "value":F
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 401
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 402
    sub-float v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpl-double v2, v6, v8

    if-lez v2, :cond_2

    move v2, v3

    :goto_1
    move v3, v2

    .line 407
    :cond_1
    :goto_2
    return v3

    :cond_2
    move v2, v4

    .line 402
    goto :goto_1

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 404
    sub-float v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpl-double v2, v6, v10

    if-lez v2, :cond_4

    sub-float v2, v0, p2

    .line 405
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v6, v8

    if-ltz v2, :cond_1

    :cond_4
    move v3, v4

    goto :goto_2

    .line 407
    :cond_5
    sub-float v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_6

    sub-float v2, v0, p2

    .line 408
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v6, v10

    if-ltz v2, :cond_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method private startListening()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;-><init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 312
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 317
    return-void
.end method


# virtual methods
.method public AccelerationChanged(FFF)V
    .locals 6
    .param p1, "xAccel"    # F
    .param p2, "yAccel"    # F
    .param p3, "zAccel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 222
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 223
    iput p2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 224
    iput p3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 226
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 227
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 228
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 234
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    iget v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 236
    :cond_1
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    .line 237
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Shaking()V

    .line 240
    :cond_2
    const-string v2, "AccelerationChanged"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 279
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 280
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 335
    if-eqz p1, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    return v0
.end method

.method public LegacyMode(Z)V
    .locals 0
    .param p1, "legacyMode"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prior to the release that added this property the AccelerometerSensor component passed through sensor values directly as received from the Android system. However these values do not compensate for tablets that default to Landscape mode, requiring the MIT App Inventor programmer to compensate. However compensating would result in incorrect results in Portrait mode devices such as phones. We now detect Landscape mode tablets and perform the compensation. However if your project is already compensating for the change, you will now get incorrect results. Although our preferred solution is for you to update your project, you can also just set this property to \u201ctrue\u201d and our compensation code will be deactivated. Note: We recommend that you update your project as we may remove this property in a future release."
        userVisible = false
    .end annotation

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 430
    return-void
.end method

.method public LegacyMode()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    return v0
.end method

.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between phone shakes"
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 176
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    .line 177
    return-void
.end method

.method public Sensitivity()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how sensitive the accelerometer is. The choices are: 1 = weak, 2 = moderate,  3 = strong."
    .end annotation

    .prologue
    .line 193
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:I

    return v0
.end method

.method public Sensitivity(I)V
    .locals 6
    .param p1, "sensitivity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "accelerometer_sensitivity"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 209
    if-eq p1, v3, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 210
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:I

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Sensitivity"

    const/16 v2, 0x76d

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 212
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Shaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 267
    const-string v0, "Shaking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public XAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 351
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    return v0
.end method

.method public YAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 363
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    return v0
.end method

.method public ZAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 375
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    return v0
.end method

.method public getDeviceDefaultOrientation()I
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 244
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 245
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 247
    .local v1, "rotation":I
    const-string v4, "AccelerometerSensor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v4, "AccelerometerSensor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config.orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v2, :cond_3

    :cond_1
    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_4

    .line 258
    :cond_3
    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 460
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 487
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 469
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 439
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 440
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 443
    .local v0, "values":[F
    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    if-nez v1, :cond_1

    .line 445
    aget v1, v0, v3

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 446
    aget v1, v0, v2

    neg-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 451
    :goto_0
    aget v1, v0, v4

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 452
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accuracy:I

    .line 453
    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->AccelerationChanged(FFF)V

    .line 455
    .end local v0    # "values":[F
    :cond_0
    return-void

    .line 448
    .restart local v0    # "values":[F
    :cond_1
    aget v1, v0, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 449
    aget v1, v0, v3

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 478
    :cond_0
    return-void
.end method
