.class public final Lcom/google/appinventor/components/runtime/VideoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>SeekTo</code> methods.  <p>Video files should be in 3GPP (.3gp) or MPEG-4 (.mp4) formats.  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p><p>You can also set the media source to a URL that points to a streaming video, but the URL must point to the video file itself, not to a program that plays the video."
    docUri = "image/video-player"
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
    }
.end annotation


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private delayedStart:Z

.field private inFullScreen:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mediaReady:Z

.field private sourcePath:Ljava/lang/String;

.field private final videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 116
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 121
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    .line 136
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 137
    new-instance v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 144
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 146
    const/16 v0, 0xb0

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 148
    const/16 v0, 0x90

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 152
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/VideoPlayer;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private prepareToDie()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->stopPlayback()V

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 399
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->clearAnimation()V

    .line 401
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 402
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 404
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v1, :cond_1

    .line 405
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "FullScreenKey"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xc3

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 410
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 335
    const-string v0, "Completed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public FullScreen(Z)V
    .locals 9
    .param p1, "value"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    const/16 v5, 0xc3

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 487
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    .line 488
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "FullScreen(true)"

    const/16 v5, 0x517

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eq p1, v3, :cond_0

    .line 494
    if-eqz p1, :cond_3

    .line 495
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "PositionKey"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .line 497
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getCurrentPosition()I

    move-result v4

    .line 496
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    const-string v3, "PlayingKey"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .line 499
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v4

    .line 498
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->pause()V

    .line 501
    const-string v3, "FullScreenKey"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    const-string v3, "SourceKey"

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3, v5, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 505
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "ActionSuccess"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    goto :goto_0

    .line 508
    :cond_2
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 509
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "FullScreen"

    const/16 v5, 0x515

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v2, "values":Landroid/os/Bundle;
    const-string v3, "FullScreenKey"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 515
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3, v5, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 518
    .restart local v1    # "result":Landroid/os/Bundle;
    const-string v3, "ActionSuccess"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 521
    :cond_4
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 522
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "FullScreen"

    const/16 v5, 0x516

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public FullScreen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    return v0
.end method

.method public GetDuration()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns duration of the video in milliseconds."
    .end annotation

    .prologue
    .line 309
    const-string v1, "VideoPlayer"

    const-string v2, "Calling GetDuration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xc4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 313
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "ActionData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    .end local v0    # "result":Landroid/os/Bundle;
    :goto_0
    return v1

    .line 316
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 319
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getDuration()I

    move-result v1

    goto :goto_0
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 448
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->changeVideoSize(II)V

    .line 464
    return-void
.end method

.method public Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 276
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 280
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->pause()V

    goto :goto_0
.end method

.method public SeekTo(I)V
    .locals 3
    .param p1, "ms"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Seeks to the requested time (specified in milliseconds) in the video. If the video is paused, the frame shown will not be updated by the seek. The player can jump only to key frames in the video, so seeking to times that differ by short intervals may not actually move to different frames."
    .end annotation

    .prologue
    .line 293
    const-string v0, "VideoPlayer"

    const-string v1, "Calling SeekTo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-gez p1, :cond_0

    .line 295
    const/4 p1, 0x0

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbe

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 298
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->seekTo(I)V

    goto :goto_0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer."
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 179
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v1, v2, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 215
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local p1    # "path":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidateMediaPlayer(Z)V

    .line 191
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->stopPlayback()V

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 195
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->clearAnimation()V

    .line 197
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 198
    const-string v1, "VideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 202
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    const-string v1, "VideoPlayer"

    const-string v2, "loading video succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "Source"

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_0

    .line 206
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "Source"

    const/16 v3, 0x2bd

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts playback of the video."
    .end annotation

    .prologue
    .line 224
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->start()V

    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    goto :goto_0
.end method

.method public VideoPlayerError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The VideoPlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 378
    return-void
.end method

.method public Volume(I)V
    .locals 4
    .param p1, "vol"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100. Values less than 0 will be treated as 0, and values greater than 100 will be treated as 100."
    .end annotation

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 255
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 256
    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    int-to-float v1, p1

    div-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 260
    :cond_0
    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 421
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 436
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->changeVideoSize(II)V

    .line 437
    return-void
.end method

.method public delayedStart()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 269
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 270
    return-void
.end method

.method public fullScreenKilled(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 536
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 537
    const-string v1, "SourceKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "newSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->requestLayout()V

    .line 543
    const-string v1, "PositionKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 544
    const-string v1, "PlayingKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 547
    :cond_1
    return-void
.end method

.method public getPassedHeight()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    return v0
.end method

.method public getPassedWidth()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "m"    # Landroid/media/MediaPlayer;

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    .line 328
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 392
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 385
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "m"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidateMediaPlayer(Z)V

    .line 352
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 353
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 355
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: what is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 357
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "Source"

    const/16 v2, 0x2bd

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 360
    return v6
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "newMediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 365
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 367
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMediaPlayer(Landroid/media/MediaPlayer;Z)V

    .line 369
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 372
    :cond_0
    return-void
.end method
