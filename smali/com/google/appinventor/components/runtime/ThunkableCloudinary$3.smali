.class Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;
.super Ljava/lang/Object;
.source "ThunkableCloudinary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->postVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->val$path:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$000(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$100(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const-string v3, "PostFile"

    .line 209
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 208
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$100(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const-string v3, "PostFile"

    const/16 v4, 0x450

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->val$path:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string v6, "cloudinary"

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
