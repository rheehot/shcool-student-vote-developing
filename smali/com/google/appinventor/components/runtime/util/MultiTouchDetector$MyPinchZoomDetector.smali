.class public Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;
.super Landroid/view/ScaleGestureDetector;
.source "MultiTouchDetector.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPinchZoomDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "l"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;->this$0:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    .line 39
    invoke-direct {p0, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 40
    return-void
.end method
