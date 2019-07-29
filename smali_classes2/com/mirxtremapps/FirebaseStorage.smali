.class public Lcom/mirxtremapps/FirebaseStorage;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "FirebaseStorage.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Storage version 1.0"
    iconName = "http://www.mirxtremapps.com/icon/Firebase.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;,
        Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;,
        Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;
    }
.end annotation


# static fields
.field private static final CURRENT_ARRAY:I = 0x3

.field private static final CURRENT_OBJECT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Firebase Auth"

.field private static final ROOT:I = 0x1

.field private static final ROOT_TYPE_ARRAY:I = 0x1

.field private static final ROOT_TYPE_OBJECT:I = 0x2

.field public static final VERSION:I = 0x1

.field private static final mimeTypeToExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private allowCookies:Z

.field private final cookieHandler:Ljava/net/CookieHandler;

.field private currentArray:Lorg/json/JSONArray;

.field private currentObject:Lorg/json/JSONObject;

.field private currentPosition:I

.field private firebaseApi:Ljava/lang/String;

.field private list:Lcom/google/appinventor/components/runtime/util/YailList;

.field private myList:Lcom/google/appinventor/components/runtime/util/YailList;

.field private requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

.field private responseFileName:Ljava/lang/String;

.field private rootArray:Lorg/json/JSONArray;

.field private rootObject:Lorg/json/JSONObject;

.field private rootType:I

.field private saveResponse:Z

.field private step:I

.field private storageBucket:Ljava/lang/String;

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    .line 172
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/zip"

    const-string v2, "zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mpeg"

    const-string v2, "mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/png"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/tiff"

    const-string v2, "tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/plain"

    const-string v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/html"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/xml"

    const-string v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->urlString:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->firebaseApi:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/mirxtremapps/FirebaseStorage;->step:I

    .line 195
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 196
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->myList:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->responseFileName:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->activity:Landroid/app/Activity;

    .line 235
    iput-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 221
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->urlString:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->firebaseApi:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/mirxtremapps/FirebaseStorage;->step:I

    .line 195
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 196
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->myList:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->responseFileName:Ljava/lang/String;

    .line 222
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->activity:Landroid/app/Activity;

    .line 224
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newCookieManager()Ljava/net/CookieHandler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    .line 227
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mirxtremapps/FirebaseStorage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mirxtremapps/FirebaseStorage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mirxtremapps/FirebaseStorage;->allowCookies:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mirxtremapps/FirebaseStorage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mirxtremapps/FirebaseStorage;->saveResponse:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mirxtremapps/FirebaseStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->step:I

    return v0
.end method

