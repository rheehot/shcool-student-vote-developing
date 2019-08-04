.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Lorg/webrtc/PeerConnection$Observer;


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
    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddStream(Lorg/webrtc/MediaStream;)V
    .locals 0
    .param p1, "mediaStream"    # Lorg/webrtc/MediaStream;

    .prologue
    .line 126
    return-void
.end method

.method public onAddTrack(Lorg/webrtc/RtpReceiver;[Lorg/webrtc/MediaStream;)V
    .locals 0
    .param p1, "rtpReceiver"    # Lorg/webrtc/RtpReceiver;
    .param p2, "mediaStreamArr"    # [Lorg/webrtc/MediaStream;

    .prologue
    .line 129
    return-void
.end method

.method public onDataChannel(Lorg/webrtc/DataChannel;)V
    .locals 2
    .param p1, "dataChannel"    # Lorg/webrtc/DataChannel;

    .prologue
    .line 133
    const-string v0, "AppInvWebRTC"

    const-string v1, "Have Data Channel!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "AppInvWebRTC"

    const-string v1, "v5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$202(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    invoke-virtual {p1, v0}, Lorg/webrtc/DataChannel;->registerObserver(Lorg/webrtc/DataChannel$Observer;)V

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$302(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 141
    const-string v0, "AppInvWebRTC"

    const-string v1, "Poller() Canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$400(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 144
    return-void
.end method

.method public onIceCandidate(Lorg/webrtc/IceCandidate;)V
    .locals 6
    .param p1, "iceCandidate"    # Lorg/webrtc/IceCandidate;

    .prologue
    .line 149
    :try_start_0
    const-string v3, "AppInvWebRTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IceCandidate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/webrtc/IceCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v2, "response":Lorg/json/JSONObject;
    const-string v3, "nonce"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$500(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;

    move-result-object v4

    const v5, 0x186a0

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v1, "jsonCandidate":Lorg/json/JSONObject;
    const-string v3, "candidate"

    iget-object v4, p1, Lorg/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v3, "sdpMLineIndex"

    iget v4, p1, Lorg/webrtc/IceCandidate;->sdpMLineIndex:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v3, "sdpMid"

    iget-object v4, p1, Lorg/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v3, "candidate"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "jsonCandidate":Lorg/json/JSONObject;
    .end local v2    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AppInvWebRTC"

    const-string v4, "Exception during onIceCandidate"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onIceCandidatesRemoved([Lorg/webrtc/IceCandidate;)V
    .locals 0
    .param p1, "iceCandidateArr"    # [Lorg/webrtc/IceCandidate;

    .prologue
    .line 166
    return-void
.end method

.method public onIceConnectionChange(Lorg/webrtc/PeerConnection$IceConnectionState;)V
    .locals 0
    .param p1, "iceConnectionState"    # Lorg/webrtc/PeerConnection$IceConnectionState;

    .prologue
    .line 169
    return-void
.end method

.method public onIceConnectionReceivingChange(Z)V
    .locals 0
    .param p1, "z"    # Z

    .prologue
    .line 172
    return-void
.end method

.method public onIceGatheringChange(Lorg/webrtc/PeerConnection$IceGatheringState;)V
    .locals 0
    .param p1, "iceGatheringState"    # Lorg/webrtc/PeerConnection$IceGatheringState;

    .prologue
    .line 175
    return-void
.end method

.method public onRemoveStream(Lorg/webrtc/MediaStream;)V
    .locals 0
    .param p1, "mediaStream"    # Lorg/webrtc/MediaStream;

    .prologue
    .line 178
    return-void
.end method

.method public onRenegotiationNeeded()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onSignalingChange(Lorg/webrtc/PeerConnection$SignalingState;)V
    .locals 0
    .param p1, "signalingState"    # Lorg/webrtc/PeerConnection$SignalingState;

    .prologue
    .line 184
    return-void
.end method
