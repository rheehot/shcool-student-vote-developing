.class Lcom/google/appinventor/components/runtime/ImageRecognizer$1;
.super Ljava/lang/Object;
.source "ImageRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImageRecognizer;->postImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ImageRecognizer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ImageRecognizer;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->val$path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->access$000(Lcom/google/appinventor/components/runtime/ImageRecognizer;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    const-string v3, "PostFile"

    .line 137
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 136
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    const-string v3, "PostFile"

    const/16 v4, 0x450

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->val$path:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    .line 140
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->serverUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 139
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
