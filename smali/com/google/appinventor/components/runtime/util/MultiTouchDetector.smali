.class public Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
.super Ljava/lang/Object;
.source "MultiTouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;,
        Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;
    }
.end annotation


# instance fields
.field private myCanvas:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->registerCanvas(Lcom/google/appinventor/components/runtime/Canvas;)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)Lcom/google/appinventor/components/runtime/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->myCanvas:Lcom/google/appinventor/components/runtime/Canvas;

    return-object v0
.end method

.method private registerCanvas(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 3
    .param p1, "myCanvas"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->myCanvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 30
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;

    .line 31
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;-><init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;-><init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 32
    .local v0, "myDetector":Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Canvas;->registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V

    .line 34
    .end local v0    # "myDetector":Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;
    :cond_0
    return-void
.end method
