.class Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;
.super Ljava/lang/Object;
.source "ThunkableCloudinary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->postImage(Ljava/lang/String;)V
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
    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->val$path:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$000(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$100(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const-string v3, "PostFile"

    .line 173
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 172
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$100(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const-string v3, "PostFile"

    const/16 v4, 0x450

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;->val$path:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v7, "cloudinary"

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
