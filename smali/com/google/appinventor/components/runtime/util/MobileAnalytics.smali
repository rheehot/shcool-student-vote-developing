.class public Lcom/google/appinventor/components/runtime/util/MobileAnalytics;
.super Ljava/lang/Object;
.source "MobileAnalytics.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MobileAnalytics"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "packageInstallerName"    # Ljava/lang/String;
    .param p3, "usingThunkableKeys"    # Z

    .prologue
    .line 25
    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->takeSample(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "Package Name"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    if-eqz p2, :cond_0

    .line 30
    const-string v2, "Installer Name"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_0
    if-eqz p3, :cond_1

    .line 33
    const-string v2, "Using Thunkable Keys"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    :cond_1
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "MobileAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fabricTracking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Package Name"

    invoke-virtual {v0, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 22
    return-void
.end method

.method private static takeSample(F)Z
    .locals 3
    .param p0, "targetChance"    # F

    .prologue
    .line 43
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 44
    .local v1, "r":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 45
    .local v0, "chance":F
    cmpg-float v2, v0, p0

    if-gtz v2, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 48
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
