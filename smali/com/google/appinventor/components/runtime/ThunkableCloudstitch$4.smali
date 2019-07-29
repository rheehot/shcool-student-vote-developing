.class Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$4;
.super Ljava/lang/Object;
.source "ThunkableCloudstitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->postTextData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

.field final synthetic val$responseContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$4;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$4;->val$responseContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$4;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$4;->val$responseContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->AfterUpload(Ljava/lang/String;)V

    .line 241
    return-void
.end method
