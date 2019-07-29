.class public Lcom/google/appinventor/components/runtime/Ev3Motors;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3Motors.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides both high- and low-level interfaces to a LEGO MINDSTORMS EV3 robot, with functions that can control the motors."
    docUri = "internet-of-things/lego-mindstorms#ev3-motors"
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_MOTOR_PORTS:Ljava/lang/String; = "ABC"

.field private static final DEFAULT_WHEEL_DIAMETER:D = 4.32

.field private static final DELAY_MILLISECONDS:I = 0x32


# instance fields
.field private directionReversed:Z

.field private eventHandler:Landroid/os/Handler;

.field private ifReset:Z

.field private motorPortBitField:I

.field private previousValue:I

.field private regulationEnabled:Z

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private stopBeforeDisconnect:Z

.field private tachoCountChangedEventEnabled:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const-wide v4, 0x401147ae147ae148L    # 4.32

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const-string v0, "Ev3Motors"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 43
    iput v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    .line 44
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    .line 45
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    .line 46
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    .line 47
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    .line 48
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    .line 51
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    .line 52
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3Motors$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->sensorValueChecker:Ljava/lang/Runnable;

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    const-string v0, "ABC"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->MotorPorts(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->StopBeforeDisconnect(Z)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->EnableSpeedRegulation(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->ReverseDirection(Z)V

    .line 87
    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->WheelDiameter(D)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChangedEventEnabled(Z)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 38
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3Motors;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Ev3Motors;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 38
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearOutputCount(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v1, 0x0

    .line 707
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 710
    :cond_1
    const/16 v0, -0x4e

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 715
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 716
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 710
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 717
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 718
    return-void
.end method

.method private getOutputCount(Ljava/lang/String;II)I
    .locals 12
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 660
    if-ltz p2, :cond_0

    if-gt p2, v5, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 664
    :cond_1
    add-int/lit8 v0, p3, -0x1

    xor-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p3, v0, 0x1

    .line 667
    packed-switch p3, :pswitch_data_0

    .line 685
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 669
    :pswitch_1
    const/4 v7, 0x0

    .line 688
    .local v7, "portNumber":I
    :goto_0
    const/16 v0, -0x4d

    const/4 v2, 0x4

    const-string v4, "ccg"

    new-array v5, v5, [Ljava/lang/Object;

    int-to-byte v10, p2

    .line 693
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    int-to-byte v10, v7

    .line 694
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v1

    .line 695
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v11

    .line 688
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 696
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 698
    .local v8, "reply":[B
    if-eqz v8, :cond_2

    array-length v0, v8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_2

    .line 699
    const-string v0, "xi"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 700
    .local v9, "values":[Ljava/lang/Object;
    aget-object v0, v9, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 702
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_2
    return v3

    .line 673
    .end local v6    # "command":[B
    .end local v7    # "portNumber":I
    .end local v8    # "reply":[B
    :pswitch_2
    const/4 v7, 0x1

    .line 674
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 677
    .end local v7    # "portNumber":I
    :pswitch_3
    const/4 v7, 0x2

    .line 678
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 681
    .end local v7    # "portNumber":I
    :pswitch_4
    const/4 v7, 0x3

    .line 682
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private isOneShotInteger(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 440
    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    xor-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private outputStepPower(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 487
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 490
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 492
    const/16 v0, -0x54

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 497
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 498
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 499
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 500
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 501
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 502
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 503
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 492
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 504
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 505
    return-void

    .line 502
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputStepSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 508
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 511
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 513
    const/16 v0, -0x52

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 518
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 519
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 520
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 521
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 522
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 523
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 524
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 513
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 525
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 526
    return-void

    .line 523
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputStepSync(Ljava/lang/String;IIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "turnRatio"    # I
    .param p6, "tachoCounts"    # I
    .param p7, "brake"    # Z

    .prologue
    .line 529
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    const/16 v0, -0xc8

    if-lt p5, v0, :cond_0

    const/16 v0, 0xc8

    if-le p5, v0, :cond_1

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 532
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 534
    const/16 v0, -0x50

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "cccccc"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 539
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 540
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 541
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    int-to-short v8, p5

    .line 542
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 543
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x5

    if-eqz p7, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 544
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 534
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 545
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 546
    return-void

    .line 543
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimePower(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 549
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 552
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 554
    const/16 v0, -0x53

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 559
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 560
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 561
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 562
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 563
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 564
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 565
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 554
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 566
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 567
    return-void

    .line 564
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 570
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 573
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 575
    const/16 v0, -0x51

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 580
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 581
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 582
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 583
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 584
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 585
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 586
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 575
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 587
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 588
    return-void

    .line 585
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimeSync(Ljava/lang/String;IIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "turnRatio"    # I
    .param p6, "milliseconds"    # I
    .param p7, "brake"    # Z

    .prologue
    .line 591
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-gez p6, :cond_1

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 594
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 596
    const/16 v0, -0x4f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "cccccc"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 601
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 602
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 603
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    int-to-short v8, p5

    .line 604
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 605
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x5

    if-eqz p7, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 606
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 596
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 607
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 608
    return-void

    .line 605
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private resetOutput(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 444
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 446
    :cond_1
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    .line 447
    const/16 v0, -0x5e

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 452
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p3

    .line 453
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    .line 447
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 454
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 455
    return-void
.end method

.method private roundValue(III)I
    .locals 0
    .param p1, "value"    # I
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 436
    if-ge p1, p2, :cond_0

    .end local p2    # "minimum":I
    :goto_0
    return p2

    .restart local p2    # "minimum":I
    :cond_0
    if-le p1, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method private setOutputDirection(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "direction"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 611
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_0

    if-le p4, v3, :cond_1

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 614
    :cond_1
    const/16 v0, -0x59

    const-string v4, "ccc"

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 619
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p3

    .line 620
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    int-to-byte v3, p4

    .line 621
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 614
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 622
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 623
    return-void
.end method

.method private setOutputPower(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 643
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 646
    :cond_1
    const/16 v0, -0x64

    const/16 v2, 0x64

    invoke-direct {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 648
    const/16 v0, -0x5c

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 653
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 654
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    int-to-byte v3, p4

    .line 655
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 648
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 656
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 657
    return-void
.end method

.method private setOutputSpeed(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 626
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 629
    :cond_1
    const/16 v0, -0x64

    const/16 v2, 0x64

    invoke-direct {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 631
    const/16 v0, -0x5b

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 636
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 637
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    int-to-byte v3, p4

    .line 638
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 631
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 639
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 640
    return-void
.end method

.method private startOutput(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v1, 0x0

    .line 458
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 461
    :cond_1
    const/16 v0, -0x5a

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 466
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 467
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 461
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 468
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 469
    return-void
.end method

.method private stopOutput(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "useBrake"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 475
    :cond_1
    const/16 v0, -0x5d

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v3, p2

    .line 480
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    int-to-byte v3, p3

    .line 481
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    .line 482
    :goto_0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    .line 475
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 483
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 484
    return-void

    .end local v6    # "command":[B
    :cond_2
    move v2, v1

    .line 481
    goto :goto_0
.end method


# virtual methods
.method public EnableSpeedRegulation(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    .line 169
    return-void
.end method

.method public EnableSpeedRegulation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The robot adjusts the power to maintain the speed if speed regulation is enabled."
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    return v0
.end method

.method public GetTachoCount()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current tacho count."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 418
    const-string v1, "GetTachoCount"

    .line 420
    .local v1, "functionName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 423
    :goto_0
    return v2

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public MotorPorts()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that the motors are connected to. The ports are specified by a sequence of port letters."
        userVisible = false
    .end annotation

    .prologue
    .line 98
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->bitFieldToMotorPortLetters(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MotorPorts(Ljava/lang/String;)V
    .locals 6
    .param p1, "motorPortLetters"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ABC"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 108
    const-string v1, "MotorPorts"

    .line 110
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortLettersToBitField(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc20

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResetTachoCount()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the current tacho count to zero."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 405
    const-string v1, "ResetTachoCount"

    .line 407
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->clearOutputCount(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ReverseDirection(Z)V
    .locals 7
    .param p1, "reversed"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 143
    const-string v1, "ReverseDirection"

    .line 145
    .local v1, "functionName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 146
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 145
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, p0, v1, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public ReverseDirection()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "It specifies if the direction of the motors is reversed."
    .end annotation

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    return v0
.end method

.method public RotateInDistance(IDZ)V
    .locals 12
    .param p1, "power"    # I
    .param p2, "distance"    # D
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a distance."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 275
    const-string v1, "RotateInDistance"

    .line 276
    .local v1, "functionName":Ljava/lang/String;
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v6, v2

    .line 279
    .local v6, "tachoCounts":I
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 280
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v9

    .line 284
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateInDuration(IIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "milliseconds"    # I
    .param p3, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a period of time."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 259
    const-string v1, "RotateInDuration"

    .line 261
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimePower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v9

    .line 266
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateInTachoCounts(IIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "tachoCounts"    # I
    .param p3, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a number of tacho counts."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 243
    const-string v1, "RotateInTachoCounts"

    .line 245
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v9

    .line 250
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateIndefinitely(I)V
    .locals 6
    .param p1, "power"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 225
    const-string v1, "RotateIndefinitely"

    .line 227
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputPower(Ljava/lang/String;III)V

    .line 232
    :goto_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->startOutput(Ljava/lang/String;II)V

    .line 236
    :goto_1
    return-void

    .line 230
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public RotateSyncInDistance(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "distance"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed for a distance in cm."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 314
    const-string v1, "RotateSyncInDuration"

    .line 315
    .local v1, "functionName":Ljava/lang/String;
    int-to-double v2, p2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v6, v2

    .line 319
    .local v6, "tachoCounts":I
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 320
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v9

    .line 327
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncInDuration(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "milliseconds"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a period of time."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 336
    const-string v1, "RotateSyncInDuration"

    .line 340
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 341
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v9

    .line 348
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncInTachoCounts(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "tachoCounts"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a number of tacho counts."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 357
    const-string v1, "RotateSyncInTachoCounts"

    .line 361
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 362
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v9

    .line 369
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncIndefinitely(II)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "turnRatio"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors at the same speed."
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 293
    const-string v1, "RotateSyncIndefinitely"

    .line 297
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 298
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v8

    .line 305
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v9

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Stop(Z)V
    .locals 6
    .param p1, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the motors of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 378
    const-string v1, "Stop"

    .line 380
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .param p1, "stopBeforeDisconnect"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    .line 199
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the motor before disconnecting."
    .end annotation

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TachoCountChanged(I)V
    .locals 4
    .param p1, "tachoCount"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the tacho count has changed."
    .end annotation

    .prologue
    .line 432
    const-string v0, "TachoCountChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method public TachoCountChangedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    .line 218
    return-void
.end method

.method public TachoCountChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the TachoCountChanged event should fire when the angle is changed."
    .end annotation

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return v0
.end method

.method public ToggleDirection()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the direction of motors."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 391
    const-string v1, "ToggleDirection"

    .line 393
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v6, 0x0

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 394
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 394
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xc1f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, p0, v1, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public WheelDiameter()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels attached on the motors in centimeters."
        userVisible = false
    .end annotation

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    return-wide v0
.end method

.method public WheelDiameter(D)V
    .locals 1
    .param p1, "diameter"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    .line 124
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 7
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 722
    const-string v1, "beforeDisconnect"

    .line 723
    .local v1, "functionName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    if-eqz v2, :cond_0

    .line 725
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
