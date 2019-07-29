.class Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;
.super Ljava/lang/Object;
.source "ThunkableCloudinary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->postMediaFile(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$responseContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;->val$responseContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;->val$responseContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->GotResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method
