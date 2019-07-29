.class public Lcom/google/appinventor/components/runtime/EmotionRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "EmotionRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ARTIFICIALINTELLIGENCE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Microsoft Emotion API. Please refer to the <a href=\"https://www.microsoft.com/cognitive-services/\">Microsoft Cognitive Services</a> for more information."
    docUri = "image/microsoft-image-+-emotion-recognizer"
    iconName = "images/MicrosoftEmotionRecognizer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "httpcore-4.3.2.jar,httpmime-4.3.4.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EmotionRecognizer"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

.field protected defaultSubscriptionKey:Ljava/lang/String;

.field protected microsoftEmotionAPIUrl:Ljava/lang/String;

.field protected subscriptionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 62
    const-string v0, "7b15c5a74f6d4c70b1761fd274d7e524"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 64
    const-string v0, "https://westus.api.cognitive.microsoft.com/face/v1.0/detect?returnFaceAttributes=emotion"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->activity:Landroid/app/Activity;

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmotionRecognizer"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public GotResponse(ILjava/lang/String;Ljava/lang/String;D)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "responseContent"    # Ljava/lang/String;
    .param p3, "mostLikelyEmotion"    # Ljava/lang/String;
    .param p4, "mostLikelyEmotionScore"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 230
    const-string v0, "GotResponse"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    .line 231
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 230
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public postImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property."
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/EmotionRecognizer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method protected postImageFile(Ljava/lang/String;)V
    .locals 28
    .param p1, "picPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v20, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v20 .. v20}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 141
    .local v20, "httpclient":Lorg/apache/http/client/HttpClient;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 144
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->serverUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->serverUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEFAULT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    :cond_1
    new-instance v23, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 150
    .local v23, "request":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEFAULT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    :cond_2
    const-string v3, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_1
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 158
    .local v22, "is":Ljava/io/BufferedInputStream;
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedInputStream;->available()I

    move-result v21

    .line 159
    .local v21, "i":I
    move/from16 v0, v21

    new-array v11, v0, [B

    .line 160
    .local v11, "data":[B
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/io/BufferedInputStream;->read([B)I

    .line 161
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedInputStream;->close()V

    .line 164
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v11}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 165
    .local v2, "bae":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v3, "application/octet-stream"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 167
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 170
    .local v24, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "responseContent":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 172
    .local v5, "responseCode":I
    const-string v10, "There is something wrong."

    .line 173
    .local v10, "currentMostLikelyEmotion":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 175
    .local v12, "currentMostLikelyEmotionScore":D
    const/16 v3, 0xc8

    if-ne v5, v3, :cond_3

    .line 177
    :try_start_0
    new-instance v19, Lorg/json/JSONArray;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 180
    .local v19, "faceArray":Lorg/json/JSONArray;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    .line 181
    const-string v10, "There are no face or more than one face in the picture. Please check the response content."
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v19    # "faceArray":Lorg/json/JSONArray;
    :cond_3
    :goto_2
    move-object v7, v10

    .line 209
    .local v7, "mostLikelyEmotion":Ljava/lang/String;
    move-wide v8, v12

    .line 211
    .local v8, "mostLikelyEmotionScore":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->activity:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;-><init>(Lcom/google/appinventor/components/runtime/EmotionRecognizer;ILjava/lang/String;Ljava/lang/String;D)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    return-void

    .line 147
    .end local v2    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v5    # "responseCode":I
    .end local v6    # "responseContent":Ljava/lang/String;
    .end local v7    # "mostLikelyEmotion":Ljava/lang/String;
    .end local v8    # "mostLikelyEmotionScore":D
    .end local v10    # "currentMostLikelyEmotion":Ljava/lang/String;
    .end local v11    # "data":[B
    .end local v12    # "currentMostLikelyEmotionScore":D
    .end local v21    # "i":I
    .end local v22    # "is":Ljava/io/BufferedInputStream;
    .end local v23    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    new-instance v23, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v23    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 153
    :cond_5
    const-string v3, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    .restart local v2    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v5    # "responseCode":I
    .restart local v6    # "responseContent":Ljava/lang/String;
    .restart local v10    # "currentMostLikelyEmotion":Ljava/lang/String;
    .restart local v11    # "data":[B
    .restart local v12    # "currentMostLikelyEmotionScore":D
    .restart local v19    # "faceArray":Lorg/json/JSONArray;
    .restart local v21    # "i":I
    .restart local v22    # "is":Ljava/io/BufferedInputStream;
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 186
    .local v18, "face":Lorg/json/JSONObject;
    const-string v3, "faceAttributes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "faceAttributes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "emotion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 187
    :cond_7
    const-string v10, "Emotion info is not included in response content"

    goto :goto_2

    .line 191
    :cond_8
    const-string v3, "faceAttributes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "emotion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 192
    .local v17, "emotions":Lorg/json/JSONObject;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 193
    .local v16, "emotionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 195
    .local v15, "emotion":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v26

    .line 196
    .local v26, "score":D
    cmpl-double v3, v26, v12

    if-lez v3, :cond_9

    .line 197
    move-object v10, v15

    .line 198
    move-wide/from16 v12, v26

    goto :goto_3

    .line 203
    .end local v15    # "emotion":Ljava/lang/String;
    .end local v16    # "emotionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v17    # "emotions":Lorg/json/JSONObject;
    .end local v18    # "face":Lorg/json/JSONObject;
    .end local v19    # "faceArray":Lorg/json/JSONArray;
    .end local v26    # "score":D
    :catch_0
    move-exception v14

    .line 204
    .local v14, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is something wrong. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The server url for the Microsoft Emotion API."
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    return-object v0
.end method

.method public serverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public subscriptionKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The subscripition key for the Microsoft Emotion API."
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public subscriptionKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 85
    return-void
.end method
