.class public Lcom/google/appinventor/components/runtime/PhoneStatus;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PhoneStatus.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that returns information about the phone."
    iconName = "images/phoneip.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "webrtc.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesNativeLibraries;
    v7aLibraries = "libjingle_peerconnection_so.so"
    v8aLibraries = "libjingle_peerconnection_so.so"
    x86_64Libraries = "libjingle_peerconnection_so.so"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStatus"

.field private static activity:Landroid/app/Activity;

.field private static mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

.field private static useWebRTC:Z


# instance fields
.field private final form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 81
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    .line 84
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-nez v0, :cond_0

    .line 85
    sput-object p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 87
    :cond_0
    return-void
.end method

.method public static GetWifiIpAddress()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the IP address of the phone in the form of a String"
    .end annotation

    .prologue
    .line 92
    sget-object v4, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    .local v3, "wifiManager":Ljava/lang/Object;
    check-cast v3, Landroid/net/wifi/WifiManager;

    .end local v3    # "wifiManager":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 94
    .local v0, "ip":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 96
    .local v2, "s_ipAddress":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/PhoneStatus;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "ipAddress":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 99
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_0
    const-string v1, "Error: No Wifi Connection"

    .restart local v1    # "ipAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method public static doFault()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Causes an Exception, used to debug exception processing."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "doFault called!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static doSettings()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "PhoneStatus"

    const-string v1, "doSettings called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/PhoneStatus;->OnSettings()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v0, "PhoneStatus"

    const-string v1, "mainStance is null on doSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getUseWebRTC()Z
    .locals 1

    .prologue
    .line 281
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return v0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the phone is on Wifi, FALSE otherwise"
    .end annotation

    .prologue
    .line 105
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 107
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 108
    const/4 v2, 0x1

    .line 109
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 111
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public GetInstaller()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the app that installed us"
    .end annotation

    .prologue
    .line 267
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 268
    const-string v1, "com.thunkable.appinventor.aicompanion3"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "installer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 270
    const-string v0, "sideloaded"

    .line 275
    .end local v0    # "installer":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public GetVersionName()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the our VersionName property"
    .end annotation

    .prologue
    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PhoneStatus"

    const-string v3, "Unable to get VersionName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const-string v2, "UNKNOWN"

    goto :goto_0
.end method

.method public OnSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 204
    const-string v0, "OnSettings"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public SdkLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current Android SDK Level"
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    return v0
.end method

.method public WebRTC(Z)V
    .locals 0
    .param p1, "useWebRTC"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 216
    sput-boolean p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    .line 217
    return-void
.end method

.method public WebRTC()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If True we are using WebRTC to talk to the server."
    .end annotation

    .prologue
    .line 221
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return v0
.end method

.method public installURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the URL and installs it as an Android Package via the installed browser"
    .end annotation

    .prologue
    .line 187
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public isDirect()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if we are running in the emulator or USB Connection"
    .end annotation

    .prologue
    .line 149
    const-string v0, "PhoneStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.os.Build.VERSION.RELEASE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "PhoneStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.os.Build.PRODUCT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect()Z

    move-result v0

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAssetsLoaded()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Declare that we have loaded our initial assets and other assets should come from the sdcard"
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setAssetsLoaded()V

    .line 171
    :cond_0
    return-void
.end method

.method public setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "rendezvousServer"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Establish the secret seed for HOTP generation. Return the SHA1 of the provided seed, this will be used to contact the rendezvous server. Note: This code also starts the connection negotiation process if we are using WebRTC. This is a bit of a kludge..."
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 121
    sget-boolean v7, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    if-eqz v7, :cond_0

    .line 122
    new-instance v6, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {v6, p2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;-><init>(Ljava/lang/String;)V

    .line 123
    .local v6, "webRTCNativeMgr":Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v7, Lcom/google/appinventor/components/runtime/ReplForm;

    sget-object v9, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v9, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v7, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v7, v6}, Lcom/google/appinventor/components/runtime/ReplForm;->setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    .line 130
    .end local v6    # "webRTCNativeMgr":Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    :goto_0
    :try_start_0
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    .local v0, "Sha1":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 137
    .local v4, "result":[B
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v7, v4

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v5, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 139
    .local v3, "formatter":Ljava/util/Formatter;
    array-length v9, v4

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-byte v1, v4, v7

    .line 140
    .local v1, "b":B
    const-string v10, "%02x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v3, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 139
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "Sha1":Ljava/security/MessageDigest;
    .end local v1    # "b":B
    .end local v3    # "formatter":Ljava/util/Formatter;
    .end local v4    # "result":[B
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "PhoneStatus"

    const-string v8, "Exception getting SHA1 Instance"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const-string v7, ""

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v7

    .line 142
    .restart local v0    # "Sha1":Ljava/security/MessageDigest;
    .restart local v3    # "formatter":Ljava/util/Formatter;
    .restart local v4    # "result":[B
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const-string v7, "PhoneStatus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Seed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v7, "PhoneStatus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Really Exit the Application"
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 196
    return-void
.end method

.method public startHTTPD(Z)V
    .locals 1
    .param p1, "secure"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the internal AppInvHTTPD to listen for incoming forms. FOR REPL USE ONLY!"
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->topform:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    .line 164
    return-void
.end method
