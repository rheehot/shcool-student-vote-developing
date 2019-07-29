.class Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ThunkableAdMobBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->generateNewAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    const-string v1, "ThunkableAdMobBanner onAdClosed"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->AdFailedToLoad(I)V

    .line 200
    const-string v0, "ThunkableAdMobBanner"

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

    .line 201
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->AdLoaded()V

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    const-string v1, "ThunkableAdMobBanner onAdLoaded"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;Ljava/lang/String;)V

    .line 196
    return-void
.end method
