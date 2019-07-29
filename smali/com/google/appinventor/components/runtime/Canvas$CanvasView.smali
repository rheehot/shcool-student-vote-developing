.class final Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
.super Landroid/view/View;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CanvasView"
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private completeCache:Landroid/graphics/Bitmap;

.field private scaledBackgroundBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    .line 386
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 387
    const/16 v0, 0x20

    const/16 v1, 0x30

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 390
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 391
    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # F

    .prologue
    .line 365
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->drawTextAtAngle(Ljava/lang/String;IIF)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 365
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 365
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getPixelColor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->buildCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method private buildCache()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 399
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setDrawingCacheEnabled(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->destroyDrawingCache()V

    .line 401
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 404
    .local v1, "cache":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getWidth()I

    move-result v3

    .line 406
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getHeight()I

    move-result v2

    .line 407
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, v3, v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->layout(IIII)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->draw(Landroid/graphics/Canvas;)V

    .line 412
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    return-object v1
.end method

.method private clearDrawingLayer()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 596
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 597
    return-void
.end method

.method private drawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "angle"    # F

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    neg-float v1, p4

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$700(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 616
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 617
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 618
    return-void
.end method

.method private getBackgroundPixelColor(II)I
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    const v2, 0xffffff

    .line 623
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge p1, v3, :cond_0

    if-ltz p2, :cond_0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 624
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt p2, v3, :cond_2

    :cond_0
    move v0, v2

    .line 658
    :cond_1
    :goto_0
    return v0

    .line 631
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 632
    .local v0, "color":I
    if-nez v0, :cond_1

    .line 638
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 639
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 640
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 641
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 642
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 640
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 645
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 646
    goto :goto_0

    .line 650
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$600(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 651
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$600(Lcom/google/appinventor/components/runtime/Canvas;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 653
    goto :goto_0

    .line 654
    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Canvas"

    const-string v4, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    new-array v5, v7, [Ljava/lang/Object;

    .line 657
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 658
    goto :goto_0
.end method

.method private getPixelColor(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const v3, 0xffffff

    .line 664
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge p1, v4, :cond_0

    if-ltz p2, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 665
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt p2, v4, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v3

    .line 670
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "anySpritesVisible":Z
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 674
    .local v2, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 675
    const/4 v0, 0x1

    .line 679
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_3
    if-nez v0, :cond_4

    .line 680
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result v3

    goto :goto_0

    .line 688
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->buildCache()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    .line 693
    .end local v0    # "anySpritesVisible":Z
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 694
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Canvas"

    const-string v5, "Returning COLOR_NONE (exception) from getPixelColor."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 697
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSize(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "preferredSize"    # I

    .prologue
    .line 517
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 518
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 520
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 522
    move v0, v2

    .line 532
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 525
    .end local v0    # "result":I
    :cond_1
    move v0, p2

    .line 526
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 528
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setBackground()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 581
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 582
    .local v0, "setDraw":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 584
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$600(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$600(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    :cond_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 591
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    return-void

    .line 588
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "setDraw":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    .line 589
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$600(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$600(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    :cond_2
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "setDraw":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas0"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 417
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    .line 420
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 424
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 428
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Sprite;

    .line 429
    .local v0, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 431
    .end local v0    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$102(Lcom/google/appinventor/components/runtime/Canvas;Z)Z

    .line 432
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 502
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 505
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 506
    .local v2, "preferredWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 511
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "preferredHeight":I
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v3

    .line 512
    invoke-direct {p0, p2, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v4

    .line 511
    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setMeasuredDimension(II)V

    .line 513
    return-void

    .line 508
    .end local v1    # "preferredHeight":I
    .end local v2    # "preferredWidth":I
    :cond_0
    const/16 v2, 0x20

    .line 509
    .restart local v2    # "preferredWidth":I
    const/16 v1, 0x30

    .restart local v1    # "preferredHeight":I
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    .line 436
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 437
    .local v4, "oldBitmapWidth":I
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 438
    .local v3, "oldBitmapHeight":I
    if-ne p1, v4, :cond_0

    if-eq p2, v3, :cond_1

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 453
    .local v2, "oldBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, p1, p2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 455
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 457
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 461
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 496
    .end local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 466
    .restart local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 470
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 473
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 474
    .local v6, "src":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, p1

    int-to-float v10, p2

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 475
    .local v0, "dst":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v6, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 478
    .end local v0    # "dst":Landroid/graphics/RectF;
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "src":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 487
    .local v1, "ioe":Ljava/lang/IllegalArgumentException;
    const-string v7, "Canvas"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad values to createScaledBimap w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 542
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    .line 543
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$200(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->parse(Landroid/view/MotionEvent;)V

    .line 544
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$300(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 546
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$400(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .line 549
    .local v0, "g":Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 551
    .end local v0    # "g":Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->access$602(Lcom/google/appinventor/components/runtime/Canvas;I)I

    .line 606
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 608
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    .line 609
    return-void
.end method

.method setBackgroundImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Canvas;->access$502(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;

    .line 564
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 565
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 567
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 577
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    .line 578
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "Canvas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
