.class public final Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ThunkableAdMobBanner.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Banner Ad by Google AdMob. AdMob component allows you to display Ad. You need have a valid AdMob account and an AdUnitId. You should in thetestmode when you are still developing the app."
    docUri = "monetisation/admob"
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
.field private static final LOG_TAG:Ljava/lang/String; = "ThunkableAdMobBanner"


# instance fields
.field private ThunkableAdUnitID:Ljava/lang/String;

.field private adEnabled:Z

.field private adUnitID:Ljava/lang/String;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentInUseAdUnitID:Ljava/lang/String;

.field private hasLoaded:Z

.field private isTestMode:Z

.field private personalized:Z

.field private setupAdUnitId:Z

.field private takeChance:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "componentContainer"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 41
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->ThunkableAdUnitID:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    .line 46
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setupAdUnitId:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->personalized:Z

    .line 50
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->hasLoaded:Z

    .line 51
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->takeChance:Z

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 59
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->generateNewAdView()V

    .line 60
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->tracking(Ljava/lang/String;)V

    return-void
.end method

.method private generateNewAdView()V
    .locals 3

    .prologue
    .line 181
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    .line 182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 204
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 205
    return-void
.end method

.method private setUnitId()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->getBannerKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->ThunkableAdUnitID:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->ThunkableAdUnitID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->takeChance(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->takeChance:Z

    .line 170
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->takeChance:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->ThunkableAdUnitID:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setupAdUnitId:Z

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    goto :goto_1
.end method

.method private tracking(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->takeChance:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
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
    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

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
    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public Height()I
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 230
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->HeightPercent(I)V

    .line 235
    return-void
.end method

.method public LoadAd()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->loadWhenReady(Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;)V

    .line 102
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
    .line 87
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->personalized:Z

    if-eq v0, p1, :cond_0

    .line 88
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->personalized:Z

    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->hasLoaded:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->loadWhenReady(Lcom/google/appinventor/components/runtime/util/AdmobUtil$AdmobLoader;)V

    .line 94
    :cond_0
    return-void
.end method

.method public Personalized()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->personalized:Z

    return v0
.end method

.method public TestMode(Z)V
    .locals 0
    .param p1, "z"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    .line 77
    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    return v0
.end method

.method public Width()I
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 215
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 220
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->shouldShowAd(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setupAdUnitId:Z

    if-nez v1, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setUnitId()V

    .line 115
    :cond_2
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 117
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->personalized:Z

    if-nez v1, :cond_3

    .line 118
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->addNPA(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 120
    :cond_3
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    if-eqz v1, :cond_4

    .line 121
    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->hasLoaded:Z

    .line 125
    const-string v1, "ThunkableAdMobBanner LoadAd"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->tracking(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroyDrawingCache()V

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    .line 135
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 151
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 157
    :cond_0
    return-void
.end method
