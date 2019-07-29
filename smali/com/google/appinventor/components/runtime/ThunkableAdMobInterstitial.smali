.class public final Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkableAdMobInterstitial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdMob component allows you to displayAd. You need have a valid AdMob account and an AdUnitId. You should in thetestmode when you are still developing the app."
    docUri = "monetisation/admob"
    iconName = "images/adMob2.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-play-services.jar,firebase.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_NETWORK_STATE"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThunkableAdMobInterstitial"


# instance fields
.field private ThunkableAdUnitID:Ljava/lang/String;

.field private adEnabled:Z

.field private adUnitID:Ljava/lang/String;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentInUseAdUnitID:Ljava/lang/String;

.field private hasLoaded:Z

.field private isTestMode:Z

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private personalized:Z

.field private setAdUnitID:Ljava/lang/Boolean;

.field private takeChance:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "componentContainer"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    .line 40
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ThunkableAdUnitID:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setAdUnitID:Ljava/lang/Boolean;

    .line 48
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->hasLoaded:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->takeChance:Z

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 54
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 67
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->tracking(Ljava/lang/String;)V

    return-void
.end method

.method private tracking(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->takeChance:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public AdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is failed to load."
    .end annotation

    .prologue
    .line 144
    const-string v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received."
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ShowAd()V

    .line 139
    const-string v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public LoadAd()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts loading a new ad."
    .end annotation

    .prologue
    .line 108
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->loadWhenReady(Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;)V

    .line 109
    return-void
.end method

.method public Personalized(Z)V
    .locals 1
    .param p1, "personalized"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->personalized:Z

    if-eq v0, p1, :cond_0

    .line 95
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->personalized:Z

    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->hasLoaded:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->loadWhenReady(Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;)V

    .line 101
    :cond_0
    return-void
.end method

.method public Personalized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->personalized:Z

    return v0
.end method

.method public ShowAd()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 154
    :cond_0
    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .param p1, "z"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    .line 84
    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    return v0
.end method

.method public load()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->shouldShowAd(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setAdUnitID:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setUnitId()V

    .line 120
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setAdUnitID:Ljava/lang/Boolean;

    .line 122
    :cond_2
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 124
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->personalized:Z

    if-nez v1, :cond_3

    .line 125
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->addNPA(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 127
    :cond_3
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    if-eqz v1, :cond_4

    .line 128
    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 131
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->hasLoaded:Z

    .line 132
    const-string v1, "ThunkableAdMobInterstitial LoadAd"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->tracking(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUnitId()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getInterstitialKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ThunkableAdUnitID:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ThunkableAdUnitID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->takeChance(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->takeChance:Z

    .line 162
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->takeChance:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ThunkableAdUnitID:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    goto :goto_1
.end method
