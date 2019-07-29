.class Lcom/google/appinventor/components/runtime/ThunkablePushNotification$1;
.super Ljava/lang/Object;
.source "ThunkablePushNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkablePushNotification;->onOSSubscriptionChanged(Lcom/onesignal/OSSubscriptionStateChanges;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkablePushNotification;

.field final synthetic val$changes:Lcom/onesignal/OSSubscriptionStateChanges;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkablePushNotification;Lcom/onesignal/OSSubscriptionStateChanges;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkablePushNotification;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkablePushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkablePushNotification;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ThunkablePushNotification$1;->val$changes:Lcom/onesignal/OSSubscriptionStateChanges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkablePushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkablePushNotification;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkablePushNotification$1;->val$changes:Lcom/onesignal/OSSubscriptionStateChanges;

    invoke-virtual {v1}, Lcom/onesignal/OSSubscriptionStateChanges;->getTo()Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkablePushNotification;->UserIdReady(Ljava/lang/String;)V

    .line 106
    return-void
.end method
