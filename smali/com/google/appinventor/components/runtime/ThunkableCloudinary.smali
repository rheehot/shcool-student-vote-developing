.class public Lcom/google/appinventor/components/runtime/ThunkableCloudinary;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkableCloudinary.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Cloudinary cloud storage. Please refer to the <a href=\"http://cloudinary.com/\">Cloudinary</a> for more information."
    docUri = "storage/cloudinary-db"
    iconName = "images/cloudinary.png"
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


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThunkableCloudinary"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected cKey:Ljava/lang/String;

.field protected cSecret:Ljava/lang/String;

.field protected defaultCKey:Ljava/lang/String;

.field protected defaultCSecret:Ljava/lang/String;

.field protected defaultName:Ljava/lang/String;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field key1:[B

.field key1x:[B

.field key2:[B

.field key2x:[B

.field key3:[B

.field key3x:[B

.field protected name:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;

.field retval1:[B

.field retval2:[B

.field retval3:[B


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/16 v4, 0x1b

    const/16 v3, 0x16

    const/16 v2, 0xf

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->name:Ljava/lang/String;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultName:Ljava/lang/String;

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cKey:Ljava/lang/String;

    .line 58
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultCKey:Ljava/lang/String;

    .line 59
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cSecret:Ljava/lang/String;

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultCSecret:Ljava/lang/String;

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->packageName:Ljava/lang/String;

    .line 63
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key1:[B

    .line 64
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key1x:[B

    .line 66
    new-array v1, v2, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key2:[B

    .line 67
    new-array v1, v2, [B

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key2x:[B

    .line 69
    new-array v1, v4, [B

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key3:[B

    .line 70
    new-array v1, v4, [B

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key3x:[B

    .line 72
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key1:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval1:[B

    .line 73
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key2:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval2:[B

    .line 74
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key3:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval3:[B

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->activity:Landroid/app/Activity;

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval1:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval1:[B

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key1:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key1x:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval2:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval2:[B

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key2:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key2x:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval3:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval3:[B

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key3:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->key3x:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval1:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultName:Ljava/lang/String;

    .line 95
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval2:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultCKey:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->retval3:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultCSecret:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->packageName:Ljava/lang/String;

    .line 98
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThunkableCloudinary"

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 63
    :array_0
    .array-data 1
        -0x7ft
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
        -0x7et
        0x7dt
    .end array-data

    .line 64
    nop

    :array_1
    .array-data 1
        -0xbt
        -0x40t
        0x3at
        0x3et
        0x2at
        0x11t
        -0x2et
        0x3bt
        -0x59t
        0x1dt
        -0x11t
        0x10t
        0x2dt
        -0x2bt
        -0x27t
        -0x2ft
        -0xft
        0x22t
        -0x30t
        0xft
        -0x50t
        0x4et
    .end array-data

    .line 66
    nop

    :array_2
    .array-data 1
        0x17t
        0x37t
        0x34t
        0xct
        0x39t
        -0xet
        0x35t
        0x31t
        0x35t
        0x36t
        0x32t
        0x36t
        0x32t
        0x30t
        0x36t
    .end array-data

    .line 67
    :array_3
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
    .end array-data

    .line 69
    :array_4
    .array-data 1
        0x50t
        0x67t
        -0x2dt
        0x43t
        0x15t
        0x61t
        0x73t
        -0x15t
        0x62t
        0x41t
        0x71t
        0x42t
        0x39t
        0x59t
        0x72t
        0x6t
        0x66t
        0xet
        0x32t
        0x58t
        0x6bt
        0x66t
        -0x9t
        0x37t
        0x4ct
        0x6ft
        0x59t
    .end array-data

    .line 70
    :array_5
    .array-data 1
        0x0t
        0x0t
        -0x2t
        0x0t
        0x65t
        0x0t
        0x0t
        -0x6dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x17t
        0x0t
        0x50t
        0x0t
        0x38t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x6dt
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudinary;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->postMediaFile(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method private postMediaFile(ILjava/lang/String;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "picPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const-string v2, ""

    .line 226
    .local v2, "credential1":Ljava/lang/String;
    const-string v3, ""

    .line 227
    .local v3, "credential2":Ljava/lang/String;
    const-string v4, ""

    .line 228
    .local v4, "credential3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->name:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->name:Ljava/lang/String;

    const-string v14, "DEFAULT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultName:Ljava/lang/String;

    .line 233
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cKey:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cKey:Ljava/lang/String;

    const-string v14, "DEFAULT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 234
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultCKey:Ljava/lang/String;

    .line 238
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cSecret:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cSecret:Ljava/lang/String;

    const-string v14, "DEFAULT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 239
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->defaultCSecret:Ljava/lang/String;

    .line 244
    :goto_2
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v7, "is":Ljava/io/BufferedInputStream;
    new-instance v1, Lcom/cloudinary/Cloudinary;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "cloud_name"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v2, v13, v14

    const/4 v14, 0x2

    const-string v15, "api_key"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object v3, v13, v14

    const/4 v14, 0x4

    const-string v15, "api_secret"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    aput-object v4, v13, v14

    invoke-static {v13}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/cloudinary/Cloudinary;-><init>(Ljava/util/Map;)V

    .line 250
    .local v1, "cloudinary":Lcom/cloudinary/Cloudinary;
    const-string v9, ""

    .line 251
    .local v9, "response":Ljava/lang/String;
    const-string v12, ""

    .line 253
    .local v12, "url":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v8, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "tags"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->packageName:Ljava/lang/String;

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    .line 256
    const-string v13, "resource_type"

    const-string v14, "video"

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lcom/cloudinary/Cloudinary;->uploader()Lcom/cloudinary/Uploader;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Lcom/cloudinary/Uploader;->upload(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 261
    .local v11, "uploadResult":Ljava/util/Map;
    const-string v9, "successful"

    .line 262
    const-string v13, "secure_url"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 268
    .end local v11    # "uploadResult":Ljava/util/Map;
    :goto_3
    move-object v10, v9

    .line 269
    .local v10, "responseContent":Ljava/lang/String;
    move-object v6, v12

    .line 271
    .local v6, "imageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->activity:Landroid/app/Activity;

    new-instance v14, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v6}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$4;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void

    .line 231
    .end local v1    # "cloudinary":Lcom/cloudinary/Cloudinary;
    .end local v6    # "imageUrl":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/BufferedInputStream;
    .end local v8    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "responseContent":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 241
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cSecret:Ljava/lang/String;

    goto/16 :goto_2

    .line 263
    .restart local v1    # "cloudinary":Lcom/cloudinary/Cloudinary;
    .restart local v7    # "is":Ljava/io/BufferedInputStream;
    .restart local v8    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 264
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .line 265
    const-string v12, ""

    goto :goto_3
.end method


# virtual methods
.method public GotResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseContent"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 287
    const-string v0, "GotResponse"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public cloudName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Cloud Name for the Cloundinary API."
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->name:Ljava/lang/String;

    return-object v0
.end method

.method public cloudName(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->name:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public postAudio(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request for audio file."
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$2;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public postImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request for image file."
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public postVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request for video file."
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;-><init>(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public subscriptionKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The subscripition key for the Cloundinary API."
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cKey:Ljava/lang/String;

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
    .line 127
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cKey:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public subscriptionSecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The subscripition secret for the Cloundinary API."
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cSecret:Ljava/lang/String;

    return-object v0
.end method

.method public subscriptionSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->cSecret:Ljava/lang/String;

    .line 147
    return-void
.end method
