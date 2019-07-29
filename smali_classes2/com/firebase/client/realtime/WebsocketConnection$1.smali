.class Lcom/firebase/client/realtime/WebsocketConnection$1;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/realtime/WebsocketConnection;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/realtime/WebsocketConnection;


# direct methods
.method constructor <init>(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection$1;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$1;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$800(Lcom/firebase/client/realtime/WebsocketConnection;)V

    .line 173
    return-void
.end method
