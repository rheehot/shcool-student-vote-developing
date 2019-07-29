.class public Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvWebRTC"

.field private static final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# instance fields
.field private volatile background:Ljava/util/concurrent/ExecutorService;

.field private dataChannel:Lorg/webrtc/DataChannel;

.field dataObserver:Lorg/webrtc/DataChannel$Observer;

.field private first:Z

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private haveOffer:Z

.field private volatile keepPolling:Z

.field observer:Lorg/webrtc/PeerConnection$Observer;

.field private peerConnection:Lorg/webrtc/PeerConnection;

.field private rCode:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private rendezvousServer:Ljava/lang/String;

.field sdpObserver:Lorg/webrtc/SdpObserver;

.field private seenNonces:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rendezvousServer"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->background:Ljava/util/concurrent/ExecutorService;

    .line 74
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    .line 77
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    .line 78
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    .line 79
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    .line 81
    const-string v0, "rendezvous.appinventor.mit.edu"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    .line 86
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    .line 123
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    .line 179
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    .line 200
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 201
    return-void
.end method

.method private Poller()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sendRendezvous(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->Poller()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Lorg/webrtc/DataChannel;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$600()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    return-object v0
.end method

.method private sendRendezvous(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 323
    :try_start_0
    const-string v3, "first"

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 324
    const-string v3, "webrtc"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 325
    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    if-eqz v3, :cond_0

    .line 327
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    .line 328
    const-string v3, "apiversion"

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 331
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/rendezvous2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    const-string v3, "AppInvWebRTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to send = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 335
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-void

    .line 336
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "AppInvWebRTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRedezvous IOException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 339
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AppInvWebRTC"

    const-string v4, "Exception in sendRendezvous"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 206
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    .line 208
    const/4 v3, 0x0

    invoke-static {p2, v3}, Lorg/webrtc/PeerConnectionFactory;->initializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 210
    new-instance v2, Lorg/webrtc/PeerConnectionFactory$Options;

    invoke-direct {v2}, Lorg/webrtc/PeerConnectionFactory$Options;-><init>()V

    .line 212
    .local v2, "options":Lorg/webrtc/PeerConnectionFactory$Options;
    new-instance v0, Lorg/webrtc/PeerConnectionFactory;

    invoke-direct {v0, v2}, Lorg/webrtc/PeerConnectionFactory;-><init>(Lorg/webrtc/PeerConnectionFactory$Options;)V

    .line 214
    .local v0, "factory":Lorg/webrtc/PeerConnectionFactory;
    const-string v3, "turn:turn.appinventor.mit.edu:3478"

    invoke-static {v3}, Lorg/webrtc/PeerConnection$IceServer;->builder(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v3

    const-string v4, "oh"

    .line 215
    invoke-virtual {v3, v4}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setUsername(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v3

    const-string v4, "boy"

    .line 216
    invoke-virtual {v3, v4}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setPassword(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lorg/webrtc/PeerConnection$IceServer$Builder;->createIceServer()Lorg/webrtc/PeerConnection$IceServer;

    move-result-object v1

    .line 220
    .local v1, "iceServer":Lorg/webrtc/PeerConnection$IceServer;
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/webrtc/MediaConstraints;

    invoke-direct {v4}, Lorg/webrtc/MediaConstraints;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    invoke-virtual {v0, v3, v4, v5}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Ljava/util/List;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    .line 223
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->Poller()V

    .line 225
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 5
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    if-nez v3, :cond_0

    .line 347
    const-string v3, "AppInvWebRTC"

    const-string v4, "No Data Channel in Send"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 351
    .local v0, "bbuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lorg/webrtc/DataChannel$Buffer;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lorg/webrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 352
    .local v1, "buffer":Lorg/webrtc/DataChannel$Buffer;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    invoke-virtual {v3, v1}, Lorg/webrtc/DataChannel;->send(Lorg/webrtc/DataChannel$Buffer;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v0    # "bbuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "buffer":Lorg/webrtc/DataChannel$Buffer;
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "AppInvWebRTC"

    const-string v4, "While encoding data to send to companion"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
