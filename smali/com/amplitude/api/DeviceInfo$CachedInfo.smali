.class Lcom/amplitude/api/DeviceInfo$CachedInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/api/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedInfo"
.end annotation


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private gpsEnabled:Z

.field private language:Ljava/lang/String;

.field private limitAdTrackingEnabled:Z

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/amplitude/api/DeviceInfo;

.field private versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amplitude/api/DeviceInfo;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->advertisingId:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->versionName:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getOsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->osName:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->osVersion:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->brand:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->manufacturer:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->model:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getCarrier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->carrier:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->country:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->language:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->checkGPSEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->gpsEnabled:Z

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/amplitude/api/DeviceInfo;Lcom/amplitude/api/DeviceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amplitude/api/DeviceInfo;
    .param p2, "x1"    # Lcom/amplitude/api/DeviceInfo$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amplitude/api/DeviceInfo$CachedInfo;-><init>(Lcom/amplitude/api/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->limitAdTrackingEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->gpsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->osName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method private checkGPSEnabled()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    :try_start_0
    const-string v6, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 238
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 239
    .local v0, "GPSUtil":Ljava/lang/Class;
    const-string v6, "isGooglePlayServicesAvailable"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 241
    .local v2, "getGPSAvailable":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-static {v9}, Lcom/amplitude/api/DeviceInfo;->access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 243
    .local v3, "status":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v6

    if-nez v6, :cond_0

    .line 258
    .end local v0    # "GPSUtil":Ljava/lang/Class;
    .end local v2    # "getGPSAvailable":Ljava/lang/reflect/Method;
    .end local v3    # "status":Ljava/lang/Integer;
    :goto_0
    return v4

    .restart local v0    # "GPSUtil":Ljava/lang/Class;
    .restart local v2    # "getGPSAvailable":Ljava/lang/reflect/Method;
    .restart local v3    # "status":Ljava/lang/Integer;
    :cond_0
    move v4, v5

    .line 243
    goto :goto_0

    .line 244
    .end local v0    # "GPSUtil":Ljava/lang/Class;
    .end local v2    # "getGPSAvailable":Ljava/lang/reflect/Method;
    .end local v3    # "status":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services Util not found!"

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_1
    move v4, v5

    .line 258
    goto :goto_0

    .line 246
    :catch_1
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services Util not found!"

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services not available"

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 250
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services not available"

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 252
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    const-string v7, "Google Play Services not available"

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v4

    const-string v6, "com.amplitude.api.DeviceInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when checking for Google Play Services: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAdvertisingId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    const-string v0, "Amazon"

    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getAndCacheAmazonAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getAndCacheGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAndCacheAmazonAdvertisingId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v3, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-static {v3}, Lcom/amplitude/api/DeviceInfo;->access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "limit_ad_tracking"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->limitAdTrackingEnabled:Z

    .line 203
    const-string v1, "advertising_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->advertisingId:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->advertisingId:Ljava/lang/String;

    return-object v1

    :cond_0
    move v1, v2

    .line 202
    goto :goto_0
.end method

.method private getAndCacheGoogleAdvertisingId()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 210
    :try_start_0
    const-string v9, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 211
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, "AdvertisingIdClient":Ljava/lang/Class;
    const-string v9, "getAdvertisingIdInfo"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 214
    .local v3, "getAdvertisingInfo":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-static {v12}, Lcom/amplitude/api/DeviceInfo;->access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, "advertisingInfo":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "isLimitAdTrackingEnabled"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 217
    .local v5, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v5, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 219
    .local v6, "limitAdTrackingEnabled":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    .line 220
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    iput-boolean v7, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->limitAdTrackingEnabled:Z

    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getId"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 222
    .local v4, "getId":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->advertisingId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 231
    .end local v0    # "AdvertisingIdClient":Ljava/lang/Class;
    .end local v1    # "advertisingInfo":Ljava/lang/Object;
    .end local v3    # "getAdvertisingInfo":Ljava/lang/reflect/Method;
    .end local v4    # "getId":Ljava/lang/reflect/Method;
    .end local v5    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .end local v6    # "limitAdTrackingEnabled":Ljava/lang/Boolean;
    :goto_1
    iget-object v7, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->advertisingId:Ljava/lang/String;

    return-object v7

    .restart local v0    # "AdvertisingIdClient":Ljava/lang/Class;
    .restart local v1    # "advertisingInfo":Ljava/lang/Object;
    .restart local v3    # "getAdvertisingInfo":Ljava/lang/reflect/Method;
    .restart local v5    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .restart local v6    # "limitAdTrackingEnabled":Ljava/lang/Boolean;
    :cond_0
    move v7, v8

    .line 220
    goto :goto_0

    .line 223
    .end local v0    # "AdvertisingIdClient":Ljava/lang/Class;
    .end local v1    # "advertisingInfo":Ljava/lang/Object;
    .end local v3    # "getAdvertisingInfo":Ljava/lang/reflect/Method;
    .end local v5    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    .end local v6    # "limitAdTrackingEnabled":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v7

    const-string v8, "com.amplitude.api.DeviceInfo"

    const-string v9, "Google Play Services SDK not found!"

    invoke-virtual {v7, v8, v9}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v7

    const-string v8, "com.amplitude.api.DeviceInfo"

    const-string v9, "Google Play Services not available"

    invoke-virtual {v7, v8, v9}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v7

    const-string v8, "com.amplitude.api.DeviceInfo"

    const-string v9, "Encountered an error connecting to Google Play Services"

    invoke-virtual {v7, v8, v9, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private getCarrier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-static {v1}, Lcom/amplitude/api/DeviceInfo;->access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 107
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    .end local v0    # "manager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v1

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getCountryFromLocation()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 128
    :goto_0
    return-object v1

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getCountryFromNetwork()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 126
    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->getCountryFromLocale()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCountryFromLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCountryFromLocation()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 132
    iget-object v2, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v2}, Lcom/amplitude/api/DeviceInfo;->isLocationListening()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v9

    .line 163
    :goto_0
    return-object v2

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v2}, Lcom/amplitude/api/DeviceInfo;->getMostRecentLocation()Landroid/location/Location;

    move-result-object v8

    .line 137
    .local v8, "recent":Landroid/location/Location;
    if-eqz v8, :cond_2

    .line 139
    :try_start_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v2}, Lcom/amplitude/api/DeviceInfo;->getGeocoder()Landroid/location/Geocoder;

    move-result-object v1

    .line 141
    .local v1, "geocoder":Landroid/location/Geocoder;
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 142
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 141
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 143
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_2

    .line 144
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 145
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 159
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    :cond_2
    :goto_1
    move-object v2, v9

    .line 163
    goto :goto_0

    .line 157
    :catch_1
    move-exception v2

    goto :goto_1

    .line 155
    :catch_2
    move-exception v2

    goto :goto_1

    .line 153
    :catch_3
    move-exception v2

    goto :goto_1

    .line 151
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private getCountryFromNetwork()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-static {v2}, Lcom/amplitude/api/DeviceInfo;->access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 170
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 171
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 179
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v2

    .line 179
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "android"

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-static {v1}, Lcom/amplitude/api/DeviceInfo;->access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amplitude/api/DeviceInfo$CachedInfo;->this$0:Lcom/amplitude/api/DeviceInfo;

    invoke-static {v2}, Lcom/amplitude/api/DeviceInfo;->access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 77
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v1

    .line 80
    const/4 v1, 0x0

    goto :goto_0
.end method
