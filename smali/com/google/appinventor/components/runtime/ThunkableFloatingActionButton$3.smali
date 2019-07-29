.class Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThunkableFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->hideFAB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 313
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->access$200(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    return-void
.end method
