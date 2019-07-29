.class public Lcom/google/appinventor/components/runtime/ImageRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ImageRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ARTIFICIALINTELLIGENCE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Microsoft Computer Vision API. Please refer to the <a href=\"https://www.microsoft.com/cognitive-services/\">Microsoft Cognitive Services</a> for more information."
    docUri = "image/microsoft-image-+-emotion-recognizer"
    iconName = "images/MicrosoftImageRecognizer.png"
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
.field private static final LOG_TAG:Ljava/lang/String; = "ImageRecognizer"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

.field protected defaultSubscriptionKey:Ljava/lang/String;

.field protected key1:[B

.field protected key2:[B

.field protected microsoftEmotionAPIUrl:Ljava/lang/String;

.field protected subscriptionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/16 v3, 0x20

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 59
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 60
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    .line 61
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 62
    const-string v2, "https://westus.api.cognitive.microsoft.com/vision/v1.0/describe"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    .line 63
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    .line 65
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key2:[B

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->activity:Landroid/app/Activity;

    .line 76
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 77
    .local v1, "retval":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key2:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    .line 81
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageRecognizer"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 63
    :array_0
    .array-data 1
        0x45t
        0x62t
        0x38t
        0x5ft
        0x3ct
        -0x60t
        0x69t
        0x60t
        0x31t
        0x36t
        0x36t
        0x66t
        0x34t
        0x31t
        0x36t
        0x11t
        0x62t
        0x37t
        0x5et
        0x3et
        -0xdt
        0x3et
        0x67t
        0x36t
        0x37t
        0x33t
        0x39t
        0x35t
        0x62t
        0x30t
        0x31t
        0x60t
    .end array-data

    .line 65
    :array_1
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x3at
        0xdt
        -0x3bt
        0xct
        0x5t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x1t
        0x0t
        0x23t
        0x0t
        0x1t
        0x3at
        0xdt
        -0x3bt
        0xct
        0x5t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ImageRecognizer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ImageRecognizer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->postImageFile(Ljava/lang/String;)V

    return-void
.end method

.method private postImageFile(Ljava/lang/String;)V
    .locals 31
    .param p1, "picPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v19, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 148
    .local v19, "httpclient":Lorg/apache/http/client/HttpClient;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    :cond_1
    new-instance v23, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 157
    .local v23, "request":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    :cond_2
    const-string v2, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_1
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .local v22, "is":Ljava/io/BufferedInputStream;
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedInputStream;->available()I

    move-result v20

    .line 166
    .local v20, "i":I
    move/from16 v0, v20

    new-array v13, v0, [B

    .line 167
    .local v13, "data":[B
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/io/BufferedInputStream;->read([B)I

    .line 168
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedInputStream;->close()V

    .line 171
    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v10, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 172
    .local v10, "bae":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "application/octet-stream"

    invoke-virtual {v10, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 174
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 177
    .local v24, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "responseContent":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 179
    .local v4, "responseCode":I
    const-string v28, "???"

    .line 180
    .local v28, "tags":Ljava/lang/String;
    const-string v14, "???"

    .line 181
    .local v14, "description":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 183
    .local v16, "descriptionScore":D
    const/16 v2, 0xc8

    if-ne v4, v2, :cond_6

    .line 185
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 186
    .local v15, "descriptionJson":Lorg/json/JSONObject;
    const-string v2, "tags"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v29

    .line 187
    .local v29, "tagsJson":Lorg/json/JSONArray;
    const/16 v18, 0x1

    .line 188
    .local v18, "first":Z
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v25, "sb":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .local v21, "ind":I
    :goto_2
    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 190
    if-eqz v18, :cond_5

    .line 191
    const/16 v18, 0x0

    .line 195
    :goto_3
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 154
    .end local v4    # "responseCode":I
    .end local v5    # "responseContent":Ljava/lang/String;
    .end local v10    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v13    # "data":[B
    .end local v14    # "description":Ljava/lang/String;
    .end local v15    # "descriptionJson":Lorg/json/JSONObject;
    .end local v16    # "descriptionScore":D
    .end local v18    # "first":Z
    .end local v20    # "i":I
    .end local v21    # "ind":I
    .end local v22    # "is":Ljava/io/BufferedInputStream;
    .end local v23    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "tags":Ljava/lang/String;
    .end local v29    # "tagsJson":Lorg/json/JSONArray;
    :cond_3
    new-instance v23, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v23    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 160
    :cond_4
    const-string v2, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    .restart local v4    # "responseCode":I
    .restart local v5    # "responseContent":Ljava/lang/String;
    .restart local v10    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v13    # "data":[B
    .restart local v14    # "description":Ljava/lang/String;
    .restart local v15    # "descriptionJson":Lorg/json/JSONObject;
    .restart local v16    # "descriptionScore":D
    .restart local v18    # "first":Z
    .restart local v20    # "i":I
    .restart local v21    # "ind":I
    .restart local v22    # "is":Ljava/io/BufferedInputStream;
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    .restart local v28    # "tags":Ljava/lang/String;
    .restart local v29    # "tagsJson":Lorg/json/JSONArray;
    :cond_5
    const/16 v2, 0x2c

    :try_start_1
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 208
    .end local v15    # "descriptionJson":Lorg/json/JSONObject;
    .end local v18    # "first":Z
    .end local v21    # "ind":I
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    .end local v29    # "tagsJson":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 211
    :cond_6
    move-object/from16 v6, v28

    .line 212
    .local v6, "_tags":Ljava/lang/String;
    move-object v7, v14

    .line 213
    .local v7, "_description":Ljava/lang/String;
    move-wide/from16 v8, v16

    .line 215
    .local v8, "_descriptionScore":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->activity:Landroid/app/Activity;

    move-object/from16 v30, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;-><init>(Lcom/google/appinventor/components/runtime/ImageRecognizer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void

    .line 197
    .end local v6    # "_tags":Ljava/lang/String;
    .end local v7    # "_description":Ljava/lang/String;
    .end local v8    # "_descriptionScore":D
    .restart local v15    # "descriptionJson":Lorg/json/JSONObject;
    .restart local v18    # "first":Z
    .restart local v21    # "ind":I
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    .restart local v29    # "tagsJson":Lorg/json/JSONArray;
    :cond_7
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 199
    const-string v2, "captions"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 200
    .local v12, "captions":Lorg/json/JSONArray;
    const/16 v21, 0x0

    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    .line 201
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 202
    .local v11, "caption":Lorg/json/JSONObject;
    const-string v2, "confidence"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v26

    .line 203
    .local v26, "score":D
    cmpl-double v2, v26, v16

    if-lez v2, :cond_8

    .line 204
    const-string v2, "text"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    .line 205
    move-wide/from16 v16, v26

    .line 200
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_4
.end method


# virtual methods
.method public GotResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "responseContent"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "descriptionScore"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 235
    const-string v0, "GotResponse"

    const/4 v1, 0x5

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

    aput-object p4, v1, v2

    const/4 v2, 0x4

    .line 236
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 235
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public postImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property."
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/ImageRecognizer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The server url for the Microsoft Computer Vision API."
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

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
    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public subscriptionKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The subscripition key for the Microsoft Computer Vision API."
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

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
    .line 91
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 92
    return-void
.end method
