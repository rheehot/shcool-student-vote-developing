.class public Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkableCloudstitch.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Cloudstitch spreadsheet storage. Please refer to the <a href=\"https://www.cloudstitch.com/\">Cloudstitch</a> for more information."
    docUri = "storage/spreadsheets"
    iconName = "images/cloudstitch.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "cloudinary-android-1-4-5.jar, cloudinary-core-1-4-5.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private LOG:Ljava/lang/String;

.field protected activity:Landroid/app/Activity;

.field protected apiEndpoint:Ljava/lang/String;

.field protected columnsMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected dataIn2D:[[Ljava/lang/String;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field protected sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 58
    const-string v0, "Cloudstitch"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->LOG:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->apiEndpoint:Ljava/lang/String;

    .line 60
    const-string v0, "Sheet1"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->sheetName:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->columnsMapping:Ljava/util/Map;

    .line 64
    const/16 v0, 0x640

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->activity:Landroid/app/Activity;

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->LOG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->getData()V

    return-void
.end method

.method private getData()V
    .locals 28

    .prologue
    .line 131
    const-string v19, ""

    .line 133
    .local v19, "result":Ljava/lang/String;
    :try_start_0
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->apiEndpoint:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    .local v21, "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 135
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const-string v22, "GET"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 136
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 138
    .local v17, "rd":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 139
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 142
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 143
    new-instance v11, Lorg/cloudinary/json/JSONObject;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Lorg/cloudinary/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .local v11, "jsonObj":Lorg/cloudinary/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->sheetName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/cloudinary/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cloudinary/json/JSONArray;

    .line 145
    .local v5, "a":Lorg/cloudinary/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/cloudinary/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 146
    invoke-virtual {v5, v9}, Lorg/cloudinary/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 147
    .local v20, "text":Ljava/lang/String;
    const-string v22, "{"

    const-string v23, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "}"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "\""

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, "raw":Ljava/lang/String;
    const-string v22, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "keyValuePairs":[Ljava/lang/String;
    if-nez v9, :cond_1

    .line 151
    invoke-virtual {v5}, Lorg/cloudinary/json/JSONArray;->length()I

    move-result v22

    array-length v0, v12

    move/from16 v23, v0

    filled-new-array/range {v22 .. v23}, [I

    move-result-object v22

    const-class v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    .line 153
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    .line 156
    aget-object v15, v12, v10

    .line 157
    .local v15, "pair":Ljava/lang/String;
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "entry":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v8, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v8, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    const/16 v23, 0x1

    aget-object v23, v8, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v22, v10

    .line 160
    if-nez v9, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->columnsMapping:Ljava/util/Map;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v8, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 145
    .end local v8    # "entry":[Ljava/lang/String;
    .end local v15    # "pair":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 166
    .end local v5    # "a":Lorg/cloudinary/json/JSONArray;
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v11    # "jsonObj":Lorg/cloudinary/json/JSONObject;
    .end local v12    # "keyValuePairs":[Ljava/lang/String;
    .end local v14    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "raw":Ljava/lang/String;
    .end local v20    # "text":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 175
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "line":Ljava/lang/String;
    .end local v17    # "rd":Ljava/io/BufferedReader;
    .end local v21    # "url":Ljava/net/URL;
    :cond_5
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 177
    .local v18, "responseContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    new-instance v23, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$2;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void

    .line 168
    .end local v18    # "responseContent":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/lang/Exception;
    const-string v22, "Cloudstitch"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v22, v0

    const-string v23, "AfterGetAllData"

    const/16 v24, 0x44d

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->apiEndpoint:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public AfterGetAllData(Ljava/lang/String;)V
    .locals 3
    .param p1, "responseContent"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 253
    const-string v0, "AfterGetAllData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public AfterUpload(Ljava/lang/String;)V
    .locals 3
    .param p1, "responseContent"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 264
    const-string v0, "AfterUpload"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public apiEndpoint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->apiEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public apiEndpoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->apiEndpoint:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public getAllData()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property."
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public getColumnList(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 187
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->columnsMapping:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, "columnNumber":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 189
    .local v0, "columnList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    return-object v3
.end method

.method public getRowList(I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .param p1, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 197
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 198
    .local v0, "rowList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v1, v2

    .line 199
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 204
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->columnsMapping:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 205
    .local v0, "columnNumber":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->dataIn2D:[[Ljava/lang/String;

    add-int/lit8 v2, p2, -0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    return-object v1
.end method

.method public postData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 210
    move-object v0, p1

    .line 211
    .local v0, "data2":Ljava/lang/String;
    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$3;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$3;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public postTextData(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v4, ""

    .line 222
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->apiEndpoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->sheetName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 223
    .local v5, "u":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 224
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 225
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 226
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v6, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 229
    .local v2, "os":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 235
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v5    # "u":Ljava/net/URL;
    :goto_0
    move-object v3, v4

    .line 237
    .local v3, "responseContent":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$4;

    invoke-direct {v7, p0, v3}, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$4;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void

    .line 231
    .end local v3    # "responseContent":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 233
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->LOG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sheetName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public sheetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Sheet1"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->sheetName:Ljava/lang/String;

    .line 105
    return-void
.end method
