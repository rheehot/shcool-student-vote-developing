.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Lorg/webrtc/SdpObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 88
    return-void
.end method

.method public onCreateSuccess(Lorg/webrtc/SessionDescription;)V
    .locals 7
    .param p1, "sessionDescription"    # Lorg/webrtc/SessionDescription;

    .prologue
    .line 92
    :try_start_0
    const-string v4, "AppInvWebRTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdp.type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    invoke-virtual {v6}, Lorg/webrtc/SessionDescription$Type;->canonicalForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v4, "AppInvWebRTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdp.description = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v1, Lorg/webrtc/DataChannel$Init;

    invoke-direct {v1}, Lorg/webrtc/DataChannel$Init;-><init>()V

    .line 95
    .local v1, "init":Lorg/webrtc/DataChannel$Init;
    iget-object v4, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    sget-object v5, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    if-ne v4, v5, :cond_1

    .line 96
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    invoke-virtual {v4, v5, p1}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 113
    .end local v1    # "init":Lorg/webrtc/DataChannel$Init;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v1    # "init":Lorg/webrtc/DataChannel$Init;
    :cond_1
    iget-object v4, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    sget-object v5, Lorg/webrtc/SessionDescription$Type;->ANSWER:Lorg/webrtc/SessionDescription$Type;

    if-ne v4, v5, :cond_0

    .line 98
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    invoke-virtual {v4, v5, p1}, Lorg/webrtc/PeerConnection;->setLocalDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 100
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v2, "offer":Lorg/json/JSONObject;
    const-string v4, "type"

    const-string v5, "answer"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v4, "sdp"

    iget-object v5, p1, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 104
    .local v3, "response":Lorg/json/JSONObject;
    const-string v4, "offer"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "init":Lorg/webrtc/DataChannel$Init;
    .end local v2    # "offer":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AppInvWebRTC"

    const-string v5, "Exception during onCreateSuccess"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSetFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public onSetSuccess()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
