.class public final Lcom/google/appinventor/components/runtime/YandexTranslate;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "YandexTranslate.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Use this component to translate words and sentences between different languages. This component needs Internet access, as it will request translations to the Yandex.Translate service. Specify the source and target language in the form source-target using two letter language codes. So\"en-es\" will translate from English to Spanish while \"es-ru\" will translate from Spanish to Russian. If you leave out the source language, the service will attempt to detect the source language. So providing just \"es\" will attempt to detect the source language and translate it to Spanish.<p /> This component is powered by the Yandex translation service.  See http://api.yandex.com/translate/ for more information, including the list of available languages and the meanings of the language codes and status codes. <p />Note: Translation happens asynchronously in the background. When the translation is complete, the \"GotTranslation\" event is triggered."
    docUri = "voice/yandex-translate"
    iconName = "images/yandex.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "YandexTranslate"

.field public static final YANDEX_TRANSLATE_SERVICE_URL:Ljava/lang/String; = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final defaultYandexKey:Ljava/lang/String;

.field private final key1:[B

.field private final key1x:[B

.field private yandexKey:Ljava/lang/String;

.field private final yandexKeyDefaultTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/16 v3, 0x54

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 62
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->key1:[B

    .line 69
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->key1x:[B

    .line 77
    const-string v2, "DEFAULT"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->yandexKeyDefaultTag:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->setYandexTranslateTagline()V

    .line 91
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->key1:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 92
    .local v1, "retval":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->key1:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->key1:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->key1x:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->defaultYandexKey:Ljava/lang/String;

    .line 96
    const-string v2, "DEFAULT"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->yandexKey:Ljava/lang/String;

    .line 97
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    .line 98
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "YandexTranslate"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 62
    nop

    :array_0
    .array-data 1
        -0x7ft
        -0x58t
        0x4ft
        0x50t
        0x41t
        0x6et
        -0x50t
        0x57t
        -0x3et
        0x7et
        -0x7dt
        0x7ft
        0x58t
        -0x4ft
        -0x50t
        -0x41t
        -0x70t
        0x50t
        -0x57t
        0x3ct
        -0x7et
        -0x58t
        0x4ft
        0x50t
        0x41t
        0x6ft
        -0x50t
        0x57t
        -0x3et
        0x7et
        -0x7dt
        0x7ft
        0x58t
        -0x4ft
        -0x50t
        -0x41t
        -0x70t
        0x50t
        -0x57t
        0x3dt
        -0x7dt
        -0x58t
        0x4ft
        0x50t
        0x41t
        0x70t
        -0x50t
        0x57t
        -0x3et
        0x7et
        -0x7dt
        0x7ft
        0x58t
        -0x4ft
        -0x50t
        -0x41t
        -0x70t
        0x50t
        -0x57t
        0x3et
        -0x7ct
        -0x58t
        0x4ft
        0x50t
        0x41t
        0x71t
        -0x50t
        0x57t
        -0x3et
        0x7et
        -0x7dt
        0x7ft
        0x58t
        -0x4ft
        -0x50t
        -0x41t
        -0x70t
        0x50t
        -0x57t
        0x3ft
        0x7et
        -0x7dt
        0x7ft
        0x58t
    .end array-data

    .line 69
    :array_1
    .array-data 1
        -0xbt
        -0x26t
        0x21t
        0x23t
        0x2dt
        0x40t
        -0x7ft
        0x79t
        -0xdt
        0x50t
        -0x4ft
        0x4ft
        0x69t
        -0x79t
        -0x80t
        -0x76t
        -0x5ft
        0x67t
        -0x3t
        0xet
        -0x4ft
        -0x63t
        0x7bt
        0x64t
        0x77t
        0x35t
        -0x62t
        0x66t
        -0x5t
        0x48t
        -0x4ct
        0x4bt
        0x6et
        -0x2et
        -0x7dt
        -0x73t
        -0xet
        0x64t
        -0x68t
        0x8t
        -0x1ft
        -0x63t
        0x2dt
        0x7et
        0x76t
        0x40t
        -0x2ct
        0x35t
        -0xet
        0x1ct
        -0x4at
        0x4dt
        0x3et
        -0x7ct
        -0x2dt
        -0x74t
        -0x5ft
        0x68t
        -0x34t
        0x58t
        -0x4ft
        -0x34t
        0x77t
        0x61t
        0x23t
        0x15t
        -0x2bt
        0x62t
        -0xbt
        0x1ct
        -0x20t
        0x4at
        0x69t
        -0x2bt
        -0x79t
        -0x72t
        -0x60t
        0x36t
        -0x34t
        0x6t
        0x4at
        -0x19t
        0x1at
        0x6et
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/YandexTranslate;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/YandexTranslate;->performRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 204
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 206
    const-string v2, "UTF-8"

    .line 208
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 210
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 211
    .local v1, "contentLength":I
    if-eq v1, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 216
    .local v0, "buf":[C
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v7, :cond_2

    .line 217
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 221
    .end local v0    # "buf":[C
    .end local v1    # "contentLength":I
    .end local v3    # "read":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 222
    throw v6

    .line 211
    .restart local v1    # "contentLength":I
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 219
    .restart local v0    # "buf":[C
    .restart local v3    # "read":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 221
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 219
    return-object v6
.end method

.method private performRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "languageToTranslateTo"    # Ljava/lang/String;
    .param p2, "textToTranslate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->yandexKey:Ljava/lang/String;

    const-string v10, "DEFAULT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 159
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->defaultYandexKey:Ljava/lang/String;

    .line 163
    .local v6, "sendYandexKey":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://translate.yandex.net/api/v1.5/tr.json/translate?key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&lang="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&text="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "UTF-8"

    .line 166
    invoke-static {p2, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "finalURL":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 169
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 170
    .local v0, "connection":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/YandexTranslate;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "responseContent":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    const-string v9, "code"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "responseCode":Ljava/lang/String;
    const-string v9, "text"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 180
    .local v3, "response":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 183
    .local v7, "translation":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/google/appinventor/components/runtime/YandexTranslate$2;

    invoke-direct {v10, p0, v4, v7}, Lcom/google/appinventor/components/runtime/YandexTranslate$2;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONArray;
    .end local v4    # "responseCode":Ljava/lang/String;
    .end local v5    # "responseContent":Ljava/lang/String;
    .end local v7    # "translation":Ljava/lang/String;
    :cond_0
    return-void

    .line 161
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "finalURL":Ljava/lang/String;
    .end local v6    # "sendYandexKey":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :cond_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->yandexKey:Ljava/lang/String;

    .restart local v6    # "sendYandexKey":Ljava/lang/String;
    goto :goto_0

    .line 191
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "finalURL":Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    throw v9
.end method


# virtual methods
.method public GotTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseCode"    # Ljava/lang/String;
    .param p2, "translation"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Yandex.Translate service returns the translated text. This event also provides a response code for error handling. If the responseCode is not 200, then something went wrong with the call, and the translation will not be available."
    .end annotation

    .prologue
    .line 236
    const-string v0, "GotTranslation"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "languageToTranslateTo"    # Ljava/lang/String;
    .param p2, "textToTranslate"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "By providing a target language to translate to (for instance, \'es\' for Spanish, \'en\' for English, or \'ru\' for Russian), and a word or sentence to translate, this method will request a translation to the Yandex.Translate service.\nOnce the text is translated by the external service, the event GotTranslation will be executed.\nNote: Yandex.Translate will attempt to detect the source language. You can also specify prepending it to the language translation. I.e., es-ru will specify Spanish to Russian translation."
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->yandexKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "RequestTranslation"

    const/16 v2, 0x899

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/YandexTranslate$1;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public YandexKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->yandexKey:Ljava/lang/String;

    .line 109
    return-void
.end method
