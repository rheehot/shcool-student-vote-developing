.class public Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
.super Ljava/lang/Object;
.source "FullScreenVideoUtil.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final ACTION_DATA:Ljava/lang/String; = "ActionData"

.field public static final ACTION_SUCESS:Ljava/lang/String; = "ActionSuccess"

.field public static final FULLSCREEN_VIDEO_ACTION_DURATION:I = 0xc4

.field public static final FULLSCREEN_VIDEO_ACTION_FULLSCREEN:I = 0xc3

.field public static final FULLSCREEN_VIDEO_ACTION_PAUSE:I = 0xc0

.field public static final FULLSCREEN_VIDEO_ACTION_PLAY:I = 0xbf

.field public static final FULLSCREEN_VIDEO_ACTION_SEEK:I = 0xbe

.field public static final FULLSCREEN_VIDEO_ACTION_SOURCE:I = 0xc2

.field public static final FULLSCREEN_VIDEO_ACTION_STOP:I = 0xc1

.field public static final FULLSCREEN_VIDEO_DIALOG_FLAG:I = 0xbd

.field public static final VIDEOPLAYER_FULLSCREEN:Ljava/lang/String; = "FullScreenKey"

.field public static final VIDEOPLAYER_PLAYING:Ljava/lang/String; = "PlayingKey"

.field public static final VIDEOPLAYER_POSITION:Ljava/lang/String; = "PositionKey"

.field public static final VIDEOPLAYER_SOURCE:Ljava/lang/String; = "SourceKey"


# instance fields
.field private mForm:Lcom/google/appinventor/components/runtime/Form;

.field private mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

.field private mFullScreenVideoBundle:Landroid/os/Bundle;

.field private mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

.field private mFullScreenVideoDialog:Landroid/app/Dialog;

.field private mFullScreenVideoHolder:Landroid/widget/FrameLayout;

.field private mFullScreenVideoView:Landroid/widget/VideoView;

.field private mHandler:Landroid/os/Handler;

.field private mMediaControllerParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V
    .locals 5
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const v4, 0x1030007

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mMediaControllerParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    .line 104
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 107
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, p0, v1, v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    .line 150
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, p0, v1, v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Lcom/google/appinventor/components/runtime/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    return-object v0
.end method

.method private doFullScreenVideoAction(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xbd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    const-string v1, "Form.doFullScreenVideoAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    const-string v1, "FullScreenKey"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v5, :cond_1

    .line 269
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 270
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 271
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/Form;->showDialog(I)V

    .line 298
    :goto_0
    return-object v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 276
    const-string v1, "ActionSuccess"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v3, "SourceKey"

    .line 277
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    const-string v1, "PlayingKey"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 283
    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    const-string v1, "PositionKey"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 285
    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string v1, "SourceKey"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v3, "SourceKey"

    .line 288
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 291
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 293
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v6}, Lcom/google/appinventor/components/runtime/Form;->dismissDialog(I)V

    goto :goto_0

    .line 297
    :cond_2
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public createFullScreenVideoDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 308
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 309
    const-string v1, "Form.createFullScreenVideoDialog"

    const-string v2, "mFullScreenVideoBundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    new-instance v1, Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 312
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    .line 313
    new-instance v1, Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    .line 315
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setId(I)V

    .line 316
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 318
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 320
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setAnchorView(Landroid/view/View;)V

    .line 330
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "orientation":Ljava/lang/String;
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sensorLandscape"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "reverseLandscape"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 343
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mMediaControllerParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->addTo(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 353
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 354
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    return-object v1

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public dialogInitialized()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    .line 429
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 436
    const-string v0, "FullScreenVideoUtil..onPrepared"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v3, "PositionKey"

    .line 440
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v2, "PositionKey"

    .line 442
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v1, "PlayingKey"

    .line 444
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 456
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$4;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public declared-synchronized performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 5
    .param p1, "action"    # I
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    const-string v2, "Form.fullScreenVideoAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Current Source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "result":Landroid/os/Bundle;
    const-string v2, "ActionSuccess"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-ne p2, v2, :cond_7

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 257
    :cond_0
    const-string v2, "ActionSuccess"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v0    # "result":Landroid/os/Bundle;
    .end local p3    # "data":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 196
    .restart local v0    # "result":Landroid/os/Bundle;
    .restart local p3    # "data":Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    check-cast p3, Landroid/os/Bundle;

    .end local p3    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->doFullScreenVideoAction(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 198
    .restart local p3    # "data":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v0    # "result":Landroid/os/Bundle;
    .end local p3    # "data":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 202
    .restart local v0    # "result":Landroid/os/Bundle;
    .restart local p3    # "data":Ljava/lang/Object;
    :cond_1
    :try_start_2
    const-string v2, "ActionSuccess"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 209
    :cond_2
    const-string v2, "ActionSuccess"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 212
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "data":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0

    .line 216
    .restart local p3    # "data":Ljava/lang/Object;
    :cond_3
    const-string v2, "ActionSuccess"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 219
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    .line 223
    :cond_4
    const-string v2, "ActionSuccess"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 226
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    const-string v2, "ActionSuccess"

    check-cast p3, Ljava/lang/String;

    .end local p3    # "data":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-virtual {p0, p3, v3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 230
    .restart local p3    # "data":Ljava/lang/Object;
    :cond_5
    const-string v2, "ActionSuccess"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 233
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 234
    const-string v2, "ActionData"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 237
    :cond_6
    const-string v2, "ActionSuccess"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 240
    :cond_7
    const/16 v2, 0xc3

    if-ne p1, v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz v2, :cond_8

    .line 243
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v1, "values":Landroid/os/Bundle;
    const-string v2, "PositionKey"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 245
    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    .line 244
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v2, "PlayingKey"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 247
    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v2, "SourceKey"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v4, "SourceKey"

    .line 250
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    .line 253
    .end local v1    # "values":Landroid/os/Bundle;
    :cond_8
    check-cast p3, Landroid/os/Bundle;

    .end local p3    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->doFullScreenVideoAction(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public prepareFullScreenVideoDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dia"    # Landroid/app/Dialog;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 367
    return-void
.end method

.method public setSource(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "clearSeek"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    if-eqz p2, :cond_0

    .line 403
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v4, "PositionKey"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v4, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 408
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v4, "SourceKey"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 417
    :goto_0
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string v4, "Source"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_0

    .line 414
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string v5, "Source"

    const/16 v6, 0x2bd

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showing()Z
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->dialogInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDialog()V
    .locals 9

    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v4, "SourceKey"

    .line 465
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string v3, "Source"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_0

    .line 468
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string v3, "Source"

    const/16 v4, 0x2bd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v8, "SourceKey"

    .line 471
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 469
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
