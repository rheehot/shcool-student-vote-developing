.class Lcom/mirxtremapps/FirebaseStorage$8;
.super Ljava/lang/Object;
.source "FirebaseStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirxtremapps/FirebaseStorage;->performRequest(Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirxtremapps/FirebaseStorage;

.field final synthetic val$firebaseCode:I

.field final synthetic val$firebaseResponse:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mirxtremapps/FirebaseStorage;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iput p2, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    iput-object p3, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 1010
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget v1, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mirxtremapps/FirebaseStorage;->FirebaseStorageResponse(ILjava/lang/String;)V

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    invoke-static {v0}, Lcom/mirxtremapps/FirebaseStorage;->access$2100(Lcom/mirxtremapps/FirebaseStorage;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1016
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    if-ne v0, v3, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget v1, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mirxtremapps/FirebaseStorage;->StepOne(ILjava/lang/Object;)V

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget v1, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mirxtremapps/FirebaseStorage;->ErrorHandler(ILjava/lang/Object;)V

    goto :goto_0

    .line 1032
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    invoke-static {v0}, Lcom/mirxtremapps/FirebaseStorage;->access$2100(Lcom/mirxtremapps/FirebaseStorage;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1024
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    if-ne v0, v3, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget v1, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mirxtremapps/FirebaseStorage;->StepOne(ILjava/lang/Object;)V

    goto :goto_0

    .line 1027
    :cond_3
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$8;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget v1, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseCode:I

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$8;->val$firebaseResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mirxtremapps/FirebaseStorage;->ErrorHandler(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
