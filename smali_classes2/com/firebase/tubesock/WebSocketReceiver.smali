.class Lcom/firebase/tubesock/WebSocketReceiver;
.super Ljava/lang/Object;
.source "WebSocketReceiver.java"


# instance fields
.field private eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

.field private input:Ljava/io/DataInputStream;

.field private inputHeader:[B

.field private pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

.field private volatile stop:Z

.field private websocket:Lcom/firebase/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/firebase/tubesock/WebSocket;)V
    .locals 1
    .param p1, "websocket"    # Lcom/firebase/tubesock/WebSocket;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 13
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    .line 14
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    .line 15
    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    .line 22
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    .line 23
    return-void
.end method

.method private appendBytes(ZB[B)V
    .locals 3
    .param p1, "fin"    # Z
    .param p2, "opcode"    # B
    .param p3, "data"    # [B

    .prologue
    .line 87
    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-direct {p0, p3}, Lcom/firebase/tubesock/WebSocketReceiver;->handlePing([B)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "PING must not fragment across frames"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 95
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "Failed to continue outstanding frame"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    if-nez v1, :cond_4

    if-nez p2, :cond_4

    .line 98
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    if-nez v1, :cond_5

    .line 102
    invoke-static {p2}, Lcom/firebase/tubesock/MessageBuilderFactory;->builder(B)Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    .line 104
    :cond_5
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v1, p3}, Lcom/firebase/tubesock/MessageBuilderFactory$Builder;->appendBytes([B)Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "Failed to decode frame"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_6
    if-eqz p1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v1}, Lcom/firebase/tubesock/MessageBuilderFactory$Builder;->toMessage()Lcom/firebase/tubesock/WebSocketMessage;

    move-result-object v0

    .line 108
    .local v0, "message":Lcom/firebase/tubesock/WebSocketMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    .line 110
    if-nez v0, :cond_7

    .line 111
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "Failed to decode whole message"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v1, v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onMessage(Lcom/firebase/tubesock/WebSocketMessage;)V

    goto :goto_0
.end method

.method private handleError(Lcom/firebase/tubesock/WebSocketException;)V
    .locals 1
    .param p1, "e"    # Lcom/firebase/tubesock/WebSocketException;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocketReceiver;->stopit()V

    .line 155
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/firebase/tubesock/WebSocket;->handleReceiverError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 156
    return-void
.end method

.method private handlePing([B)V
    .locals 2
    .param p1, "payload"    # [B

    .prologue
    .line 121
    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/firebase/tubesock/WebSocket;->pong([B)V

    .line 126
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "PING frame too long"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseLong([BI)J
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 130
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 142
    return p3
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method run()V
    .locals 14

    .prologue
    .line 30
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v11}, Lcom/firebase/tubesock/WebSocket;->getEventHandler()Lcom/firebase/tubesock/WebSocketEventHandler;

    move-result-object v11

    iput-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    .line 31
    :cond_0
    :goto_0
    iget-boolean v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    if-nez v11, :cond_a

    .line 33
    const/4 v4, 0x0

    .line 34
    .local v4, "offset":I
    :try_start_0
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x1

    invoke-direct {p0, v11, v4, v12}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    move-result v11

    add-int/2addr v4, v11

    .line 35
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_1

    const/4 v1, 0x1

    .line 36
    .local v1, "fin":Z
    :goto_1
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x70

    if-eqz v11, :cond_2

    const/4 v7, 0x1

    .line 37
    .local v7, "rsv":Z
    :goto_2
    if-eqz v7, :cond_3

    .line 38
    new-instance v11, Lcom/firebase/tubesock/WebSocketException;

    const-string v12, "Invalid frame received"

    invoke-direct {v11, v12}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 75
    .end local v1    # "fin":Z
    .end local v7    # "rsv":Z
    :catch_0
    move-exception v10

    .line 76
    .local v10, "sto":Ljava/net/SocketTimeoutException;
    goto :goto_0

    .line 35
    .end local v10    # "sto":Ljava/net/SocketTimeoutException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 36
    .restart local v1    # "fin":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 40
    .restart local v7    # "rsv":Z
    :cond_3
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0xf

    int-to-byte v5, v11

    .line 41
    .local v5, "opcode":B
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x1

    invoke-direct {p0, v11, v4, v12}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    move-result v11

    add-int/2addr v4, v11

    .line 42
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x1

    aget-byte v3, v11, v12

    .line 43
    .local v3, "length":B
    const-wide/16 v8, 0x0

    .line 44
    .local v8, "payload_length":J
    const/16 v11, 0x7e

    if-ge v3, v11, :cond_5

    .line 45
    int-to-long v8, v3

    .line 58
    :cond_4
    :goto_3
    long-to-int v11, v8

    new-array v6, v11, [B

    .line 59
    .local v6, "payload":[B
    const/4 v11, 0x0

    long-to-int v12, v8

    invoke-direct {p0, v6, v11, v12}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    .line 60
    const/16 v11, 0x8

    if-ne v5, v11, :cond_7

    .line 61
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v11}, Lcom/firebase/tubesock/WebSocket;->onCloseOpReceived()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 77
    .end local v1    # "fin":Z
    .end local v3    # "length":B
    .end local v5    # "opcode":B
    .end local v6    # "payload":[B
    .end local v7    # "rsv":Z
    .end local v8    # "payload_length":J
    :catch_1
    move-exception v2

    .line 78
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v11, Lcom/firebase/tubesock/WebSocketException;

    const-string v12, "IO Error"

    invoke-direct {v11, v12, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v11}, Lcom/firebase/tubesock/WebSocketReceiver;->handleError(Lcom/firebase/tubesock/WebSocketException;)V

    goto :goto_0

    .line 46
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "fin":Z
    .restart local v3    # "length":B
    .restart local v5    # "opcode":B
    .restart local v7    # "rsv":Z
    .restart local v8    # "payload_length":J
    :cond_5
    const/16 v11, 0x7e

    if-ne v3, v11, :cond_6

    .line 47
    :try_start_1
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x2

    invoke-direct {p0, v11, v4, v12}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    move-result v11

    add-int/2addr v4, v11

    .line 48
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    iget-object v12, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v13, 0x3

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    int-to-long v8, v11

    goto :goto_3

    .line 49
    :cond_6
    const/16 v11, 0x7f

    if-ne v3, v11, :cond_4

    .line 53
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/16 v12, 0x8

    invoke-direct {p0, v11, v4, v12}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    move-result v11

    add-int/2addr v4, v11

    .line 55
    iget-object v11, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    add-int/lit8 v12, v4, -0x8

    invoke-direct {p0, v11, v12}, Lcom/firebase/tubesock/WebSocketReceiver;->parseLong([BI)J

    move-result-wide v8

    goto :goto_3

    .line 62
    .restart local v6    # "payload":[B
    :cond_7
    const/16 v11, 0xa

    if-eq v5, v11, :cond_0

    .line 64
    const/4 v11, 0x1

    if-eq v5, v11, :cond_8

    const/4 v11, 0x2

    if-eq v5, v11, :cond_8

    const/16 v11, 0x9

    if-eq v5, v11, :cond_8

    if-nez v5, :cond_9

    .line 69
    :cond_8
    invoke-direct {p0, v1, v5, v6}, Lcom/firebase/tubesock/WebSocketReceiver;->appendBytes(ZB[B)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 79
    .end local v1    # "fin":Z
    .end local v3    # "length":B
    .end local v5    # "opcode":B
    .end local v6    # "payload":[B
    .end local v7    # "rsv":Z
    .end local v8    # "payload_length":J
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Lcom/firebase/tubesock/WebSocketException;
    invoke-direct {p0, v0}, Lcom/firebase/tubesock/WebSocketReceiver;->handleError(Lcom/firebase/tubesock/WebSocketException;)V

    goto/16 :goto_0

    .line 72
    .end local v0    # "e":Lcom/firebase/tubesock/WebSocketException;
    .restart local v1    # "fin":Z
    .restart local v3    # "length":B
    .restart local v5    # "opcode":B
    .restart local v6    # "payload":[B
    .restart local v7    # "rsv":Z
    .restart local v8    # "payload_length":J
    :cond_9
    :try_start_2
    new-instance v11, Lcom/firebase/tubesock/WebSocketException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported opcode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    .end local v1    # "fin":Z
    .end local v3    # "length":B
    .end local v4    # "offset":I
    .end local v5    # "opcode":B
    .end local v6    # "payload":[B
    .end local v7    # "rsv":Z
    .end local v8    # "payload_length":J
    :cond_a
    return-void
.end method

.method setInput(Ljava/io/DataInputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/DataInputStream;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 27
    return-void
.end method

.method stopit()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    .line 147
    return-void
.end method