.method static synthetic access$300(Lcom/mirxtremapps/FirebaseStorage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lcom/mirxtremapps/FirebaseStorage;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mirxtremapps/FirebaseStorage;)Ljava/net/CookieHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;
    .param p1, "x1"    # Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mirxtremapps/FirebaseStorage;->performRequest(Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/mirxtremapps/FirebaseStorage;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method private capturePropertyValues(Ljava/lang/String;)Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1299
    :try_start_0
    new-instance v1, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    invoke-direct {v1, p0}, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;-><init>(Lcom/mirxtremapps/FirebaseStorage;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1306
    :goto_0
    return-object v1

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x455

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mirxtremapps/FirebaseStorage;->urlString:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1306
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1303
    :catch_1
    move-exception v0

    .line 1304
    .local v0, "e":Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v2, v0, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;->errorNumber:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "responseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1219
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1233
    :goto_0
    return-object v2

    .line 1225
    :cond_0
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1226
    .local v1, "indexOfSemicolon":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1227
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1229
    :cond_1
    sget-object v2, Lcom/mirxtremapps/FirebaseStorage;->mimeTypeToExtension:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    .local v0, "extension":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1231
    const-string v0, "tmp"

    .line 1233
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method static decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "firebaseResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 895
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jsonText is not a legal JSON value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1208
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1211
    :goto_0
    return-object v1

    .line 1209
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
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

    .line 1155
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 1156
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1157
    const-string v2, "UTF-8"

    .line 1159
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/mirxtremapps/FirebaseStorage;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1161
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 1162
    .local v1, "contentLength":I
    if-eq v1, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1165
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 1167
    .local v0, "buf":[C
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v7, :cond_2

    .line 1168
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1172
    .end local v0    # "buf":[C
    .end local v1    # "contentLength":I
    .end local v3    # "read":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    throw v6

    .line 1162
    .restart local v1    # "contentLength":I
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 1170
    .restart local v0    # "buf":[C
    .restart local v3    # "read":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1172
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    return-object v6
.end method

.method private static getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1136
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "responseType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "responseType":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "responseType":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static openConnection(Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8
    .param p0, "webProps"    # Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    .param p1, "httpVerb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v7, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1059
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v7, "PUT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "DELETE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1062
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1066
    :cond_1
    iget-object v7, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1067
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1068
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1069
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->cookies:Ljava/util/Map;

    if-eqz v7, :cond_5

    .line 1075
    iget-object v7, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->cookies:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1076
    .local v1, "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1077
    .restart local v5    # "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1078
    .restart local v6    # "value":Ljava/lang/String;
    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1083
    .end local v1    # "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private performRequest(Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "webProps"    # Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    .param p2, "postData"    # [B
    .param p3, "postFile"    # Ljava/lang/String;
    .param p4, "httpVerb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-static {p1, p4}, Lcom/mirxtremapps/FirebaseStorage;->openConnection(Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 979
    .local v6, "connection":Ljava/net/HttpURLConnection;
    if-eqz v6, :cond_1

    .line 981
    if-eqz p2, :cond_2

    .line 982
    :try_start_0
    invoke-static {v6, p2}, Lcom/mirxtremapps/FirebaseStorage;->writeRequestData(Ljava/net/HttpURLConnection;[B)V

    .line 988
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 989
    .local v3, "firebaseCode":I
    invoke-static {v6}, Lcom/mirxtremapps/FirebaseStorage;->getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 990
    .local v4, "responseType":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mirxtremapps/FirebaseStorage;->processResponseCookies(Ljava/net/HttpURLConnection;)V

    .line 992
    iget-boolean v0, p0, Lcom/mirxtremapps/FirebaseStorage;->saveResponse:Z

    if-eqz v0, :cond_3

    .line 993
    iget-object v0, p1, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->responseFileName:Ljava/lang/String;

    invoke-static {v6, v0, v4}, Lcom/mirxtremapps/FirebaseStorage;->saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 997
    .local v5, "path":Ljava/lang/String;
    iget-object v8, p0, Lcom/mirxtremapps/FirebaseStorage;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/mirxtremapps/FirebaseStorage$7;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mirxtremapps/FirebaseStorage$7;-><init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    .end local v5    # "path":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1042
    .end local v3    # "firebaseCode":I
    .end local v4    # "responseType":Ljava/lang/String;
    :cond_1
    return-void

    .line 983
    :cond_2
    if-eqz p3, :cond_0

    .line 984
    :try_start_1
    invoke-direct {p0, v6, p3}, Lcom/mirxtremapps/FirebaseStorage;->writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1039
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 1004
    .restart local v3    # "firebaseCode":I
    .restart local v4    # "responseType":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {v6}, Lcom/mirxtremapps/FirebaseStorage;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, "firebaseResponse":Ljava/lang/String;
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mirxtremapps/FirebaseStorage$8;

    invoke-direct {v1, p0, v3, v7}, Lcom/mirxtremapps/FirebaseStorage$8;-><init>(Lcom/mirxtremapps/FirebaseStorage;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .locals 15
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;
        }
    .end annotation

    .prologue
    .line 1243
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 1244
    .local v7, "requestHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    if-ge v2, v12, :cond_4

    .line 1245
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 1247
    .local v3, "item":Ljava/lang/Object;
    instance-of v12, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v12, :cond_3

    move-object v9, v3

    .line 1248
    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1249
    .local v9, "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 1251
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "fieldName":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 1256
    .local v1, "fieldValues":Ljava/lang/Object;
    move-object v5, v0

    .line 1257
    .local v5, "key":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1262
    .local v11, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v12, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v12, :cond_0

    move-object v6, v1

    .line 1264
    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1265
    .local v6, "multipleFieldsValues":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 1266
    invoke-virtual {v6, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    .line 1267
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1271
    .end local v4    # "j":I
    .end local v6    # "multipleFieldsValues":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_0
    move-object v8, v1

    .line 1272
    .local v8, "singleFieldValue":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    .end local v8    # "singleFieldValue":Ljava/lang/Object;
    :cond_1
    invoke-interface {v7, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1278
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "fieldValues":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    .end local v11    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v12, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;

    const/16 v13, 0x457

    add-int/lit8 v14, v2, 0x1

    invoke-direct {v12, v13, v14}, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;-><init>(II)V

    throw v12

    .line 1283
    .end local v9    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_3
    new-instance v12, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;

    const/16 v13, 0x456

    add-int/lit8 v14, v2, 0x1

    invoke-direct {v12, v13, v14}, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;-><init>(II)V

    throw v12

    .line 1287
    .end local v3    # "item":Ljava/lang/Object;
    :cond_4
    return-object v7
.end method

.method private processResponseCookies(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1141
    iget-boolean v1, p0, Lcom/mirxtremapps/FirebaseStorage;->allowCookies:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v1, :cond_0

    .line 1143
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1144
    .local v0, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v0    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 1147
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1145
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "functionName"    # Ljava/lang/String;
    .param p4, "httpVerb"    # Ljava/lang/String;

    .prologue
    .line 721
    invoke-direct {p0, p3}, Lcom/mirxtremapps/FirebaseStorage;->capturePropertyValues(Ljava/lang/String;)Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    move-result-object v5

    .line 722
    .local v5, "webProps":Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    if-nez v5, :cond_0

    .line 755
    :goto_0
    return-void

    .line 727
    :cond_0
    new-instance v0, Lcom/mirxtremapps/FirebaseStorage$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mirxtremapps/FirebaseStorage$6;-><init>(Lcom/mirxtremapps/FirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "responseFileName"    # Ljava/lang/String;
    .param p2, "responseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    .line 1178
    invoke-static {p1, p2}, Lcom/mirxtremapps/FirebaseStorage;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1180
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/mirxtremapps/FirebaseStorage;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1182
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1186
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 1187
    .local v0, "b":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1192
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1194
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1197
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1200
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1190
    :cond_0
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1194
    .end local v0    # "b":I
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1197
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    throw v4
.end method

.method private static writeRequestData(Ljava/net/HttpURLConnection;[B)V
    .locals 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "postData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1092
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1094
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1095
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1097
    .local v0, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1098
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1102
    return-void

    .line 1100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    throw v1
.end method

.method private writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1115
    .local v1, "in":Ljava/io/BufferedInputStream;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1116
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1117
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1120
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 1121
    .local v0, "b":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1126
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1128
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1131
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1133
    return-void

    .line 1124
    :cond_0
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1128
    .end local v0    # "b":I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1131
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v3
.end method


# virtual methods
.method public AllowCookies(Z)V
    .locals 4
    .param p1, "allowCookies"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/mirxtremapps/FirebaseStorage;->allowCookies:Z

    .line 340
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "AllowCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 344
    :cond_0
    return-void
.end method

.method public AllowCookies()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Never allow Cookies"
        userVisible = false
    .end annotation

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/mirxtremapps/FirebaseStorage;->allowCookies:Z

    return v0
.end method

.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Firebase project API"
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->firebaseApi:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "api_key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "YOUR_FIREBASE_API"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage;->firebaseApi:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public BuildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 7
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 797
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mirxtremapps/FirebaseStorage;->buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 800
    :goto_0
    return-object v1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "BuildRequestData"

    iget v3, v0, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 800
    const-string v1, ""

    goto :goto_0
.end method

.method public ClearCookies()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->cookieHandler:Ljava/net/CookieHandler;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "ClearCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete filename"
    .end annotation

    .prologue
    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://firebasestorage.googleapis.com/v0/b/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/o/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mirxtremapps/FirebaseStorage;->Url(Ljava/lang/String;)V

    .line 680
    const-string v1, "Delete"

    invoke-direct {p0, v1}, Lcom/mirxtremapps/FirebaseStorage;->capturePropertyValues(Ljava/lang/String;)Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    move-result-object v0

    .line 681
    .local v0, "webProps":Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    if-nez v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v1, Lcom/mirxtremapps/FirebaseStorage$5;

    invoke-direct {v1, p0, v0}, Lcom/mirxtremapps/FirebaseStorage$5;-><init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public Error(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1466
    const-string v0, "Error"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1467
    return-void
.end method

.method public ErrorHandler(ILjava/lang/Object;)V
    .locals 6
    .param p1, "firebaseCode"    # I
    .param p2, "firebaseResponse"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1426
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "convercion":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mirxtremapps/FirebaseStorage;->ParseJSON(Ljava/lang/String;)V

    .line 1429
    const-string v5, "error"

    invoke-virtual {p0, v5}, Lcom/mirxtremapps/FirebaseStorage;->GetStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    .local v1, "error":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1432
    .local v4, "sublist":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mirxtremapps/FirebaseStorage;->ParseJSON(Ljava/lang/String;)V

    .line 1434
    const-string v5, "message"

    invoke-virtual {p0, v5}, Lcom/mirxtremapps/FirebaseStorage;->GetStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1443
    .end local v0    # "convercion":Ljava/lang/String;
    .end local v1    # "error":Ljava/lang/String;
    .end local v4    # "sublist":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mirxtremapps/FirebaseStorage;->Error(Ljava/lang/String;)V

    .line 1444
    return-void

    .line 1437
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1439
    .local v2, "ex":Lorg/json/JSONException;
    const-string v3, ""

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public FirebaseStorageResponse(ILjava/lang/String;)V
    .locals 4
    .param p1, "firebaseCode"    # I
    .param p2, "firebaseResponse"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string v0, "FirebaseStorageResponse"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 770
    return-void
.end method

.method public Get(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get downloadUrl for given filename"
    .end annotation

    .prologue
    .line 412
    const/4 v1, 0x2

    iput v1, p0, Lcom/mirxtremapps/FirebaseStorage;->step:I

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://firebasestorage.googleapis.com/v0/b/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/o/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mirxtremapps/FirebaseStorage;->Url(Ljava/lang/String;)V

    .line 417
    const-string v1, "Get"

    invoke-direct {p0, v1}, Lcom/mirxtremapps/FirebaseStorage;->capturePropertyValues(Ljava/lang/String;)Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    move-result-object v0

    .line 418
    .local v0, "webProps":Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v1, Lcom/mirxtremapps/FirebaseStorage$1;

    invoke-direct {v1, p0, v0}, Lcom/mirxtremapps/FirebaseStorage$1;-><init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public GetStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1341
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->currentPosition:I

    if-ne v0, v1, :cond_1

    .line 1343
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootType:I

    if-ne v0, v1, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1359
    :goto_0
    return-object v0

    .line 1346
    :cond_0
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootType:I

    if-ne v0, v3, :cond_3

    .line 1347
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1352
    :cond_1
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->currentPosition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->currentArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1355
    :cond_2
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->currentPosition:I

    if-ne v0, v3, :cond_3

    .line 1356
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->currentObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1359
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "responseType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    .line 783
    const-string v0, "GotFile"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 784
    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "htmlText"    # Ljava/lang/String;

    .prologue
    .line 944
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 948
    :goto_0
    return-object v1

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "HtmlTextDecode"

    const/16 v3, 0x452

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 948
    const-string v1, ""

    goto :goto_0
.end method

.method public OpenJSONObject(Ljava/lang/String;)V
    .locals 3
    .param p1, "JSONObjectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1366
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootArray:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->currentObject:Lorg/json/JSONObject;

    .line 1371
    :cond_0
    :goto_0
    iput v2, p0, Lcom/mirxtremapps/FirebaseStorage;->currentPosition:I

    .line 1372
    return-void

    .line 1368
    :cond_1
    iget v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootType:I

    if-ne v0, v2, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->rootObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->currentObject:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public ParseJSON(Ljava/lang/String;)V
    .locals 5
    .param p1, "JSONString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1317
    :try_start_0
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 1318
    .local v1, "json":Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 1320
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mirxtremapps/FirebaseStorage;->rootObject:Lorg/json/JSONObject;

    .line 1321
    const/4 v2, 0x2

    iput v2, p0, Lcom/mirxtremapps/FirebaseStorage;->rootType:I

    .line 1328
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/mirxtremapps/FirebaseStorage;->currentPosition:I

    .line 1334
    return-void

    .line 1323
    :cond_1
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 1325
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mirxtremapps/FirebaseStorage;->rootArray:Lorg/json/JSONArray;

    .line 1326
    const/4 v2, 0x1

    iput v2, p0, Lcom/mirxtremapps/FirebaseStorage;->rootType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1330
    .end local v1    # "json":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Argument must be valid JSON"

    const-string v4, "Check your JSON and try again."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public PostText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 447
    const-string v0, "UTF-8"

    const-string v1, "PostText"

    const-string v2, "POST"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mirxtremapps/FirebaseStorage;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v0, "PostTextWithEncoding"

    const-string v1, "POST"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mirxtremapps/FirebaseStorage;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public PutFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v1, "PutFile"

    invoke-direct {p0, v1}, Lcom/mirxtremapps/FirebaseStorage;->capturePropertyValues(Ljava/lang/String;)Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    move-result-object v0

    .line 643
    .local v0, "webProps":Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    if-nez v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 648
    :cond_0
    new-instance v1, Lcom/mirxtremapps/FirebaseStorage$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/mirxtremapps/FirebaseStorage$4;-><init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public PutText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string v0, "UTF-8"

    const-string v1, "PutText"

    const-string v2, "PUT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mirxtremapps/FirebaseStorage;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public PutTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 630
    const-string v0, "PutTextWithEncoding"

    const-string v1, "PUT"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mirxtremapps/FirebaseStorage;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Content-Type: application/json"
        userVisible = false
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 316
    :try_start_0
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    .line 317
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "RequestHeaders"

    iget v3, v0, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Response(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1415
    const-string v0, "Response"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1416
    return-void
.end method

.method public ResponseFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
        userVisible = false
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 385
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage;->responseFileName:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public SaveResponse(Z)V
    .locals 0
    .param p1, "saveResponse"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/mirxtremapps/FirebaseStorage;->saveResponse:Z

    .line 363
    return-void
.end method

.method public SaveResponse()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
        userVisible = false
    .end annotation

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/mirxtremapps/FirebaseStorage;->saveResponse:Z

    return v0
.end method

.method public StepOne(ILjava/lang/Object;)V
    .locals 8
    .param p1, "firebaseCode"    # I
    .param p2, "firebaseResponse"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1388
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "convercion":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mirxtremapps/FirebaseStorage;->ParseJSON(Ljava/lang/String;)V

    .line 1391
    const-string v6, "name"

    invoke-virtual {p0, v6}, Lcom/mirxtremapps/FirebaseStorage;->GetStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1392
    .local v5, "filename":Ljava/lang/String;
    const-string v6, "bucket"

    invoke-virtual {p0, v6}, Lcom/mirxtremapps/FirebaseStorage;->GetStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "bucket":Ljava/lang/String;
    const-string v6, "downloadTokens"

    invoke-virtual {p0, v6}, Lcom/mirxtremapps/FirebaseStorage;->GetStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1394
    .local v2, "downloadToken":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://firebasestorage.googleapis.com/v0/b/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/o/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?alt=media&token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1405
    .end local v1    # "convercion":Ljava/lang/String;
    .local v3, "downloadUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v5, v3}, Lcom/mirxtremapps/FirebaseStorage;->Response(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    return-void

    .line 1396
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v2    # "downloadToken":Ljava/lang/String;
    .end local v3    # "downloadUrl":Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1398
    .local v4, "ex":Lorg/json/JSONException;
    const-string v5, ""

    .line 1399
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v0, ""

    .line 1400
    .restart local v0    # "bucket":Ljava/lang/String;
    const-string v2, ""

    .line 1401
    .restart local v2    # "downloadToken":Ljava/lang/String;
    const-string v3, ""

    .restart local v3    # "downloadUrl":Ljava/lang/String;
    goto :goto_0
.end method

.method public StorageBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Firebase project API"
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    return-object v0
.end method

.method public StorageBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "storage_Bucket"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "YOUR_FIREBASE_STORAGE_BUCKET"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 293
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public UploadPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Upload .jpeg image file to Firebase Storage Bucket"
    .end annotation

    .prologue
    .line 486
    const/4 v7, 0x1

    iput v7, p0, Lcom/mirxtremapps/FirebaseStorage;->step:I

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v1, "contentType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "Content-Type"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v7, "image/jpeg"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 496
    .local v3, "myList":Lcom/google/appinventor/components/runtime/util/YailList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v0, "authorization":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "Authorization"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bearer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mirxtremapps/FirebaseStorage;->firebaseApi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    .line 504
    .local v4, "myList2":Lcom/google/appinventor/components/runtime/util/YailList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v5, "objects2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 512
    .local v2, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, v2}, Lcom/mirxtremapps/FirebaseStorage;->RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 515
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://firebasestorage.googleapis.com/v0/b/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/o?uploadType=media&name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirxtremapps/FirebaseStorage;->Url(Ljava/lang/String;)V

    .line 517
    const-string v7, "PostFile"

    invoke-direct {p0, v7}, Lcom/mirxtremapps/FirebaseStorage;->capturePropertyValues(Ljava/lang/String;)Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    move-result-object v6

    .line 518
    .local v6, "webProps":Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    if-nez v6, :cond_0

    .line 537
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v7, Lcom/mirxtremapps/FirebaseStorage$2;

    invoke-direct {v7, p0, v6, p2}, Lcom/mirxtremapps/FirebaseStorage$2;-><init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public UploadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Upload .mp4 video file to Firebase Storage Bucket"
    .end annotation

    .prologue
    .line 550
    const/4 v7, 0x2

    iput v7, p0, Lcom/mirxtremapps/FirebaseStorage;->step:I

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v1, "contentType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "Content-Type"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v7, "video/mp4"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 560
    .local v3, "myList":Lcom/google/appinventor/components/runtime/util/YailList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v0, "authorization":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "Authorization"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bearer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mirxtremapps/FirebaseStorage;->firebaseApi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    .line 568
    .local v4, "myList2":Lcom/google/appinventor/components/runtime/util/YailList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v5, "objects2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 576
    .local v2, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, v2}, Lcom/mirxtremapps/FirebaseStorage;->RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://firebasestorage.googleapis.com/v0/b/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mirxtremapps/FirebaseStorage;->storageBucket:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/o?uploadType=media&name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mirxtremapps/FirebaseStorage;->Url(Ljava/lang/String;)V

    .line 581
    const-string v7, "PostFile"

    invoke-direct {p0, v7}, Lcom/mirxtremapps/FirebaseStorage;->capturePropertyValues(Ljava/lang/String;)Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    move-result-object v6

    .line 582
    .local v6, "webProps":Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
    if-nez v6, :cond_0

    .line 601
    :goto_0
    return-void

    .line 587
    :cond_0
    new-instance v7, Lcom/mirxtremapps/FirebaseStorage$3;

    invoke-direct {v7, p0, v6, p2}, Lcom/mirxtremapps/FirebaseStorage$3;-><init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 848
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 854
    :goto_0
    return-object v1

    .line 849
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Firebase Auth"

    const-string v2, "UTF-8 is unsupported?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    const-string v1, ""

    goto :goto_0
.end method

.method public Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
        userVisible = false
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage;->urlString:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public XMLTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "XmlText"    # Ljava/lang/String;

    .prologue
    .line 915
    :try_start_0
    invoke-static {p1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 916
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mirxtremapps/FirebaseStorage;->convertToList(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 925
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 917
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Exception in XMLTextDecode"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "XMLTextDecode"

    const/16 v4, 0x451

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 925
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_0
.end method

.method public any(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"email\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"password\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"returnSecureToken\":true}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    const-string v2, "PostText"

    const-string v3, "POST"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mirxtremapps/FirebaseStorage;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 10
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;
        }
    .end annotation

    .prologue
    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 816
    .local v0, "delimiter":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 817
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 819
    .local v2, "item":Ljava/lang/Object;
    instance-of v7, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 820
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 821
    .local v5, "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 823
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, "name":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 826
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Lcom/mirxtremapps/FirebaseStorage;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/mirxtremapps/FirebaseStorage;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v0, "&"

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;

    const/16 v8, 0x459

    add-int/lit8 v9, v1, 0x1

    invoke-direct {v7, v8, v9}, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;-><init>(II)V

    throw v7

    .line 832
    .end local v5    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_1
    new-instance v7, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;

    const/16 v8, 0x458

    add-int/lit8 v9, v1, 0x1

    invoke-direct {v7, v8, v9}, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;-><init>(II)V

    throw v7

    .line 836
    .end local v2    # "item":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public convertToList(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "firebaseResponse"    # Ljava/lang/String;

    .prologue
    .line 877
    :try_start_0
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 881
    :goto_0
    return-object v1

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "JsonTextDecode"

    const/16 v3, 0x451

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 881
    const-string v1, ""

    goto :goto_0
.end method
