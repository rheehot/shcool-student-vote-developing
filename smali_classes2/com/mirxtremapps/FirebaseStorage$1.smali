.class Lcom/mirxtremapps/FirebaseStorage$1;
.super Ljava/lang/Object;
.source "FirebaseStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirxtremapps/FirebaseStorage;->Get(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirxtremapps/FirebaseStorage;

.field final synthetic val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage$1;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iput-object p2, p0, Lcom/mirxtremapps/FirebaseStorage$1;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$1;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$1;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "GET"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mirxtremapps/FirebaseStorage;->access$700(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$1;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    invoke-static {v1}, Lcom/mirxtremapps/FirebaseStorage;->access$800(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$1;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    const-string v3, "Get"

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_1
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Firebase Auth"

    const-string v2, "ERROR_UNABLE_TO_GET"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$1;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    invoke-static {v1}, Lcom/mirxtremapps/FirebaseStorage;->access$900(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$1;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    const-string v3, "Get"

    const/16 v4, 0x44d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mirxtremapps/FirebaseStorage$1;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    iget-object v6, v6, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
