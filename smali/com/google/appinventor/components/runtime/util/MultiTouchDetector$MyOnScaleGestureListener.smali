.class public Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MultiTouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;->this$0:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 55
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;->this$0:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->access$000(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)Lcom/google/appinventor/components/runtime/Canvas;

    move-result-object v1

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->Scale(D)V

    .line 56
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 69
    return-void
.end method
