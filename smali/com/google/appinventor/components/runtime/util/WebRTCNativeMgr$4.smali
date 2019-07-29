.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->Poller()V
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
    .line 233
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 236
    :try_start_0
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 237
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$800(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/rendezvous2/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$900(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-s"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 238
    .local v15, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v5, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 239
    .local v16, "response":Lorg/apache/http/HttpResponse;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v17, "sb":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    .line 243
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 244
    .local v14, "rd":Ljava/io/BufferedReader;
    const-string v11, ""

    .line 245
    .local v11, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 246
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 302
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 303
    .local v6, "e":Ljava/io/IOException;
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught IOException: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$300(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    move-object/from16 v23, v0

    new-instance v24, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4$1;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;)V

    const-wide/16 v26, 0x3e8

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 317
    :cond_0
    :goto_2
    return-void

    .line 248
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$300(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 249
    const-string v23, "AppInvWebRTC"

    const-string v24, "keepPolling is false, we\'re done!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 304
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    .line 305
    .local v6, "e":Lorg/json/JSONException;
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught JSONException: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 252
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "response = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v10, Lorg/json/JSONArray;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 254
    .local v10, "jsonArray":Lorg/json/JSONArray;
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "jsonArray.length() = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v8, 0x0

    .line 256
    .local v8, "i":I
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_7

    .line 257
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "i = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "element = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 260
    .local v7, "element":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 261
    const-string v23, "offer"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 262
    add-int/lit8 v8, v8, 0x1

    .line 263
    goto :goto_3

    .line 265
    :cond_3
    const-string v23, "offer"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 266
    .local v13, "offer":Lorg/json/JSONObject;
    const-string v23, "sdp"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 267
    .local v18, "sdp":Ljava/lang/String;
    const-string v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 268
    .local v22, "type":Ljava/lang/String;
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sdb = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "type = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1002(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z

    .line 271
    const-string v23, "AppInvWebRTC"

    const-string v24, "About to set remote offer"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    move-object/from16 v24, v0

    new-instance v25, Lorg/webrtc/SessionDescription;

    sget-object v26, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v25}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    move-object/from16 v24, v0

    new-instance v25, Lorg/webrtc/MediaConstraints;

    invoke-direct/range {v25 .. v25}, Lorg/webrtc/MediaConstraints;-><init>()V

    invoke-virtual/range {v23 .. v25}, Lorg/webrtc/PeerConnection;->createAnswer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    .line 275
    const-string v23, "AppInvWebRTC"

    const-string v24, "createAnswer returned"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v8, -0x1

    .line 299
    .end local v13    # "offer":Lorg/json/JSONObject;
    .end local v18    # "sdp":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 300
    goto/16 :goto_3

    .line 278
    :cond_5
    const-string v23, "nonce"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 279
    const-string v23, "nonce"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "nonce":Ljava/lang/String;
    const-string v23, "candidate"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 281
    const-string v23, "AppInvWebRTC"

    const-string v24, "Received a null candidate, skipping..."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    add-int/lit8 v8, v8, 0x1

    .line 283
    goto/16 :goto_3

    .line 285
    :cond_6
    const-string v23, "candidate"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 286
    .local v4, "candidate":Lorg/json/JSONObject;
    const-string v23, "candidate"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 287
    .local v21, "sdpcandidate":Ljava/lang/String;
    const-string v23, "sdpMid"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 288
    .local v20, "sdpMid":Ljava/lang/String;
    const-string v23, "sdpMLineIndex"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    .line 289
    .local v19, "sdpMLineIndex":I
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "candidate = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$400(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$400(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v23, "AppInvWebRTC"

    const-string v24, "new nonce, about to add candidate!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v9, Lorg/webrtc/IceCandidate;

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v9, v0, v1, v2}, Lorg/webrtc/IceCandidate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    .local v9, "iceCandidate":Lorg/webrtc/IceCandidate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lorg/webrtc/PeerConnection;->addIceCandidate(Lorg/webrtc/IceCandidate;)Z

    .line 295
    const-string v23, "AppInvWebRTC"

    const-string v24, "addIceCandidate returned"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 306
    .end local v4    # "candidate":Lorg/json/JSONObject;
    .end local v5    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "element":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v9    # "iceCandidate":Lorg/webrtc/IceCandidate;
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "nonce":Ljava/lang/String;
    .end local v14    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "sdpMLineIndex":I
    .end local v20    # "sdpMid":Ljava/lang/String;
    .end local v21    # "sdpcandidate":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 307
    .local v6, "e":Ljava/lang/Exception;
    const-string v23, "AppInvWebRTC"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 301
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "i":I
    .restart local v10    # "jsonArray":Lorg/json/JSONArray;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_3
    const-string v23, "AppInvWebRTC"

    const-string v24, "exited loop"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1
.end method
