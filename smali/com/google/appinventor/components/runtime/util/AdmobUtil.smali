.class public Lcom/google/appinventor/components/runtime/util/AdmobUtil;
.super Ljava/lang/Object;
.source "AdmobUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;
    }
.end annotation


# static fields
.field private static final ADMOBUTIL_VERSION:I = 0x1

.field private static final ADMOB_BANNER_TYPE:Ljava/lang/String; = "com.google.appinventor.components.runtime.ThunkableAdMobBanner"

.field private static final ADMOB_INTERSTITIAL_TYPE:Ljava/lang/String; = "com.google.appinventor.components.runtime.ThunkableAdMobInterstitial"

.field private static final BUILT_TIME:Ljava/lang/String; = "builtTime"

.field private static final LOG_TAG:Ljava/lang/String; = "AdmobUtil"

.field private static final SCREEN_TYPE:Ljava/lang/String; = "com.google.appinventor.components.runtime.Form"

.field private static final THUNKABLE_GRAPHQL_ENDPOINT:Ljava/lang/String; = "https://admob.thunkable.com/graphql"

.field private static final THUNKABLE_LIVE_PACKAGE_NAME:Ljava/lang/String; = "com.thunkable.appinventor.aicompanion3"

.field private static admobConfigKey:Ljava/lang/String;

.field private static admobConfigSharedPreferencesName:Ljava/lang/String;

.field private static appAdmobConfig:Lorg/json/JSONObject;

.field private static didRequestTimeOutOrException:Z

.field private static pendingAdLoaders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static projectInfo:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "admob_config"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->admobConfigKey:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->pendingAdLoaders:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$102(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    sput-object p0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->admobConfigKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->writeToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->didRequestTimeOutOrException:Z

    return p0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->loadPendingAds()V

    return-void
.end method

.method public static addNPA(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 4
    .param p0, "builder"    # Lcom/google/android/gms/ads/AdRequest$Builder;

    .prologue
    .line 314
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v1, "extrasBundle":Landroid/os/Bundle;
    const-string v2, "npa"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    .line 317
    .local v0, "extras":Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    return-object v2
.end method

.method private static fetchAdmobConfig(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 250
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->didRequestTimeOutOrException:Z

    .line 252
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;-><init>(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public static getBannerKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->isAdmobConfigStillValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    sget-object v3, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    const-string v4, "bannerAdKey"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "key":Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 175
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    .line 171
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v2

    .line 175
    goto :goto_0
.end method

.method private static getExpirationDate()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 229
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    const-string v4, "expirationDate"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 236
    .local v0, "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-wide v2

    .line 235
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_0
    move-exception v0

    .line 236
    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private static getFromPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->admobConfigSharedPreferencesName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method private static getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 140
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getInterstitialKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 182
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->isAdmobConfigStillValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    sget-object v3, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    const-string v4, "intersitialAdKey"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "key":Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 194
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    .line 190
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v2

    .line 194
    goto :goto_0
.end method

.method private static getNumPercentageCut(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->isAdmobConfigStillValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    const-string v3, "percentageCut"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-float v1, v2

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private static getShowAdStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 215
    :try_start_0
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    const-string v3, "showAd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return v1

    .line 221
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_0
    move-exception v0

    .line 222
    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public static initializeSetup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .local v4, "expirationDate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 63
    .local v10, "timeNow":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "_admob_config"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->admobConfigSharedPreferencesName:Ljava/lang/String;

    .line 65
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v1, "defaultAppAdmobConfig":Lorg/json/JSONObject;
    const-string v9, "showAd"

    const/4 v12, 0x1

    invoke-virtual {v1, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    const-string v9, "bannerAdKey"

    const-string v12, "null"

    invoke-virtual {v1, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v9, "intersitialAdKey"

    const-string v12, "null"

    invoke-virtual {v1, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v9, "expirationDate"

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    sget-object v9, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->admobConfigKey:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v9, v12}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getFromPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "existingAdmobConfig":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    .line 76
    sget-object v9, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->appAdmobConfig:Lorg/json/JSONObject;

    const-string v12, "expirationDate"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 81
    .end local v1    # "defaultAppAdmobConfig":Lorg/json/JSONObject;
    .end local v3    # "existingAdmobConfig":Ljava/lang/String;
    :goto_0
    cmp-long v9, v4, v10

    if-gtz v9, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 84
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_1
    const-string v9, "project-info.txt"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 85
    .local v7, "is":Ljava/io/InputStream;
    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v12, "\\A"

    invoke-virtual {v9, v12}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v8

    .line 86
    .local v8, "s":Ljava/util/Scanner;
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "info":Ljava/lang/String;
    :goto_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->projectInfo:Lorg/json/JSONObject;

    .line 88
    sget-object v9, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->projectInfo:Lorg/json/JSONObject;

    invoke-static {p0, v9}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->fetchAdmobConfig(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v6    # "info":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "s":Ljava/util/Scanner;
    :cond_0
    :goto_2
    return-void

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Lorg/json/JSONException;
    const-string v9, "AdmobUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The JSONException is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "s":Ljava/util/Scanner;
    :cond_1
    :try_start_2
    const-string v6, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 89
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "s":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "AdmobUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The IOException is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 92
    .local v2, "e":Lorg/json/JSONException;
    const-string v9, "AdmobUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The JSONException is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static isAdmobConfigStillValid()Z
    .locals 6

    .prologue
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 242
    .local v0, "timeNow":J
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getExpirationDate()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getExpirationDate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getExpirationDate()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 243
    :cond_0
    const/4 v2, 0x1

    .line 245
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadPendingAds()V
    .locals 3

    .prologue
    .line 108
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->pendingAdLoaders:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "pendingAdLoader":Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pendingAdLoader":Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;
    check-cast v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;

    .line 109
    .restart local v0    # "pendingAdLoader":Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;->load()V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->pendingAdLoaders:Ljava/util/HashSet;

    .line 112
    return-void
.end method

.method public static loadWhenReady(Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;)V
    .locals 1
    .param p0, "loader"    # Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;

    .prologue
    .line 98
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->isAdmobConfigStillValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->didRequestTimeOutOrException:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;->load()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->pendingAdLoaders:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static shouldShowAd(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getShowAdStatus()Z

    move-result v0

    return v0
.end method

.method public static takeChance(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 119
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v3

    .line 123
    :cond_1
    const-string v4, "com.thunkable.appinventor.aicompanion3"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getNumPercentageCut(Landroid/content/Context;)F

    move-result v1

    .line 128
    .local v1, "offset":F
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 129
    .local v2, "r":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 131
    .local v0, "chance":F
    cmpg-float v4, v0, v1

    if-gez v4, :cond_0

    .line 132
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static writeToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->admobConfigSharedPreferencesName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method
