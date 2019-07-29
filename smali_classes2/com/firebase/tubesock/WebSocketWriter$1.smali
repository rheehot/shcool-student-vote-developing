.class Lcom/firebase/tubesock/WebSocketWriter$1;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/tubesock/WebSocketWriter;-><init>(Lcom/firebase/tubesock/WebSocket;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/tubesock/WebSocketWriter;


# direct methods
.method constructor <init>(Lcom/firebase/tubesock/WebSocketWriter;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketWriter$1;->this$0:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter$1;->this$0:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-static {v0}, Lcom/firebase/tubesock/WebSocketWriter;->access$000(Lcom/firebase/tubesock/WebSocketWriter;)V

    .line 37
    return-void
.end method
