.class Lcom/google/appinventor/components/runtime/ImageRecognizer$2;
.super Ljava/lang/Object;
.source "ImageRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImageRecognizer;->postImageFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

.field final synthetic val$_description:Ljava/lang/String;

.field final synthetic val$_descriptionScore:D

.field final synthetic val$_tags:Ljava/lang/String;

.field final synthetic val$responseCode:I

.field final synthetic val$responseContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ImageRecognizer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ImageRecognizer;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    iput p2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$responseContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$_tags:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$_description:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$_descriptionScore:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->this$0:Lcom/google/appinventor/components/runtime/ImageRecognizer;

    iget v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$responseCode:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$responseContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$_tags:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$_description:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;->val$_descriptionScore:D

    invoke-virtual/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->GotResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 219
    return-void
.end method
