.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "NxtDirectCommands.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    docUri = "internet-of-things/lego-mindstorms#nxt-direct-commands"
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 52
    const-string v0, "NxtDirectCommands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private closeHandle(Ljava/lang/String;I)V
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I

    .prologue
    const/4 v3, 0x1

    .line 693
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 694
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 695
    const/16 v2, -0x7c

    aput-byte v2, v0, v3

    .line 696
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 697
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 698
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 699
    return-void
.end method

.method private getOutputState(Ljava/lang/String;I)[B
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 220
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 221
    const/4 v2, 0x6

    aput-byte v2, v0, v4

    .line 222
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 224
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    array-length v2, v1

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    .line 232
    .end local v1    # "returnPackage":[B
    :goto_0
    return-object v1

    .line 228
    .restart local v1    # "returnPackage":[B
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 25)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v4, 0x1

    .line 646
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 647
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 648
    const/16 v2, -0x7f

    aput-byte v2, v0, v4

    .line 649
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 650
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 651
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 652
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 654
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 660
    :goto_0
    return-object v2

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v4, 0x1

    .line 778
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 779
    .local v0, "command":[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 780
    const/16 v2, -0x77

    aput-byte v2, v0, v4

    .line 781
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 782
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 783
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 784
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 785
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 786
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 792
    :goto_0
    return-object v2

    .line 788
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeChunk(Ljava/lang/String;I[BI)I
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "buffer"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 665
    const/16 v3, 0x20

    if-le p4, v3, :cond_0

    .line 666
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "length must be <= 32"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 669
    :cond_0
    add-int/lit8 v3, p4, 0x3

    new-array v0, v3, [B

    .line 670
    .local v0, "command":[B
    aput-byte v4, v0, v2

    .line 671
    const/16 v3, -0x7d

    aput-byte v3, v0, v4

    .line 672
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 673
    const/4 v3, 0x3

    invoke-static {p3, v2, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 675
    .local v1, "returnPackage":[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 676
    array-length v3, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 677
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v2

    .line 678
    .local v2, "writtenLength":I
    if-eq v2, p4, :cond_2

    .line 679
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes were written (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to write file on robot"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 685
    .end local v2    # "writtenLength":I
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 6)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_2
    return v2
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 703
    const-string v1, "DeleteFile"

    .line 704
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 719
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 708
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x196

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 713
    :cond_1
    const/16 v3, 0x16

    new-array v0, v3, [B

    .line 714
    .local v0, "command":[B
    aput-byte v5, v0, v6

    .line 715
    const/16 v3, -0x7b

    aput-byte v3, v0, v5

    .line 716
    const/4 v3, 0x2

    const/16 v4, 0x13

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 717
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 718
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .prologue
    .line 592
    const-string v5, "DownloadFile"

    .line 593
    .local v5, "functionName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 643
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x19e

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x19f

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 608
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 610
    .local v12, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-static {v12}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v14

    const/16 v15, 0x400

    invoke-direct {v9, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 612
    .local v9, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 613
    .local v6, "fileSize":J
    const-string v14, ".rxe"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, ".ric"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 614
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 616
    .local v8, "handle":Ljava/lang/Integer;
    :goto_1
    if-nez v8, :cond_5

    .line 633
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 636
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 638
    .end local v6    # "fileSize":J
    .end local v8    # "handle":Ljava/lang/Integer;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v12    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 639
    .local v4, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v15, 0x1a0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 640
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 639
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v5, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 615
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "fileSize":J
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    goto :goto_1

    .line 621
    .restart local v8    # "handle":Ljava/lang/Integer;
    :cond_5
    const/16 v14, 0x20

    :try_start_6
    new-array v2, v14, [B

    .line 622
    .local v2, "buffer":[B
    const-wide/16 v10, 0x0

    .line 623
    .local v10, "sentLength":J
    :goto_2
    cmp-long v14, v10, v6

    if-gez v14, :cond_6

    .line 624
    const-wide/16 v14, 0x20

    sub-long v16, v6, v10

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v3, v14

    .line 625
    .local v3, "chunkLength":I
    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14, v3}, Ljava/io/InputStream;->read([BII)I

    .line 626
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->writeChunk(Ljava/lang/String;I[BI)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v13

    .line 627
    .local v13, "writtenLength":I
    int-to-long v14, v13

    add-long/2addr v10, v14

    .line 628
    goto :goto_2

    .line 630
    .end local v3    # "chunkLength":I
    .end local v13    # "writtenLength":I
    :cond_6
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 633
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 636
    :try_start_9
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 630
    .end local v2    # "buffer":[B
    .end local v10    # "sentLength":J
    :catchall_0
    move-exception v14

    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V

    .line 631
    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 633
    .end local v6    # "fileSize":J
    .end local v8    # "handle":Ljava/lang/Integer;
    :catchall_1
    move-exception v14

    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 634
    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 636
    .end local v9    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    :try_start_c
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 637
    throw v14
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public GetBatteryLevel()I
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 356
    const-string v1, "GetBatteryLevel"

    .line 357
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v3

    .line 361
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 362
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 363
    const/16 v4, 0xb

    aput-byte v4, v0, v5

    .line 364
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 365
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    array-length v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 367
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v3

    goto :goto_0

    .line 369
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetBatteryLevel: unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (expected 5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 816
    const-string v1, "GetBrickName"

    .line 817
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 818
    const-string v3, ""

    .line 828
    :goto_0
    return-object v3

    .line 821
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 822
    .local v0, "command":[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 823
    const/16 v3, -0x65

    aput-byte v3, v0, v4

    .line 824
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 825
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 828
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 516
    const-string v1, "GetCurrentProgramName"

    .line 517
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 518
    const-string v4, ""

    .line 536
    :goto_0
    return-object v4

    .line 521
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 522
    .local v0, "command":[B
    aput-byte v6, v0, v6

    .line 523
    const/16 v4, 0x11

    aput-byte v4, v0, v5

    .line 524
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 525
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v3

    .line 526
    .local v3, "status":I
    if-nez v3, :cond_1

    .line 528
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 530
    :cond_1
    const/16 v4, 0xec

    if-ne v3, v4, :cond_2

    .line 532
    const-string v4, ""

    goto :goto_0

    .line 535
    :cond_2
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 536
    const-string v4, ""

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 759
    const-string v1, "GetFirmwareVersion"

    .line 760
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 761
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 774
    :goto_0
    return-object v3

    .line 764
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 765
    .local v0, "command":[B
    const/4 v4, 0x0

    aput-byte v5, v0, v4

    .line 766
    const/16 v4, -0x78

    aput-byte v4, v0, v5

    .line 767
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 768
    .local v2, "returnPackage":[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v3, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x6

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    .end local v3    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const-string v1, "GetInputValues"

    .line 239
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :goto_0
    return-object v2

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 252
    .local v3, "port":I
    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v4

    .line 253
    .local v4, "returnPackage":[B
    if-eqz v4, :cond_1

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v2, "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/16 v5, 0xc

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const/16 v5, 0xe

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    .end local v2    # "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "port":I
    .end local v4    # "returnPackage":[B
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x198

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "port":I
    .restart local v4    # "returnPackage":[B
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "motorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const-string v1, "GetOutputState"

    .line 186
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    :goto_0
    return-object v2

    .line 192
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 199
    .local v3, "port":I
    invoke-direct {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getOutputState(Ljava/lang/String;I)[B

    move-result-object v4

    .line 200
    .local v4, "returnPackage":[B
    if-eqz v4, :cond_1

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/16 v5, 0x9

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/16 v5, 0x11

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const/16 v5, 0x15

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 193
    .end local v2    # "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    .end local v3    # "port":I
    .end local v4    # "returnPackage":[B
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x197

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "port":I
    .restart local v4    # "returnPackage":[B
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 392
    const-string v1, "KeepAlive"

    .line 393
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-wide v4

    .line 397
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 398
    .local v0, "command":[B
    aput-byte v6, v0, v6

    .line 399
    const/16 v3, 0xd

    aput-byte v3, v0, v7

    .line 400
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 401
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v7

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    array-length v3, v2

    const/4 v6, 0x7

    if-ne v3, v6, :cond_2

    .line 403
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v4

    goto :goto_0

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeepAlive: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 7)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "wildcard"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 724
    const-string v3, "ListFiles"

    .line 725
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 726
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 752
    :cond_0
    return-object v2

    .line 729
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v2, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 732
    const-string p1, "*.*"

    .line 735
    :cond_2
    const/16 v7, 0x16

    new-array v0, v7, [B

    .line 736
    .local v0, "command":[B
    aput-byte v8, v0, v9

    .line 737
    const/16 v7, -0x7a

    aput-byte v7, v0, v8

    .line 738
    const/16 v7, 0x13

    invoke-virtual {p0, p1, v0, v10, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 739
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 740
    .local v5, "returnPackage":[B
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 741
    .local v6, "status":I
    :goto_0
    if-nez v6, :cond_0

    .line 742
    invoke-virtual {p0, v5, v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 743
    .local v4, "handle":I
    const/4 v7, 0x4

    invoke-virtual {p0, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "fileName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    new-array v0, v11, [B

    .line 746
    aput-byte v8, v0, v9

    .line 747
    const/16 v7, -0x79

    aput-byte v7, v0, v8

    .line 748
    invoke-virtual {p0, v4, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 749
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 750
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 751
    goto :goto_0
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 7
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 414
    const-string v1, "LsGetStatus"

    .line 415
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    :goto_0
    return v3

    .line 421
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 428
    .local v2, "port":I
    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 422
    .end local v2    # "port":I
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x198

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    const-string v2, "LsRead"

    .line 485
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 486
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 510
    :cond_0
    :goto_0
    return-object v4

    .line 491
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 498
    .local v6, "port":I
    invoke-virtual {p0, v2, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;I)[B

    move-result-object v7

    .line 499
    .local v7, "returnPackage":[B
    if-eqz v7, :cond_2

    .line 500
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 502
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 503
    add-int/lit8 v8, v3, 0x4

    aget-byte v8, v7, v8

    and-int/lit16 v5, v8, 0xff

    .line 504
    .local v5, "n":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 492
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "n":I
    .end local v6    # "port":I
    .end local v7    # "returnPackage":[B
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v9, 0x198

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, p0, v2, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 510
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "port":I
    .restart local v7    # "returnPackage":[B
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 15
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .param p2, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "rxDataLength"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .prologue
    .line 434
    const-string v5, "LsWrite"

    .line 435
    .local v5, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 478
    :goto_0
    return-void

    .line 441
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 448
    .local v8, "port":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    const/16 v11, 0x10

    if-le v10, v11, :cond_1

    .line 449
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19b

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    .end local v8    # "port":I
    :catch_0
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x198

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 454
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "port":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 455
    .local v1, "array":[Ljava/lang/Object;
    array-length v10, v1

    new-array v2, v10, [B

    .line 456
    .local v2, "bytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, v1

    if-ge v6, v10, :cond_3

    .line 459
    aget-object v4, v1, v6

    .line 460
    .local v4, "element":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, "s":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 469
    .local v7, "n":I
    and-int/lit16 v10, v7, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v6

    .line 470
    shr-int/lit8 v7, v7, 0x8

    .line 471
    if-eqz v7, :cond_2

    const/4 v10, -0x1

    if-eq v7, v10, :cond_2

    .line 472
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    .line 473
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 472
    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    .end local v7    # "n":I
    :catch_1
    move-exception v3

    .line 465
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v11, 0x19c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    .line 466
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 465
    invoke-virtual {v10, p0, v5, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "n":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 477
    .end local v4    # "element":Ljava/lang/Object;
    .end local v7    # "n":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    move/from16 v0, p3

    invoke-virtual {p0, v5, v8, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;I[BI)V

    goto :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 12
    .param p1, "mailbox"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 541
    const-string v1, "MessageRead"

    .line 542
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 543
    const-string v5, ""

    .line 578
    :goto_0
    return-object v5

    .line 549
    :cond_0
    if-lt p1, v7, :cond_1

    const/16 v5, 0xa

    if-le p1, v5, :cond_2

    .line 550
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x199

    new-array v7, v7, [Ljava/lang/Object;

    .line 551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 550
    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 552
    const-string v5, ""

    goto :goto_0

    .line 555
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 557
    new-array v0, v11, [B

    .line 558
    .local v0, "command":[B
    aput-byte v9, v0, v9

    .line 559
    const/16 v5, 0x13

    aput-byte v5, v0, v7

    .line 560
    const/4 v5, 0x2

    invoke-virtual {p0, v9, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 561
    invoke-virtual {p0, p1, v0, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 562
    invoke-virtual {p0, v7, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 563
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 564
    .local v4, "returnPackage":[B
    aget-byte v5, v0, v7

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 565
    array-length v5, v4

    const/16 v6, 0x40

    if-ne v5, v6, :cond_4

    .line 566
    invoke-virtual {p0, v4, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 567
    .local v2, "mailboxEcho":I
    if-eq v2, p1, :cond_3

    .line 568
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_3
    invoke-virtual {p0, v4, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 572
    .local v3, "messageLength":I
    invoke-virtual {p0, v4, v11, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 574
    .end local v2    # "mailboxEcho":I
    .end local v3    # "messageLength":I
    :cond_4
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 64)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_5
    const-string v5, ""

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 8
    .param p1, "mailbox"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 296
    const-string v1, "MessageWrite"

    .line 297
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    :goto_0
    return-void

    .line 304
    :cond_0
    if-lt p1, v5, :cond_1

    const/16 v3, 0xa

    if-le p1, v3, :cond_2

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x199

    new-array v5, v5, [Ljava/lang/Object;

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 305
    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 310
    .local v2, "messageLength":I
    const/16 v3, 0x3a

    if-le v2, v3, :cond_3

    .line 311
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x19a

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 318
    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 319
    .local v0, "command":[B
    const/16 v3, -0x80

    aput-byte v3, v0, v7

    .line 320
    const/16 v3, 0x9

    aput-byte v3, v0, v5

    .line 321
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 323
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 324
    const/4 v3, 0x4

    invoke-virtual {p0, p2, v0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 326
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 99
    const-string v1, "PlaySoundFile"

    .line 100
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x196

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_2
    const/16 v2, 0x17

    new-array v0, v2, [B

    .line 113
    .local v0, "command":[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 114
    const/4 v2, 0x1

    aput-byte v5, v0, v2

    .line 115
    invoke-virtual {p0, v4, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 116
    const/4 v2, 0x3

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 117
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlayTone(II)V
    .locals 5
    .param p1, "frequencyHz"    # I
    .param p2, "durationMs"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    .line 122
    const-string v1, "PlayTone"

    .line 123
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    :goto_0
    return-void

    .line 127
    :cond_0
    const/16 v2, 0xc8

    if-ge p1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 200."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 p1, 0xc8

    .line 131
    :cond_1
    const/16 v2, 0x36b0

    if-le p1, v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 14000."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/16 p1, 0x36b0

    .line 135
    :cond_2
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 136
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 137
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 138
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 139
    const/4 v2, 0x4

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 140
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 272
    const-string v2, "ResetInputScaledValue"

    .line 273
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 286
    .local v3, "port":I
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;I)V

    .line 287
    const/4 v4, 0x3

    new-array v0, v4, [B

    .line 288
    .local v0, "command":[B
    const/16 v4, -0x80

    aput-byte v4, v0, v7

    .line 289
    const/16 v4, 0x8

    aput-byte v4, v0, v6

    .line 290
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 291
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 280
    .end local v0    # "command":[B
    .end local v3    # "port":I
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x198

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "motorPortLetter"    # Ljava/lang/String;
    .param p2, "relative"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 331
    const-string v2, "ResetMotorPosition"

    .line 332
    .local v2, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    :goto_0
    return-void

    .line 338
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 345
    .local v3, "port":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 346
    .local v0, "command":[B
    const/16 v4, -0x80

    aput-byte v4, v0, v7

    .line 347
    const/16 v4, 0xa

    aput-byte v4, v0, v6

    .line 348
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 349
    const/4 v4, 0x3

    invoke-virtual {p0, p2, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 350
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 339
    .end local v0    # "command":[B
    .end local v3    # "port":I
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x197

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 801
    const-string v1, "SetBrickName"

    .line 802
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 812
    :goto_0
    return-void

    .line 806
    :cond_0
    const/16 v3, 0x12

    new-array v0, v3, [B

    .line 807
    .local v0, "command":[B
    const/4 v3, 0x0

    aput-byte v5, v0, v3

    .line 808
    const/16 v3, -0x68

    aput-byte v3, v0, v5

    .line 809
    const/4 v3, 0x2

    const/16 v4, 0xf

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 810
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 811
    .local v2, "returnPackage":[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 7
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .param p2, "sensorType"    # I
    .param p3, "sensorMode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .prologue
    .line 166
    const-string v1, "SetInputMode"

    .line 167
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 180
    .local v2, "port":I
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;III)V

    goto :goto_0

    .line 174
    .end local v2    # "port":I
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x198

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 13
    .param p1, "motorPortLetter"    # Ljava/lang/String;
    .param p2, "power"    # I
    .param p3, "mode"    # I
    .param p4, "regulationMode"    # I
    .param p5, "turnRatio"    # I
    .param p6, "runState"    # I
    .param p7, "tachoLimit"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .prologue
    .line 146
    const-string v3, "SetOutputState"

    .line 147
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 161
    .local v4, "port":I
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sanitizeTurnRatio(I)I

    move-result v8

    move-object v2, p0

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    .line 160
    invoke-virtual/range {v2 .. v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    .line 154
    .end local v4    # "port":I
    :catch_0
    move-exception v12

    .line 155
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x197

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, p0, v3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 5
    .param p1, "programName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 63
    const-string v1, "StartProgram"

    .line 64
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x195

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rxe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    :cond_2
    const/16 v2, 0x16

    new-array v0, v2, [B

    .line 77
    .local v0, "command":[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 78
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 79
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 80
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopProgram()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 86
    const-string v1, "StopProgram"

    .line 87
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 92
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 93
    aput-byte v4, v0, v4

    .line 94
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .prologue
    .line 378
    const-string v1, "StopSoundPlayback"

    .line 379
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 384
    .local v0, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 385
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    .line 386
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method
