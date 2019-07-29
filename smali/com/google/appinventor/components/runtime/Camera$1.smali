.class Lcom/google/appinventor/components/runtime/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Camera;->TakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Camera;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/Camera;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Camera;Lcom/google/appinventor/components/runtime/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Camera;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camera$1;->this$0:Lcom/google/appinventor/components/runtime/Camera;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Camera$1;->val$me:Lcom/google/appinventor/components/runtime/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera$1;->this$0:Lcom/google/appinventor/components/runtime/Camera;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.CAMERA"

    new-instance v2, Lcom/google/appinventor/components/runtime/Camera$1$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Camera$1$1;-><init>(Lcom/google/appinventor/components/runtime/Camera$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 148
    return-void
.end method
