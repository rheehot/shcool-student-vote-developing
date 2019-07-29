.class public Lcom/firebase/tubesock/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/tubesock/WebSocket$3;,
        Lcom/firebase/tubesock/WebSocket$State;
    }
.end annotation


# static fields
.field static final OPCODE_BINARY:B = 0x2t

.field static final OPCODE_CLOSE:B = 0x8t

.field static final OPCODE_NONE:B = 0x0t

.field static final OPCODE_PING:B = 0x9t

.field static final OPCODE_PONG:B = 0xat

.field static final OPCODE_TEXT:B = 0x1t

.field private static final THREAD_BASE_NAME:Ljava/lang/String; = "TubeSock"

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static intializer:Lcom/firebase/tubesock/ThreadInitializer;

.field private static threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final clientId:I

.field private eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

.field private final handshake:Lcom/firebase/tubesock/WebSocketHandshake;

.field private final innerThread:Ljava/lang/Thread;

.field private final receiver:Lcom/firebase/tubesock/WebSocketReceiver;

.field private volatile socket:Ljava/net/Socket;

.field private volatile state:Lcom/firebase/tubesock/WebSocket$State;

.field private final url:Ljava/net/URI;

.field private final writer:Lcom/firebase/tubesock/WebSocketWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 59
    new-instance v0, Lcom/firebase/tubesock/WebSocket$1;

    invoke-direct {v0}, Lcom/firebase/tubesock/WebSocket$1;-><init>()V

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->intializer:Lcom/firebase/tubesock/ThreadInitializer;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URI;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URI;
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URI;
    .param p2, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->NONE:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 46
    iput-object v1, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 48
    iput-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    .line 55
    sget-object v0, Lcom/firebase/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    .line 105
    invoke-static {}, Lcom/firebase/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/firebase/tubesock/WebSocket$2;

    invoke-direct {v1, p0}, Lcom/firebase/tubesock/WebSocket$2;-><init>(Lcom/firebase/tubesock/WebSocket;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    .line 111
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    .line 112
    new-instance v0, Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-direct {v0, p1, p2, p3}, Lcom/firebase/tubesock/WebSocketHandshake;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    .line 113
    new-instance v0, Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-direct {v0, p0}, Lcom/firebase/tubesock/WebSocketReceiver;-><init>(Lcom/firebase/tubesock/WebSocket;)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    .line 114
    new-instance v0, Lcom/firebase/tubesock/WebSocketWriter;

    const-string v1, "TubeSock"

    iget v2, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/firebase/tubesock/WebSocketWriter;-><init>(Lcom/firebase/tubesock/WebSocket;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/tubesock/WebSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/tubesock/WebSocket;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->runReader()V

    return-void
.end method

.method private declared-synchronized closeSocket()V
    .locals 3

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v2, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 231
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocketReceiver;->stopit()V

    .line 220
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocketWriter;->stopIt()V

    .line 221
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 223
    :try_start_2
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :cond_1
    :try_start_3
    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v1, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 230
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onClose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createSocket()Ljava/net/Socket;
    .locals 11

    .prologue
    const/4 v9, -0x1

    .line 246
    iget-object v8, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "scheme":Ljava/lang/String;
    iget-object v8, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "host":Ljava/lang/String;
    iget-object v8, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 252
    .local v4, "port":I
    if-eqz v5, :cond_1

    const-string v8, "ws"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 253
    if-ne v4, v9, :cond_0

    .line 254
    const/16 v4, 0x50

    .line 257
    :cond_0
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6, v2, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    .local v6, "socket":Ljava/net/Socket;
    :goto_0
    return-object v6

    .line 258
    .end local v6    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v7

    .line 259
    .local v7, "uhe":Ljava/net/UnknownHostException;
    new-instance v8, Lcom/firebase/tubesock/WebSocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown host: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 260
    .end local v7    # "uhe":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    .line 261
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v8, Lcom/firebase/tubesock/WebSocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error while creating socket to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 263
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_1
    if-eqz v5, :cond_3

    const-string v8, "wss"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 264
    if-ne v4, v9, :cond_2

    .line 265
    const/16 v4, 0x1bb

    .line 268
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    .line 269
    .local v1, "factory":Ljavax/net/SocketFactory;
    invoke-virtual {v1, v2, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v6

    .line 271
    .restart local v6    # "socket":Ljava/net/Socket;
    move-object v0, v6

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v8, v0

    invoke-direct {p0, v8, v2}, Lcom/firebase/tubesock/WebSocket;->verifyHost(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 272
    .end local v1    # "factory":Ljavax/net/SocketFactory;
    .end local v6    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v7

    .line 273
    .restart local v7    # "uhe":Ljava/net/UnknownHostException;
    new-instance v8, Lcom/firebase/tubesock/WebSocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown host: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 274
    .end local v7    # "uhe":Ljava/net/UnknownHostException;
    :catch_3
    move-exception v3

    .line 275
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v8, Lcom/firebase/tubesock/WebSocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error while creating secure socket to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 278
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_3
    new-instance v8, Lcom/firebase/tubesock/WebSocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupported protocol: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static getIntializer()Lcom/firebase/tubesock/ThreadInitializer;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/firebase/tubesock/WebSocket;->intializer:Lcom/firebase/tubesock/ThreadInitializer;

    return-object v0
.end method

.method static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/firebase/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method private runReader()V
    .locals 22

    .prologue
    .line 306
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/firebase/tubesock/WebSocket;->createSocket()Ljava/net/Socket;

    move-result-object v16

    .line 307
    .local v16, "socket":Ljava/net/Socket;
    monitor-enter p0
    :try_end_0
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 312
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    const/16 v18, 0x0

    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 317
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    .line 382
    .end local v16    # "socket":Ljava/net/Socket;
    :goto_0
    return-void

    .line 313
    .restart local v16    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v4

    .line 314
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 319
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v18
    :try_end_5
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 373
    .end local v16    # "socket":Ljava/net/Socket;
    :catch_1
    move-exception v17

    .line 374
    .local v17, "wse":Lcom/firebase/tubesock/WebSocketException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto :goto_0

    .line 319
    .end local v17    # "wse":Lcom/firebase/tubesock/WebSocketException;
    .restart local v16    # "socket":Ljava/net/Socket;
    :cond_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    :try_start_8
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 322
    .local v9, "input":Ljava/io/DataInputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 324
    .local v14, "output":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/firebase/tubesock/WebSocketHandshake;->getHandshake()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 326
    const/4 v5, 0x0

    .line 327
    .local v5, "handshakeComplete":Z
    const/16 v12, 0x3e8

    .line 328
    .local v12, "len":I
    new-array v3, v12, [B

    .line 329
    .local v3, "buffer":[B
    const/4 v15, 0x0

    .line 330
    .local v15, "pos":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v6, "handshakeLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    if-nez v5, :cond_5

    .line 333
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 334
    .local v2, "b":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    .line 335
    new-instance v18, Lcom/firebase/tubesock/WebSocketException;

    const-string v19, "Connection closed before handshake was complete"

    invoke-direct/range {v18 .. v19}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_8
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 375
    .end local v2    # "b":I
    .end local v3    # "buffer":[B
    .end local v5    # "handshakeComplete":Z
    .end local v6    # "handshakeLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "input":Ljava/io/DataInputStream;
    .end local v12    # "len":I
    .end local v14    # "output":Ljava/io/OutputStream;
    .end local v15    # "pos":I
    .end local v16    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v10

    .line 376
    .local v10, "ioe":Ljava/io/IOException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/firebase/tubesock/WebSocketException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error while connecting: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v18 .. v19}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto/16 :goto_0

    .line 337
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v2    # "b":I
    .restart local v3    # "buffer":[B
    .restart local v5    # "handshakeComplete":Z
    .restart local v6    # "handshakeLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "input":Ljava/io/DataInputStream;
    .restart local v12    # "len":I
    .restart local v14    # "output":Ljava/io/OutputStream;
    .restart local v15    # "pos":I
    .restart local v16    # "socket":Ljava/net/Socket;
    :cond_2
    int-to-byte v0, v2

    move/from16 v18, v0

    :try_start_a
    aput-byte v18, v3, v15

    .line 338
    add-int/lit8 v15, v15, 0x1

    .line 340
    add-int/lit8 v18, v15, -0x1

    aget-byte v18, v3, v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v15, -0x2

    aget-byte v18, v3, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 341
    new-instance v13, Ljava/lang/String;

    sget-object v18, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v18

    invoke-direct {v13, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 342
    .local v13, "line":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 343
    const/4 v5, 0x1

    .line 348
    :goto_2
    new-array v3, v12, [B

    .line 349
    const/4 v15, 0x0

    .line 350
    goto :goto_1

    .line 345
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 379
    .end local v2    # "b":I
    .end local v3    # "buffer":[B
    .end local v5    # "handshakeComplete":Z
    .end local v6    # "handshakeLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "input":Ljava/io/DataInputStream;
    .end local v12    # "len":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "output":Ljava/io/OutputStream;
    .end local v15    # "pos":I
    .end local v16    # "socket":Ljava/net/Socket;
    :catchall_1
    move-exception v18

    invoke-virtual/range {p0 .. p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    throw v18

    .line 350
    .restart local v2    # "b":I
    .restart local v3    # "buffer":[B
    .restart local v5    # "handshakeComplete":Z
    .restart local v6    # "handshakeLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "input":Ljava/io/DataInputStream;
    .restart local v12    # "len":I
    .restart local v14    # "output":Ljava/io/OutputStream;
    .restart local v15    # "pos":I
    .restart local v16    # "socket":Ljava/net/Socket;
    :cond_4
    const/16 v18, 0x3e8

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 352
    :try_start_b
    new-instance v13, Ljava/lang/String;

    sget-object v18, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v18

    invoke-direct {v13, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 353
    .restart local v13    # "line":Ljava/lang/String;
    new-instance v18, Lcom/firebase/tubesock/WebSocketException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected long line in handshake: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 357
    .end local v2    # "b":I
    .end local v13    # "line":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/firebase/tubesock/WebSocketHandshake;->verifyServerStatusLine(Ljava/lang/String;)V

    .line 358
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 360
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v7, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 362
    .restart local v13    # "line":Ljava/lang/String;
    const-string v18, ": "

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "keyValue":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v11, v18

    const/16 v19, 0x1

    aget-object v19, v11, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 365
    .end local v11    # "keyValue":[Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/firebase/tubesock/WebSocketHandshake;->verifyServerHandshakeHeaders(Ljava/util/HashMap;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/firebase/tubesock/WebSocketWriter;->setOutput(Ljava/io/OutputStream;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/firebase/tubesock/WebSocketReceiver;->setInput(Ljava/io/DataInputStream;)V

    .line 369
    sget-object v18, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/firebase/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/firebase/tubesock/WebSocketEventHandler;->onOpen()V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/firebase/tubesock/WebSocketReceiver;->run()V
    :try_end_b
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto/16 :goto_0
.end method

.method private declared-synchronized send(B[B)V
    .locals 4
    .param p1, "opcode"    # B
    .param p2, "data"    # [B

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v2, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    if-eq v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    const-string v3, "error while sending data: not connected"

    invoke-direct {v2, v3}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Lcom/firebase/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    const-string v3, "Failed to send frame"

    invoke-direct {v2, v3, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 173
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sendCloseHandshake()V
    .locals 5

    .prologue
    .line 235
    :try_start_0
    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v1, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 238
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocketWriter;->stopIt()V

    .line 239
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v1, v2, v3, v4}, Lcom/firebase/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    const-string v3, "Failed to send close frame"

    invoke-direct {v2, v3, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    goto :goto_0
.end method

.method public static setThreadFactory(Ljava/util/concurrent/ThreadFactory;Lcom/firebase/tubesock/ThreadInitializer;)V
    .locals 0
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p1, "intializer"    # Lcom/firebase/tubesock/ThreadInitializer;

    .prologue
    .line 75
    sput-object p0, Lcom/firebase/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 76
    sput-object p1, Lcom/firebase/tubesock/WebSocket;->intializer:Lcom/firebase/tubesock/ThreadInitializer;

    .line 77
    return-void
.end method

.method private verifyHost(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 286
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 287
    .local v1, "peerCert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lorg/shaded/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v2}, Lorg/shaded/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 288
    .local v2, "verifier":Lorg/shaded/apache/http/conn/ssl/StrictHostnameVerifier;
    invoke-virtual {v2, p2, v1}, Lorg/shaded/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 289
    return-void
.end method


# virtual methods
.method public blockClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 302
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/firebase/tubesock/WebSocket$3;->$SwitchMap$com$firebase$tubesock$WebSocket$State:[I

    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 193
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->closeSocket()V

    goto :goto_0

    .line 202
    :pswitch_3
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->sendCloseHandshake()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized connect()V
    .locals 4

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->NONE:Lcom/firebase/tubesock/WebSocket$State;

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "connect() already called"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 136
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/firebase/tubesock/WebSocket;->getIntializer()Lcom/firebase/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TubeSockReader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->CONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 141
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventHandler()Lcom/firebase/tubesock/WebSocketEventHandler;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    return-object v0
.end method

.method getInnerThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method handleReceiverError(Lcom/firebase/tubesock/WebSocketException;)V
    .locals 2
    .param p1, "e"    # Lcom/firebase/tubesock/WebSocketException;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v0, p1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 180
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->closeSocket()V

    .line 184
    return-void
.end method

.method onCloseOpReceived()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->closeSocket()V

    .line 213
    return-void
.end method

.method declared-synchronized pong([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 161
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEventHandler(Lcom/firebase/tubesock/WebSocketEventHandler;)V
    .locals 0
    .param p1, "eventHandler"    # Lcom/firebase/tubesock/WebSocketEventHandler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    .line 123
    return-void
.end method
