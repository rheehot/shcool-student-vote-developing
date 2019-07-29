.class public Lcom/google/appinventor/components/runtime/Camera;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Camera.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to take a picture using the device\'s camera. After the picture is taken, the name of the file on the phone containing the picture is available as an argument to the AfterPicture event. The file name can be used, for example, to set the Picture property of an Image component."
    docUri = "image/camera"
    iconName = "images/camera.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE, android.permission.CAMERA, android.permission.FLASHLIGHT"
.end annotation


# static fields
.field private static final CAMERA_INTENT:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field private static final CAMERA_OUTPUT:Ljava/lang/String; = "output"


# instance fields
.field private cam:Landroid/hardware/Camera;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private final context:Landroid/app/Activity;

.field private hasFlash:Z

.field private havePermission:Z

.field private imageFile:Landroid/net/Uri;

.field private lightOn:Z

.field private requestCode:I

.field private useFront:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 66
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Camera;->lightOn:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->hasFlash:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    .line 76
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 88
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Camera;->lightOn:Z

    .line 89
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->context:Landroid/app/Activity;

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->hasFlash:Z

    .line 92
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->UseFront(Z)V

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Camera;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Camera;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    return p1
.end method

.method private deleteFile(Landroid/net/Uri;)V
    .locals 5
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 234
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "fileToDelete":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got security exception trying to delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scanFileToAdd(Ljava/io/File;)V
    .locals 3
    .param p1, "image"    # Ljava/io/File;

    .prologue
    .line 227
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "mediaScanIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 229
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    return-void
.end method


# virtual methods
.method public AfterPicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "image"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 253
    const-string v0, "AfterPicture"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public HasFlash()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->hasFlash:Z

    return v0
.end method

.method public TakePicture()V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 128
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 129
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "state":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    if-nez v6, :cond_0

    .line 131
    move-object v3, p0

    .line 132
    .local v3, "me":Lcom/google/appinventor/components/runtime/Camera;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v7, Lcom/google/appinventor/components/runtime/Camera$1;

    invoke-direct {v7, p0, v3}, Lcom/google/appinventor/components/runtime/Camera$1;-><init>(Lcom/google/appinventor/components/runtime/Camera;Lcom/google/appinventor/components/runtime/Camera;)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    .end local v3    # "me":Lcom/google/appinventor/components/runtime/Camera;
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v6, "mounted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const-string v6, "CameraComponent"

    const-string v7, "External storage is available and writable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/Pictures/app_inventor_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 158
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    .line 161
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "_data"

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v6, "mime_type"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v6, "title"

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v6, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-nez v6, :cond_1

    .line 167
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v6

    iput v6, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    .line 170
    :cond_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, "imageUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "output"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/Camera;->useFront:Z

    if-eqz v6, :cond_2

    .line 178
    const-string v6, "android.intent.extras.CAMERA_FACING"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    :cond_2
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    invoke-virtual {v6, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 182
    .end local v1    # "imageUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v6, "mounted_ro"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 183
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v7, "TakePicture"

    const/16 v8, 0x2c0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 186
    :cond_4
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v7, "TakePicture"

    const/16 v8, 0x2c1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public ToggleLight()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 261
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    if-nez v4, :cond_0

    .line 262
    move-object v2, p0

    .line 263
    .local v2, "me":Lcom/google/appinventor/components/runtime/Camera;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v5, Lcom/google/appinventor/components/runtime/Camera$2;

    invoke-direct {v5, p0, v2}, Lcom/google/appinventor/components/runtime/Camera$2;-><init>(Lcom/google/appinventor/components/runtime/Camera;Lcom/google/appinventor/components/runtime/Camera;)V

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    .end local v2    # "me":Lcom/google/appinventor/components/runtime/Camera;
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Camera;->lightOn:Z

    if-eqz v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 286
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 287
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    .line 289
    :cond_1
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Camera;->lightOn:Z

    goto :goto_0

    .line 293
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    .line 294
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 295
    .local v3, "p":Landroid/hardware/Camera$Parameters;
    const-string v4, "torch"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 297
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 298
    .local v1, "mPreviewTexture":Landroid/graphics/SurfaceTexture;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 299
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Camera;->cam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 300
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Camera;->lightOn:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v1    # "mPreviewTexture":Landroid/graphics/SurfaceTexture;
    .end local v3    # "p":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public UseFront(Z)V
    .locals 0
    .param p1, "front"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the front-facing camera should be used (when available). If the device does not have a front-facing camera, this option will be ignored and the camera will open normally."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Camera;->useFront:Z

    .line 120
    return-void
.end method

.method public UseFront()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->useFront:Z

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 193
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning result. Request code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v2, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-ne p1, v2, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 196
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Camera;->scanFileToAdd(Ljava/io/File;)V

    .line 199
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->AfterPicture(Ljava/lang/String;)V

    .line 218
    .end local v0    # "image":Ljava/io/File;
    :goto_0
    return-void

    .line 201
    .restart local v0    # "image":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->deleteFile(Landroid/net/Uri;)V

    .line 203
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "tryImageUri":Landroid/net/Uri;
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling Camera.AfterPicture with image path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->AfterPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v1    # "tryImageUri":Landroid/net/Uri;
    :cond_1
    const-string v2, "CameraComponent"

    const-string v3, "Couldn\'t find an image file from the Camera result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "TakePicture"

    const/16 v4, 0xc9

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    .end local v0    # "image":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->deleteFile(Landroid/net/Uri;)V

    goto :goto_0
.end method
