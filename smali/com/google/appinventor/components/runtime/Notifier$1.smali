.class final Lcom/google/appinventor/components/runtime/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$1;->val$callBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$1;->val$callBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$1;->val$callBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 192
    :cond_0
    return-void
.end method
