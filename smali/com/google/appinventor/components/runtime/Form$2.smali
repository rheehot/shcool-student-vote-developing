.class Lcom/google/appinventor/components/runtime/Form$2;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$newOrientation:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$2;->val$newOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "dispatchEventNow":Z
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 621
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->val$newOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 622
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 623
    const/4 v0, 0x1

    .line 631
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 632
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$300(Lcom/google/appinventor/components/runtime/Form;)V

    .line 633
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 634
    .local v1, "savedLayout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$2$1;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Form$2$1;-><init>(Lcom/google/appinventor/components/runtime/Form$2;Landroid/widget/FrameLayout;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationChanged()V

    .line 648
    .end local v1    # "savedLayout":Landroid/widget/FrameLayout;
    :goto_1
    return-void

    .line 626
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 627
    const/4 v0, 0x1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
