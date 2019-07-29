.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "MapFeatureContainerBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_CODE_IO_EXCEPTION:I = -0x2

.field private static final ERROR_CODE_MALFORMED_GEOJSON:I = -0x3

.field private static final ERROR_CODE_MALFORMED_URL:I = -0x1

.field private static final ERROR_CODE_UNKNOWN_TYPE:I = -0x4

.field private static final ERROR_IO_EXCEPTION:Ljava/lang/String; = "Unable to download content from URL"

.field private static final ERROR_MALFORMED_GEOJSON:Ljava/lang/String; = "Malformed GeoJSON response. Expected FeatureCollection as root element."

.field private static final ERROR_MALFORMED_URL:Ljava/lang/String; = "The URL is malformed"

.field private static final ERROR_UNKNOWN_TYPE:Ljava/lang/String; = "Unrecognized/invalid type in JSON object"

.field private static final GEOJSON_FEATURECOLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final GEOJSON_FEATURES:Ljava/lang/String; = "features"

.field private static final GEOJSON_GEOMETRYCOLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOJSON_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->performGet(Ljava/lang/String;)V

    return-void
.end method

.method private jsonArrayToYail(Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 427
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 428
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 433
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    .line 435
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->jsonArrayToYail(Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    .line 437
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->jsonObjectToYail(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 438
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    sget-object v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized/invalid type in JSON object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unrecognized/invalid type in JSON object"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 443
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    return-object v3
.end method

.method private jsonObjectToYail(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 403
    .local v0, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 404
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 406
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 411
    :cond_1
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v3, v4, v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_2
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 413
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->jsonArrayToYail(Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    .line 415
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->jsonObjectToYail(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    sget-object v4, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized/invalid type in JSON object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unrecognized/invalid type in JSON object"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    return-object v4
.end method

.method private loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 330
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 331
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 332
    instance-of v10, v2, Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_0

    .line 333
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 334
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 335
    .local v7, "responseCode":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, "responseMessage":Ljava/lang/String;
    const/16 v10, 0xc8

    if-eq v7, v10, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;

    invoke-direct {v11, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 371
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v7    # "responseCode":I
    .end local v8    # "responseMessage":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 346
    .restart local v2    # "connection":Ljava/net/URLConnection;
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 348
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v3, "content":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 351
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 356
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 357
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;

    invoke-direct {v11, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 354
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "content":Ljava/lang/StringBuilder;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_0

    .line 363
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 364
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;

    invoke-direct {v11, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private performGet(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->loadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "jsonContent":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 326
    .end local v1    # "jsonContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 320
    .restart local v1    # "jsonContent":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v1    # "jsonContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    const-string v3, "Exception retreiving GeoJSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "LoadFromURL"

    const/4 v4, -0x4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 323
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static stripBOM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 450
    .end local p0    # "content":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on a map feature."
    .end annotation

    .prologue
    .line 134
    const-string v0, "FeatureClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 138
    :cond_0
    return-void
.end method

.method public FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged a map feature."
    .end annotation

    .prologue
    .line 158
    const-string v0, "FeatureDrag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 162
    :cond_0
    return-void
.end method

.method public FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 7
    .param p1, "description"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 216
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "FeatureFromDescription"

    const/4 v3, -0x3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 219
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 218
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on a map feature."
    .end annotation

    .prologue
    .line 142
    const-string v0, "FeatureLongClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 146
    :cond_0
    return-void
.end method

.method public FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started dragging a map feature."
    .end annotation

    .prologue
    .line 150
    const-string v0, "FeatureStartDrag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 154
    :cond_0
    return-void
.end method

.method public FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped dragging a map feature."
    .end annotation

    .prologue
    .line 166
    const-string v0, "FeatureStopDrag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 170
    :cond_0
    return-void
.end method

.method public Features()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of features placed on this map. This list also includes any features created by calls to FeatureFromDescription"
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Features(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 106
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 107
    .local v0, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->removeFromMap()V

    goto :goto_0

    .line 109
    .end local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 110
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 111
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    if-eqz v3, :cond_1

    .line 114
    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 118
    return-void
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    .prologue
    .line 227
    const-string v1, "GotFeatures"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 230
    .local v0, "it":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public LoadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An error was encountered while processing a GeoJSON document at the given url. The responseCode parameter will contain an HTTP status code and the errorMessage parameter will contain a detailed error message."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 241
    const-string v0, "LoadError"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "LoadFromURL"

    const/16 v2, 0x836

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "LoadFromURL"

    const/16 v2, 0x44d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public LoadFromURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Load a feature collection in <a href=\"https://en.wikipedia.org/wiki/GeoJSON\">GeoJSON</a> format from the given url. On success, the event GotFeatures will be raised with the given url and a list of the features parsed from the GeoJSON as a list of (key, value) pairs. On failure, the LoadError event will be raised with any applicable HTTP response code and error message.</p>"
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 302
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1
    .param p1, "polyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 292
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 287
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 297
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 307
    return-void
.end method

.method protected processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->stripBOM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 377
    .local v2, "parsedData":Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "type":Ljava/lang/String;
    const-string v5, "FeatureCollection"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GeometryCollection"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;

    invoke-direct {v6, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 397
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v5, "features"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 388
    .local v0, "features":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v4, "yailFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 390
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->jsonObjectToYail(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;

    invoke-direct {v6, p0, p1, v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 282
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.setChildHeight called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.setChildWidth called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
