.class Lcom/google/appinventor/components/runtime/PhoneCall$1;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/PhoneCall;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 98
    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->access$000(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    const-string v2, "Initialize"

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
