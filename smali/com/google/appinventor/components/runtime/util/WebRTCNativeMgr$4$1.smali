.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4$1;
.super Ljava/util/TimerTask;
.source "WebRTCNativeMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    .line 314
    return-void
.end method
