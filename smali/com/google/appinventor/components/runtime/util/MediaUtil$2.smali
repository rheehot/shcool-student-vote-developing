.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$2;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$mediaPath:Ljava/lang/String;

.field final synthetic val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 426
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mediaPath = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v6, 0x0

    .line 428
    .local v6, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 429
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x1000

    new-array v3, v14, [B

    .line 433
    .local v3, "buf":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$100(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v6

    .line 434
    :goto_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "read":I
    if-lez v9, :cond_2

    .line 435
    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 438
    .end local v9    # "read":I
    :catch_0
    move-exception v5

    .line 439
    .local v5, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PERMISSION_DENIED:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    if-eqz v6, :cond_0

    .line 456
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 462
    .end local v5    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 464
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 468
    :goto_2
    const/4 v2, 0x0

    .line 521
    :cond_1
    :goto_3
    return-void

    .line 437
    .restart local v9    # "read":I
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 454
    if-eqz v6, :cond_3

    .line 456
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 462
    :cond_3
    :goto_4
    const/4 v6, 0x0

    .line 464
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 468
    :goto_5
    const/4 v2, 0x0

    .line 470
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 471
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    array-length v9, v3

    .line 472
    const/4 v3, 0x0

    .line 474
    :try_start_7
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    invoke-static {v14, v1, v15}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$200(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 476
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 477
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v1, v15, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$300(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v8, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 491
    .local v8, "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 492
    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_9

    .line 493
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v14, v8}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 512
    if-eqz v1, :cond_1

    .line 514
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 515
    :catch_1
    move-exception v5

    .line 517
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 457
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v5

    .line 459
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 457
    .end local v9    # "read":I
    .local v5, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_3
    move-exception v5

    .line 459
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 441
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 442
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    sget-object v15, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    if-ne v14, v15, :cond_6

    .line 444
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    .line 445
    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1080066

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 447
    .local v4, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v14, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 454
    if-eqz v6, :cond_5

    .line 456
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 462
    :cond_5
    :goto_6
    const/4 v6, 0x0

    .line 464
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    .line 468
    :goto_7
    const/4 v2, 0x0

    .line 448
    goto/16 :goto_3

    .line 457
    :catch_5
    move-exception v5

    .line 459
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 450
    .end local v4    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    :try_start_c
    const-string v14, "MediaUtil"

    const-string v15, "IOException reading file."

    invoke-static {v14, v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 454
    if-eqz v6, :cond_7

    .line 456
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 462
    :cond_7
    :goto_8
    const/4 v6, 0x0

    .line 464
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 468
    :goto_9
    const/4 v2, 0x0

    .line 452
    goto/16 :goto_3

    .line 457
    :catch_6
    move-exception v5

    .line 459
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 454
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v6, :cond_8

    .line 456
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 462
    :cond_8
    :goto_a
    const/4 v6, 0x0

    .line 464
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    .line 468
    :goto_b
    const/4 v2, 0x0

    .line 469
    throw v14

    .line 457
    :catch_7
    move-exception v5

    .line 459
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v15, "MediaUtil"

    const-string v16, "Unexpected error on close"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 496
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "read":I
    :cond_9
    :try_start_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v13, v14

    .line 497
    .local v13, "scaledWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v12, v14

    .line 498
    .local v12, "scaledHeight":I
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "form.deviceDensity() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "originalBitmapDrawable.getIntrinsicWidth() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v14, "MediaUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "originalBitmapDrawable.getIntrinsicHeight() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v13, v12, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 503
    .local v10, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v11, v14, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 504
    .local v11, "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 505
    const/4 v8, 0x0

    .line 506
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v14, v11}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 512
    if-eqz v1, :cond_1

    .line 514
    :try_start_12
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_3

    .line 515
    :catch_8
    move-exception v5

    .line 517
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 508
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "scaledHeight":I
    .end local v13    # "scaledWidth":I
    :catch_9
    move-exception v5

    .line 509
    .local v5, "e":Ljava/lang/Exception;
    :try_start_13
    const-string v14, "MediaUtil"

    const-string v15, "Exception while loading media."

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 512
    if-eqz v1, :cond_1

    .line 514
    :try_start_14
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_3

    .line 515
    :catch_a
    move-exception v5

    .line 517
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "MediaUtil"

    const-string v15, "Unexpected error on close"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 512
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    if-eqz v1, :cond_a

    .line 514
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 520
    :cond_a
    :goto_c
    throw v14

    .line 515
    :catch_b
    move-exception v5

    .line 517
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v15, "MediaUtil"

    const-string v16, "Unexpected error on close"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 465
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v14

    goto/16 :goto_5

    .end local v9    # "read":I
    :catch_d
    move-exception v14

    goto/16 :goto_2

    .restart local v4    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v14

    goto/16 :goto_7

    .end local v4    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_f
    move-exception v14

    goto/16 :goto_9

    .end local v5    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v15

    goto/16 :goto_b
.end method
