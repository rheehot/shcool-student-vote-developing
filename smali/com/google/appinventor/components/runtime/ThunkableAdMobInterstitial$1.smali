.class Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ThunkableAdMobInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 64
    const-string v0, "ThunkableAdMobInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailedToLoad and errorCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->AdFailedToLoad(I)V

    .line 66
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->AdLoaded()V

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    const-string v1, "ThunkableAdMobInterstitial onAdLoaded"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;Ljava/lang/String;)V

    .line 61
    return-void
.end method
