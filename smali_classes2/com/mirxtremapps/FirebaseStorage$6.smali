.class Lcom/mirxtremapps/FirebaseStorage$6;
.super Ljava/lang/Object;
.source "FirebaseStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirxtremapps/FirebaseStorage;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirxtremapps/FirebaseStorage;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$httpVerb:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/mirxtremapps/FirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iput-object p2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$encoding:Ljava/lang/String;

    iput-object p3, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$functionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    iput-object p6, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$httpVerb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 733
    :try_start_0
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$encoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$encoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 734
    :cond_0
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$text:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 745
    .local v1, "requestData":[B
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$httpVerb:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/mirxtremapps/FirebaseStorage;->access$700(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 753
    .end local v1    # "requestData":[B
    :goto_1
    return-void

    .line 736
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .restart local v1    # "requestData":[B
    goto :goto_0

    .line 738
    .end local v1    # "requestData":[B
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    invoke-static {v2}, Lcom/mirxtremapps/FirebaseStorage;->access$1800(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget-object v4, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$functionName:Ljava/lang/String;

    const/16 v5, 0x44e

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$encoding:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 746
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "requestData":[B
    :catch_1
    move-exception v0

    .line 747
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    invoke-static {v2}, Lcom/mirxtremapps/FirebaseStorage;->access$1900(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget-object v4, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$functionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 749
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_2
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    invoke-static {v2}, Lcom/mirxtremapps/FirebaseStorage;->access$2000(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage$6;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget-object v4, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$functionName:Ljava/lang/String;

    const/16 v5, 0x44f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$text:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/mirxtremapps/FirebaseStorage$6;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    iget-object v7, v7, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method
