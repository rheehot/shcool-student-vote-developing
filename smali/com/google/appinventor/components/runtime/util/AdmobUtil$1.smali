.class final Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;
.super Ljava/lang/Object;
.source "AdmobUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AdmobUtil;->fetchAdmobConfig(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$projectInfo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$projectInfo:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$projectInfo:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    const-string v21, "com.google.appinventor.components.runtime.ThunkableAdMobBanner"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 262
    .local v2, "admobBannerComponentCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$projectInfo:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    const-string v21, "com.google.appinventor.components.runtime.ThunkableAdMobInterstitial"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 263
    .local v3, "admobInterstitialComponentCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$projectInfo:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    const-string v21, "com.google.appinventor.components.runtime.Form"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 264
    .local v18, "screenComponentCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$projectInfo:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    const-string v21, "builtTime"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 266
    .local v6, "builtTime":J
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 309
    .end local v2    # "admobBannerComponentCount":I
    .end local v3    # "admobInterstitialComponentCount":I
    .end local v6    # "builtTime":J
    .end local v18    # "screenComponentCount":I
    :goto_0
    return-void

    .line 270
    .restart local v2    # "admobBannerComponentCount":I
    .restart local v3    # "admobInterstitialComponentCount":I
    .restart local v6    # "builtTime":J
    .restart local v18    # "screenComponentCount":I
    :cond_0
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 271
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    const-string v20, "https://admob.thunkable.com/graphql"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 272
    .local v14, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v20, "Content-Type"

    const-string v21, "application/json"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v20, "Request-Type"

    const-string v21, "admob"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 275
    .local v5, "content":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 276
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, "installerPackageName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "{admob(packageName: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\", installerPackageName: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\", admobBannerComponentCount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", admobInterstitialComponentCount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", screenComponentCount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", builtTime: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", version: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") {showAd bannerAdKey intersitialAdKey expirationDate percentageCut}}"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 286
    .local v13, "query":Ljava/lang/String;
    const-string v20, "query"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    new-instance v19, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v19, "se":Lorg/apache/http/entity/StringEntity;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 289
    invoke-interface {v10, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 292
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v17

    .line 293
    .local v17, "responseContent":Ljava/lang/String;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 295
    .local v16, "responseCode":I
    const/16 v20, 0xc8

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 296
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .local v8, "dataObj":Lorg/json/JSONObject;
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 298
    .local v4, "admobObj":Lorg/json/JSONObject;
    const-string v20, "admob"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/json/JSONObject;

    invoke-static/range {v20 .. v20}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$102(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AdmobUtil$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$200()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$100()Lorg/json/JSONObject;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v4    # "admobObj":Lorg/json/JSONObject;
    .end local v8    # "dataObj":Lorg/json/JSONObject;
    :goto_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$500()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 305
    .end local v2    # "admobBannerComponentCount":I
    .end local v3    # "admobInterstitialComponentCount":I
    .end local v5    # "content":Lorg/json/JSONObject;
    .end local v6    # "builtTime":J
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "installerPackageName":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "query":Ljava/lang/String;
    .end local v14    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "responseCode":I
    .end local v17    # "responseContent":Ljava/lang/String;
    .end local v18    # "screenComponentCount":I
    .end local v19    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v9

    .line 306
    .local v9, "e":Ljava/lang/Exception;
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$402(Z)Z

    .line 307
    const-string v20, "AdmobUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The exception is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "admobBannerComponentCount":I
    .restart local v3    # "admobInterstitialComponentCount":I
    .restart local v5    # "content":Lorg/json/JSONObject;
    .restart local v6    # "builtTime":J
    .restart local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "installerPackageName":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "query":Ljava/lang/String;
    .restart local v14    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "responseCode":I
    .restart local v17    # "responseContent":Ljava/lang/String;
    .restart local v18    # "screenComponentCount":I
    .restart local v19    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_1
    const/16 v20, 0x1

    :try_start_1
    invoke-static/range {v20 .. v20}, Lcom/google/appinventor/components/runtime/util/AdmobUtil;->access$402(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
