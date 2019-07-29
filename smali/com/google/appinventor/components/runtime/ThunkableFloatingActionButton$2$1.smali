.class Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThunkableFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2$1;->this$1:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 298
    return-void
.end method
