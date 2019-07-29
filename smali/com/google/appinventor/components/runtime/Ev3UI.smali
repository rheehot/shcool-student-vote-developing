.class public Lcom/google/appinventor/components/runtime/Ev3UI;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3UI.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS EV3 robot, with functions to draw graphs on EV3 screen."
    docUri = "internet-of-things/lego-mindstorms#ev3-ui"
    iconName = "images/legoMindstormsEv3.png"
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
    .line 42
    const-string v0, "Ev3UI"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public DrawCircle(IIIIZ)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "radius"    # I
    .param p5, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a circle on the screen."
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/16 v0, -0x7c

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 184
    const-string v7, "DrawCircle"

    .line 186
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    if-gez p4, :cond_2

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 210
    :goto_0
    return-void

    .line 191
    :cond_2
    const-string v4, "ccccc"

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz p5, :cond_3

    const/16 v2, 0x18

    .line 196
    :goto_1
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    .line 197
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v9

    const/4 v2, 0x2

    int-to-short v8, p2

    .line 198
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v2

    const/4 v2, 0x3

    int-to-short v8, p3

    .line 199
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v2

    int-to-short v2, p4

    .line 200
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    .line 191
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 201
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 203
    const-string v4, "c"

    new-array v5, v9, [Ljava/lang/Object;

    .line 208
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 209
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0

    .end local v6    # "command":[B
    :cond_3
    move v2, v3

    .line 191
    goto :goto_1
.end method

.method public DrawIcon(IIIII)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "type"    # I
    .param p5, "no"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a built-in icon on screen."
    .end annotation

    .prologue
    const/4 v2, 0x6

    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 82
    const-string v7, "DrawIcon"

    .line 84
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v4, "cccccc"

    new-array v5, v2, [Ljava/lang/Object;

    .line 94
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    .line 95
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    int-to-short v3, p2

    .line 96
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    int-to-short v3, p3

    .line 97
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    .line 98
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    .line 99
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 100
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 102
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    .line 107
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 108
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method

.method public DrawLine(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a line on the screen."
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 116
    const-string v7, "DrawLine"

    .line 118
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 143
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v4, "cccccc"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    .line 128
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    .line 129
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    int-to-short v3, p2

    .line 130
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    int-to-short v2, p3

    .line 131
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v9

    const/4 v2, 0x4

    int-to-short v3, p4

    .line 132
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    int-to-short v3, p5

    .line 133
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 134
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 136
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    .line 141
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 142
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method

.method public DrawPoint(III)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a point on the screen."
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 50
    const-string v7, "DrawPoint"

    .line 52
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v4, "cccc"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    .line 63
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    int-to-short v2, p2

    .line 64
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x3

    int-to-short v3, p3

    .line 65
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 57
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 66
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 68
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    .line 73
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 74
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method

.method public DrawRect(IIIIIZ)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a rectangle on the screen."
    .end annotation

    .prologue
    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 150
    const-string v7, "DrawRect"

    .line 152
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 177
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v4, "cccccc"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz p6, :cond_1

    const/16 v2, 0x9

    .line 162
    :goto_1
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    .line 163
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    int-to-short v3, p2

    .line 164
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    int-to-short v3, p3

    .line 165
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    int-to-short v3, p4

    .line 166
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    int-to-short v3, p5

    .line 167
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 157
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 168
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 170
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    .line 175
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    .line 170
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 176
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0

    .line 157
    .end local v6    # "command":[B
    :cond_1
    const/16 v2, 0xa

    goto :goto_1
.end method

.method public FillScreen(I)V
    .locals 9
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fill the screen with a color."
    .end annotation

    .prologue
    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 217
    const-string v7, "FillScreen"

    .line 219
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 242
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v4, "cccc"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v2, 0x13

    .line 229
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    .line 230
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    .line 231
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    .line 232
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 224
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 233
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 235
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    .line 240
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    .line 235
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 241
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method
