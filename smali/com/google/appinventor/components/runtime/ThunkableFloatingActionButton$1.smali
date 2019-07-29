.class Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$1;
.super Ljava/lang/Object;
.source "ThunkableFloatingActionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->create()V
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
    .line 130
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->Click()V

    .line 133
    return-void
.end method
