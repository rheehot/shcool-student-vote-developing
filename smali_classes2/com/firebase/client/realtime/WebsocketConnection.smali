.class public Lcom/firebase/client/realtime/WebsocketConnection;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;,
        Lcom/firebase/client/realtime/WebsocketConnection$WSClient;,
        Lcom/firebase/client/realtime/WebsocketConnection$Delegate;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:J = 0x7530L

.field private static final KEEP_ALIVE:J = 0xafc8L

.field private static final MAX_FRAME_SIZE:I = 0x4000

.field private static connectionId:J


# instance fields
.field private conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

.field private connectTimeout:Ljava/util/concurrent/ScheduledFuture;

.field private ctx:Lcom/firebase/client/core/Context;

.field private delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

.field private everConnected:Z

.field private frameReader:Lcom/firebase/client/realtime/util/StringListReader;

.field private isClosed:Z

.field private keepAlive:Ljava/util/concurrent/ScheduledFuture;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field private mapType:Lcom/shaded/fasterxml/jackson/databind/type/MapType;

.field private mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

.field private totalFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/firebase/client/realtime/WebsocketConnection;->connectionId:J

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/WebsocketConnection$Delegate;Ljava/lang/String;)V
    .locals 6
    .param p1, "ctx"    # Lcom/firebase/client/core/Context;
    .param p2, "repoInfo"    # Lcom/firebase/client/core/RepoInfo;
    .param p3, "delegate"    # Lcom/firebase/client/realtime/WebsocketConnection$Delegate;
    .param p4, "optLastSessionId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    .line 138
    iput-boolean v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    .line 139
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    .line 150
    sget-wide v0, Lcom/firebase/client/realtime/WebsocketConnection;->connectionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/firebase/client/realtime/WebsocketConnection;->connectionId:J

    .line 151
    .local v0, "connId":J
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    iput-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    .line 152
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    const-class v3, Ljava/util/HashMap;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/type/MapType;

    move-result-object v2

    iput-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapType:Lcom/shaded/fasterxml/jackson/databind/type/MapType;

    .line 153
    iput-object p3, p0, Lcom/firebase/client/realtime/WebsocketConnection;->delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

    .line 154
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    .line 155
    const-string v2, "WebSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ws_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 156
    invoke-direct {p0, p2, p4}, Lcom/firebase/client/realtime/WebsocketConnection;->createConnection(Lcom/firebase/client/core/RepoInfo;Ljava/lang/String;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    move-result-object v2

    iput-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/realtime/WebsocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/firebase/client/realtime/WebsocketConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->resetKeepAlive()V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/core/Context;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/firebase/client/realtime/WebsocketConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->handleIncomingFrame(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->onClosed()V

    return-void
.end method

.method static synthetic access$800(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->closeIfNeverConnected()V

    return-void
.end method

.method static synthetic access$900(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    return-object v0
.end method

.method private appendFrame(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    invoke-virtual {v2, p1}, Lcom/firebase/client/realtime/util/StringListReader;->addString(Ljava/lang/String;)V

    .line 216
    iget-wide v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    .line 217
    iget-wide v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    invoke-virtual {v2}, Lcom/firebase/client/realtime/util/StringListReader;->freeze()V

    .line 221
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    iget-object v4, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapType:Lcom/shaded/fasterxml/jackson/databind/type/MapType;

    invoke-virtual {v2, v3, v4}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/Reader;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 222
    .local v0, "decoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    .line 223
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIncomingFrame complete frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

    invoke-interface {v2, v0}, Lcom/firebase/client/realtime/WebsocketConnection$Delegate;->onMessage(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    .end local v0    # "decoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    invoke-virtual {v4}, Lcom/firebase/client/realtime/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    invoke-virtual {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->close()V

    .line 228
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    goto :goto_0

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing frame (cast error): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    invoke-virtual {v4}, Lcom/firebase/client/realtime/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    invoke-virtual {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->close()V

    .line 232
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    goto :goto_0
.end method

.method private closeIfNeverConnected()V
    .locals 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "timed out on connect"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->close()V

    .line 325
    :cond_1
    return-void
.end method

.method private createConnection(Lcom/firebase/client/core/RepoInfo;Ljava/lang/String;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;
    .locals 7
    .param p1, "repoInfo"    # Lcom/firebase/client/core/RepoInfo;
    .param p2, "optLastSessionId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/RepoInfo;->getConnectionURL(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 161
    .local v2, "uri":Ljava/net/URI;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v1, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v5}, Lcom/firebase/client/core/Context;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v3, Lcom/firebase/tubesock/WebSocket;

    invoke-direct {v3, v2, v6, v1}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    .local v3, "ws":Lcom/firebase/tubesock/WebSocket;
    new-instance v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    invoke-direct {v0, p0, v3, v6}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;Lcom/firebase/tubesock/WebSocket;Lcom/firebase/client/realtime/WebsocketConnection$1;)V

    .line 165
    .local v0, "client":Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;
    return-object v0
.end method

.method private extractFrameCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    .line 248
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, "frameCount":I
    if-lez v0, :cond_0

    .line 250
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/WebsocketConnection;->handleNewFrameCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    const/4 p1, 0x0

    .line 258
    .end local v0    # "frameCount":I
    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 253
    .restart local p1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 257
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/firebase/client/realtime/WebsocketConnection;->handleNewFrameCount(I)V

    goto :goto_0
.end method

.method private handleIncomingFrame(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-boolean v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    if-nez v1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->resetKeepAlive()V

    .line 264
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->extractFrameCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "remaining":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNewFrameCount(I)V
    .locals 4
    .param p1, "numFrames"    # I

    .prologue
    .line 238
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    .line 239
    new-instance v0, Lcom/firebase/client/realtime/util/StringListReader;

    invoke-direct {v0}, Lcom/firebase/client/realtime/util/StringListReader;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    .line 240
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleNewFrameCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method private isBuffering()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frameReader:Lcom/firebase/client/realtime/util/StringListReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nop()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/firebase/client/realtime/WebsocketConnection$2;

    invoke-direct {v0, p0}, Lcom/firebase/client/realtime/WebsocketConnection$2;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;)V

    return-object v0
.end method

.method private onClosed()V
    .locals 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "closing itself"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    .line 309
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    .line 310
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 313
    :cond_2
    return-void
.end method

.method private resetKeepAlive()V
    .locals 4

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 279
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset keepAlive. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 283
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->nop()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/RunLoop;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    .line 285
    :cond_1
    return-void

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Reset keepAlive"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shutdown()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    .line 317
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

    iget-boolean v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    invoke-interface {v0, v1}, Lcom/firebase/client/realtime/WebsocketConnection$Delegate;->onDisconnect(Z)V

    .line 318
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "websocket is being closed"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 183
    :cond_0
    iput-boolean v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    .line 186
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->close()V

    .line 187
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 193
    :cond_2
    return-void
.end method

.method public open()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->connect()V

    .line 170
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/realtime/WebsocketConnection$1;

    invoke-direct {v1, p0}, Lcom/firebase/client/realtime/WebsocketConnection$1;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;)V

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/RunLoop;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 175
    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->resetKeepAlive()V

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v4, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "toSend":Ljava/lang/String;
    const/16 v4, 0x4000

    invoke-static {v3, v4}, Lcom/firebase/client/utilities/Utilities;->splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "segs":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 202
    iget-object v4, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V

    .line 205
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    .end local v2    # "segs":[Ljava/lang/String;
    .end local v3    # "toSend":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to serialize message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
