.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Texting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it\'s not visible on the screen) and, moreso, even if the app is not running, so long as it\'s installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar.  Selecting the notification will bring up the app.  As an app developer, you\'ll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone\'s contacts.</p>"
    docUri = "social/texting"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-api-client-beta.jar,google-api-client-android2-beta.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client-beta.jar,guava-14.0.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCOUNT_MANAGER, android.permission.MANAGE_ACCOUNTS, android.permission.GET_ACCOUNTS, android.permission.USE_CREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;,
        Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;,
        Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "textingmsgcache"

.field public static final GV_INTENT_FILTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.googlevoice"

.field private static final GV_SERVICE:Ljava/lang/String; = "grandcentral"

.field public static final GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_SMS_SEND_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/sms/send/"

.field public static final GV_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/redirection/voice"

.field private static final MESSAGE_DELIMITER:Ljava/lang/String; = "\u0001"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field public static final META_DATA_SMS_KEY:Ljava/lang/String; = "sms_handler_component"

.field public static final META_DATA_SMS_VALUE:Ljava/lang/String; = "Texting"

.field public static final PHONE_NUMBER_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field private static final PREF_FILE:Ljava/lang/String; = "TextingState"

.field private static final PREF_GVENABLED:Ljava/lang/String; = "gvenabled"

.field private static final PREF_RCVENABLED:Ljava/lang/String; = "receiving2"

.field private static final PREF_RCVENABLED_LEGACY:Ljava/lang/String; = "receiving"

.field private static final SENT:Ljava/lang/String; = "SMS_SENT"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "Texting Component"

.field public static final TELEPHONY_INTENT_FILTER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TEXTING_REQUEST_CODE:I = 0x980f

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static activity:Landroid/app/Activity;

.field private static cacheLock:Ljava/lang/Object;

.field private static component:Lcom/google/appinventor/components/runtime/Component;

.field private static isRunning:Z

.field private static messagesCached:I

.field private static receivingEnabled:I


# instance fields
.field private authToken:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private googleVoiceEnabled:Z

.field private gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

.field private havePermission:Z

.field private haveReceivePermission:Z

.field private isInitialized:Z

.field private message:Ljava/lang/String;

.field private pendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private smsManager:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 202
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    .line 207
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    .line 210
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    .line 219
    const-string v1, "Texting Component"

    const-string v2, "Texting constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 221
    sput-object p0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 222
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    .line 224
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "TextingState"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    .line 226
    const-string v1, "receiving2"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 227
    sget v1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    if-ne v1, v5, :cond_0

    .line 228
    const-string v1, "receiving"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const/4 v1, 0x2

    sput v1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 235
    :cond_0
    :goto_0
    const-string v1, "gvenabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 236
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting with receiving Enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GV enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v1, :cond_1

    .line 244
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    .line 247
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 249
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 250
    sput-boolean v4, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 253
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 254
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 255
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 256
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 257
    return-void

    .line 231
    :cond_2
    sput v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    goto :goto_0

    .line 238
    :cond_3
    sput v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 239
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    goto :goto_1
.end method

.method public static MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "messageText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 416
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    if-le v0, v4, :cond_0

    .line 417
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "MessageReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    const-string v0, "Texting Component"

    const-string v1, "Dispatch successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const-string v0, "Texting Component"

    const-string v1, "Dispatch failed, caching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/BroadcastReceiver;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processPendingQueue()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Texting;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-object p1
.end method

