.class final Lcom/firebase/tubesock/WebSocket$1;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Lcom/firebase/tubesock/ThreadInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/tubesock/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 63
    return-void
.end method
