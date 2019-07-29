.class public Lcom/google/appinventor/components/runtime/ThunkablePushNotification;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkablePushNotification.java"

# interfaces
.implements Lcom/onesignal/OSSubscriptionObserver;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides push notification using the OneSignal service. Please refer to the <a href=\"http://onesignal.com/\">OneSignal</a> for more information."
    docUri = "push-notifications"
    iconName = "images/onesignal.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-play-services.jar,oneSignalSDK.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.c2dm.permission.RECEIVE, android.permission.WAKE_LOCK, android.permission.VIBRATE, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED ,com.sec.android.provider.badge.permission.READ ,com.sec.android.provider.badge.permission.WRITE ,com.htc.launcher.permission.READ_SETTINGS ,com.htc.launcher.permission.UPDATE_SHORTCUT ,com.sonyericsson.home.permission.BROADCAST_BADGE ,com.sonymobile.home.permission.PROVIDER_INSERT_BADGE ,com.anddoes.launcher.permission.UPDATE_COUNT ,com.majeur.launcher.permission.UPDATE_BADGE ,com.huawei.android.launcher.permission.CHANGE_BADGE ,com.huawei.android.launcher.permission.READ_SETTINGS ,com.huawei.android.launcher.permission.WRITE_SETTINGS"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThunkablePushNotification"


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OneSignal$Builder;->init()V

    .line 74
    invoke-static {p0}, Lcom/onesignal/OneSignal;->addSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkablePushNotification;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "ThunkablePushNotification"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "ThunkablePushNotification"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkablePushNotification;->GetUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkablePushNotification;->GetUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkablePushNotification;->UserIdReady(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public GetUserId()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return current user id or empty string when the user id is not yet ready."
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSPermissionSubscriptionState;->getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "userId":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "userId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public OneSignalAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public UserIdReady(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 113
    const-string v0, "UserIdReady"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public onOSSubscriptionChanged(Lcom/onesignal/OSSubscriptionStateChanges;)V
    .locals 2
    .param p1, "changes"    # Lcom/onesignal/OSSubscriptionStateChanges;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/onesignal/OSSubscriptionStateChanges;->getTo()Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkablePushNotification;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkablePushNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ThunkablePushNotification$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkablePushNotification;Lcom/onesignal/OSSubscriptionStateChanges;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    return-void
.end method