.method private static addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 692
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "cachedMsg":Ljava/lang/String;
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v3, "textingmsgcache"

    const v4, 0x8000

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 695
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 696
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 697
    sget v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 698
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cached "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 706
    .end local v0    # "cachedMsg":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Texting Component"

    const-string v4, "File not found error writing to cache file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 702
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 703
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Texting Component"

    const-string v4, "I/O Error writing to cache file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCachedMsgCount()I
    .locals 1

    .prologue
    .line 643
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    return v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 561
    const-string v6, "pdus"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .line 562
    .local v1, "messages":[Ljava/lang/Object;
    array-length v6, v1

    new-array v4, v6, [[B

    .line 564
    .local v4, "pduObjs":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 565
    aget-object v6, v1, v0

    check-cast v6, [B

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    array-length v6, v4

    new-array v5, v6, [[B

    .line 568
    .local v5, "pdus":[[B
    array-length v3, v5

    .line 569
    .local v3, "pduCount":I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 570
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 571
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 572
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_1
    return-object v2
.end method

.method private declared-synchronized handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "resultCode"    # I
    .param p4, "smsMsg"    # Ljava/lang/String;

    .prologue
    .line 966
    monitor-enter p0

    packed-switch p3, :pswitch_data_0

    .line 988
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 968
    :pswitch_1
    :try_start_0
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received OK, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Message sent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 972
    :pswitch_2
    :try_start_1
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received generic failure, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Generic failure: message not sent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 976
    :pswitch_3
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received no service error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "No Sms service available. Message not sent."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 980
    :pswitch_4
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received null PDU error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Received null PDU error. Message not sent."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 984
    :pswitch_5
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received radio off error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Could not send SMS message: radio off."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 966
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 675
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    if-eqz v0, :cond_0

    .line 676
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :goto_0
    return-void

    .line 678
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 679
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isReceivingEnabled(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 539
    const-string v3, "TextingState"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "receiving2"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 541
    .local v1, "retval":I
    if-ne v1, v5, :cond_0

    .line 542
    const-string v3, "receiving"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    const/4 v1, 0x2

    .line 547
    .end local v1    # "retval":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "retval":I
    :cond_1
    move v1, v2

    .line 545
    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 635
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    return v0
.end method

.method private processCachedMessages()V
    .locals 7

    .prologue
    .line 582
    const/4 v2, 0x0

    .line 583
    .local v2, "messagelist":[Ljava/lang/String;
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->retrieveCachedMessages()[Ljava/lang/String;

    move-result-object v2

    .line 585
    monitor-exit v5

    .line 586
    if-nez v2, :cond_1

    .line 602
    :cond_0
    return-void

    .line 585
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 588
    :cond_1
    const-string v4, "Texting Component"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cached messages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 591
    aget-object v3, v2, v1

    .line 592
    .local v3, "phoneAndMessage":Ljava/lang/String;
    const-string v4, "Texting Component"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 597
    .local v0, "delim":I
    sget v4, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 598
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    .line 599
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 598
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processPendingQueue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 398
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "entry":Ljava/lang/String;
    const-string v3, ":::"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "phoneNumber":Ljava/lang/String;
    const-string v3, ":::"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "message":Ljava/lang/String;
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending queued message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 405
    .end local v0    # "entry":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private requestReceiveSmsPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting$3;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1065
    return-void
.end method

.method private retrieveCachedMessages()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 610
    const-string v5, "Texting Component"

    const-string v6, "Retrieving cached messages"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v1, ""

    .line 613
    .local v1, "cache":Ljava/lang/String;
    :try_start_0
    const-string v5, "textingmsgcache"

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 614
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 615
    .end local v1    # "cache":Ljava/lang/String;
    .local v2, "cache":Ljava/lang/String;
    :try_start_1
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v6, "textingmsgcache"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 616
    const/4 v5, 0x0

    sput v5, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 617
    const-string v5, "Texting Component"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieved cache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 626
    const-string v5, "\u0001"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "messagelist":[Ljava/lang/String;
    move-object v1, v2

    .line 627
    .end local v0    # "bytes":[B
    .end local v2    # "cache":Ljava/lang/String;
    .end local v4    # "messagelist":[Ljava/lang/String;
    .restart local v1    # "cache":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 618
    :catch_0
    move-exception v3

    .line 619
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v5, "Texting Component"

    const-string v6, "No Cache file found -- this is not (usually) an error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 622
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const-string v5, "Texting Component"

    const-string v6, "I/O Error reading from cache file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 621
    .end local v1    # "cache":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    .restart local v2    # "cache":Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "cache":Ljava/lang/String;
    .restart local v1    # "cache":Ljava/lang/String;
    goto :goto_2

    .line 618
    .end local v1    # "cache":Ljava/lang/String;
    .restart local v2    # "cache":Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "cache":Ljava/lang/String;
    .restart local v1    # "cache":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendViaSms(Ljava/lang/String;)V
    .locals 12
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 995
    const-string v0, "Texting Component"

    const-string v1, "Sending via built-in Sms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    .line 1000
    .local v6, "form":Lcom/google/appinventor/components/runtime/Form;
    move-object v8, p0

    .line 1001
    .local v8, "me":Lcom/google/appinventor/components/runtime/Texting;
    new-instance v0, Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {v0, p0, v6, v8, p1}, Lcom/google/appinventor/components/runtime/Texting$1;-><init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1045
    .end local v6    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v8    # "me":Lcom/google/appinventor/components/runtime/Texting;
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1022
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1023
    .local v9, "numParts":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v4, "pendingIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 1025
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v5, "SMS_SENT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v11, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1028
    :cond_1
    new-instance v10, Lcom/google/appinventor/components/runtime/Texting$2;

    invoke-direct {v10, p0}, Lcom/google/appinventor/components/runtime/Texting$2;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    .line 1043
    .local v10, "sendReceiver":Landroid/content/BroadcastReceiver;
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "SMS_SENT"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1044
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public GoogleVoiceEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "com.google.android.apps.googlevoice.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 465
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 466
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 467
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 468
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gvenabled"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 471
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "Sorry, your phone\'s system does not support this option."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public GoogleVoiceEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component."
    .end annotation

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    return v0
.end method

.method public Initialize()V
    .locals 2

    .prologue
    .line 276
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v0, :cond_0

    .line 278
    const-string v0, "Initialize"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The message that will be sent when the SendMessage method is called."
    .end annotation

    .prologue
    .line 319
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included."
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 290
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneNumber set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public ReceivingEnabled()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed."
    .end annotation

    .prologue
    .line 496
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    return v0
.end method

.method public ReceivingEnabled(I)V
    .locals 8
    .param p1, "enabled"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "1"
        editorType = "text_receiving"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "android.provider.Telephony.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.RECEIVE_SMS",
            "com.google.android.apps.googlevoice.permission.RECEIVE_SMS"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 520
    if-lt p1, v5, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_2

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "Texting"

    const/16 v4, 0x6a5

    new-array v5, v5, [Ljava/lang/Object;

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 522
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 536
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    sput p1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 528
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    invoke-virtual {v2, v3, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 529
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "receiving2"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 531
    const-string v2, "receiving"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    if-le p1, v5, :cond_1

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v2, :cond_1

    .line 534
    const-string v2, "ReceivingEnabled"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SendMessage()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const v6, 0x980f

    .line 336
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 337
    .local v2, "phoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 339
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 340
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 341
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "sms_body"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, p0, v6}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 344
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v0, v6}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    :cond_0
    return-void
.end method

.method public SendMessageDirect()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.SEND_SMS",
            "android.permission.READ_PHONE_STATE",
            "com.google.android.apps.googlevoice.permission.SEND_SMS"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 359
    .local v2, "phoneNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 362
    .local v0, "message":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v3, :cond_3

    .line 365
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 366
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to get an authToken -- enqueing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 370
    .local v1, "ok":Z
    if-nez v1, :cond_1

    .line 371
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v4, "Pending message queue full. Can\'t send message"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 392
    .end local v1    # "ok":Z
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local v1    # "ok":Z
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 379
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 383
    .end local v1    # "ok":Z
    :cond_2
    const-string v3, "Texting Component"

    const-string v4, "Creating AsyncSendMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 389
    :cond_3
    const-string v3, "Texting Component"

    const-string v4, "Sending via SMS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v3, "SendMessage"

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 1181
    return-void
.end method

.method public onInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 266
    const-string v1, "Texting Component"

    const-string v2, "onInitialize()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 268
    sput-boolean v3, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 269
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 270
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 271
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 272
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "Texting Component"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 667
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 651
    const-string v1, "Texting Component"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 653
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 655
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 656
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 658
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 1171
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1172
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1173
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "receiving2"

    sget v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1174
    const-string v2, "gvenabled"

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1176
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 710
    const v0, 0x980f

    if-ne p1, v0, :cond_0

    .line 711
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    const-string v0, ""

    :goto_0
    invoke-direct {p0, v1, v2, p2, v0}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 715
    :cond_0
    return-void

    .line 711
    :cond_1
    const-string v0, "sms_body"

    .line 712
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
