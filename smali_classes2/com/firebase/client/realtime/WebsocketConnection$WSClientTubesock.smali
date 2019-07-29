.class Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"

# interfaces
.implements Lcom/firebase/client/realtime/WebsocketConnection$WSClient;
.implements Lcom/firebase/tubesock/WebSocketEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/realtime/WebsocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WSClientTubesock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/realtime/WebsocketConnection;

.field private ws:Lcom/firebase/tubesock/WebSocket;


# direct methods
.method private constructor <init>(Lcom/firebase/client/realtime/WebsocketConnection;Lcom/firebase/tubesock/WebSocket;)V
    .locals 1
    .param p2, "ws"    # Lcom/firebase/tubesock/WebSocket;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->ws:Lcom/firebase/tubesock/WebSocket;

    .line 51
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->ws:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0, p0}, Lcom/firebase/tubesock/WebSocket;->setEventHandler(Lcom/firebase/tubesock/WebSocketEventHandler;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/realtime/WebsocketConnection;Lcom/firebase/tubesock/WebSocket;Lcom/firebase/client/realtime/WebsocketConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firebase/client/realtime/WebsocketConnection;
    .param p2, "x1"    # Lcom/firebase/tubesock/WebSocket;
    .param p3, "x2"    # Lcom/firebase/client/realtime/WebsocketConnection$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;Lcom/firebase/tubesock/WebSocket;)V

    return-void
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->ws:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocket;->close()V

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->ws:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocket;->blockClose()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->ws:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocket;->close()V

    .line 115
    return-void
.end method

.method public connect()V
    .locals 3

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->ws:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocket;->connect()V
    :try_end_0
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/firebase/tubesock/WebSocketException;
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    const-string v2, "Error connecting"

    invoke-virtual {v1, v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->shutdown()V

    goto :goto_0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "closed"

    .line 80
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$400(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/core/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$3;

    invoke-direct {v2, p0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$3;-><init>(Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;)V

    invoke-interface {v1, v2}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public onError(Lcom/firebase/tubesock/WebSocketException;)V
    .locals 2
    .param p1, "e"    # Lcom/firebase/tubesock/WebSocketException;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$400(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/core/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;-><init>(Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;Lcom/firebase/tubesock/WebSocketException;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public onLogMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tubesock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onMessage(Lcom/firebase/tubesock/WebSocketMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/firebase/tubesock/WebSocketMessage;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/firebase/tubesock/WebSocketMessage;->getText()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ws message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$400(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/core/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$2;

    invoke-direct {v2, p0, v0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$2;-><init>(Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$400(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/core/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;

    invoke-direct {v1, p0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;-><init>(Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->ws:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(Ljava/lang/String;)V

    .line 111
    return-void
.end method
