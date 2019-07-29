.class Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->onOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;


# direct methods
.method constructor <init>(Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$000(Lcom/firebase/client/realtime/WebsocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 59
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$102(Lcom/firebase/client/realtime/WebsocketConnection;Z)Z

    .line 60
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    const-string v1, "websocket opened"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$1;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$300(Lcom/firebase/client/realtime/WebsocketConnection;)V

    .line 62
    return-void
.end method
