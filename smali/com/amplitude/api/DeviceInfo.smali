.class public Lcom/amplitude/api/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/api/DeviceInfo$CachedInfo;
    }
.end annotation


# static fields
.field public static final OS_NAME:Ljava/lang/String; = "android"

.field private static final SETTING_ADVERTISING_ID:Ljava/lang/String; = "advertising_id"

.field private static final SETTING_LIMIT_AD_TRACKING:Ljava/lang/String; = "limit_ad_tracking"

.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.DeviceInfo"


# instance fields
.field private cachedInfo:Lcom/amplitude/api/DeviceInfo$CachedInfo;

.field private context:Landroid/content/Context;

.field private locationListening:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/DeviceInfo;->locationListening:Z

    .line 263
    iput-object p1, p0, Lcom/amplitude/api/DeviceInfo;->context:Landroid/content/Context;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/amplitude/api/DeviceInfo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/amplitude/api/DeviceInfo;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static generateUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo;->cachedInfo:Lcom/amplitude/api/DeviceInfo$CachedInfo;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/amplitude/api/DeviceInfo$CachedInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amplitude/api/DeviceInfo$CachedInfo;-><init>(Lcom/amplitude/api/DeviceInfo;Lcom/amplitude/api/DeviceInfo$1;)V

    iput-object v0, p0, Lcom/amplitude/api/DeviceInfo;->cachedInfo:Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/DeviceInfo;->cachedInfo:Lcom/amplitude/api/DeviceInfo$CachedInfo;

    return-object v0
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$1100(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$500(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$800(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$900(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGeocoder()Landroid/location/Geocoder;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/amplitude/api/DeviceInfo;->context:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$1000(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$600(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$700(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentLocation()Landroid/location/Location;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/amplitude/api/DeviceInfo;->isLocationListening()Z

    move-result v8

    if-nez v8, :cond_1

    .line 376
    :cond_0
    return-object v0

    .line 332
    :cond_1
    iget-object v8, p0, Lcom/amplitude/api/DeviceInfo;->context:Landroid/content/Context;

    const-string v9, "location"

    .line 333
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 336
    .local v2, "locationManager":Landroid/location/LocationManager;
    if-eqz v2, :cond_0

    .line 342
    const/4 v7, 0x0

    .line 344
    .local v7, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v8}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 348
    :goto_0
    if-eqz v7, :cond_0

    .line 352
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v3, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 354
    .local v6, "provider":Ljava/lang/String;
    const/4 v1, 0x0

    .line 356
    .local v1, "location":Landroid/location/Location;
    :try_start_1
    invoke-virtual {v2, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 362
    :goto_2
    if-eqz v1, :cond_2

    .line 363
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 367
    .end local v1    # "location":Landroid/location/Location;
    .end local v6    # "provider":Ljava/lang/String;
    :cond_3
    const-wide/16 v4, -0x1

    .line 368
    .local v4, "maximumTimestamp":J
    const/4 v0, 0x0

    .line 369
    .local v0, "bestLocation":Landroid/location/Location;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 370
    .restart local v1    # "location":Landroid/location/Location;
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-lez v9, :cond_4

    .line 371
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 372
    move-object v0, v1

    goto :goto_3

    .line 345
    .end local v0    # "bestLocation":Landroid/location/Location;
    .end local v1    # "location":Landroid/location/Location;
    .end local v3    # "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    .end local v4    # "maximumTimestamp":J
    :catch_0
    move-exception v8

    goto :goto_0

    .line 357
    .restart local v1    # "location":Landroid/location/Location;
    .restart local v3    # "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    .restart local v6    # "provider":Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_2

    .line 359
    :catch_2
    move-exception v9

    goto :goto_2
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$300(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$400(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$200(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGooglePlayServicesEnabled()Z
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$1300(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Z

    move-result v0

    return v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amplitude/api/DeviceInfo$CachedInfo;->access$1200(Lcom/amplitude/api/DeviceInfo$CachedInfo;)Z

    move-result v0

    return v0
.end method

.method public isLocationListening()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/amplitude/api/DeviceInfo;->locationListening:Z

    return v0
.end method

.method public prefetch()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/amplitude/api/DeviceInfo;->getCachedInfo()Lcom/amplitude/api/DeviceInfo$CachedInfo;

    .line 275
    return-void
.end method

.method public setLocationListening(Z)V
    .locals 0
    .param p1, "locationListening"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/amplitude/api/DeviceInfo;->locationListening:Z

    .line 385
    return-void
.end method
