.class public Lcom/google/appinventor/components/runtime/util/FroyoUtil;
.super Ljava/lang/Object;
.source "FroyoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static abandonFocus(Landroid/media/AudioManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "am"    # Landroid/media/AudioManager;
    .param p1, "afChangeListener"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .end local p1    # "afChangeListener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 122
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->isFileProbablyWebPage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static focusRequestGranted(Landroid/media/AudioManager;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "am"    # Landroid/media/AudioManager;
    .param p1, "afChangeListener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 110
    check-cast p1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .end local p1    # "afChangeListener":Ljava/lang/Object;
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 112
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRotation(Landroid/view/Display;)I
    .locals 1
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static getWebViewClient(ZZZLcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/Component;)Landroid/webkit/WebViewClient;
    .locals 7
    .param p0, "ignoreErrors"    # Z
    .param p1, "followLinks"    # Z
    .param p2, "useExternalBrowser"    # Z
    .param p3, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p4, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .prologue
    .line 151
    invoke-interface {p3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    .line 152
    .local v3, "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-interface {p3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    .line 153
    .local v2, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;

    move v1, p2

    move v4, p1

    move v5, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;-><init>(ZLandroid/app/Activity;Lcom/google/appinventor/components/runtime/Form;ZZLcom/google/appinventor/components/runtime/Component;)V

    return-object v0
.end method

.method private static isFileProbablyWebPage(Ljava/lang/String;)Z
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, ".html"

    aput-object v7, v6, v5

    const-string v7, ".html5"

    aput-object v7, v6, v4

    const/4 v7, 0x2

    const-string v8, ".htm"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, ".php"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, ".jsp"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, ".asp"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, ".aspx"

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, "webFileExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "lastOccurance":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "stringAfterLastWebFileExtension":Ljava/lang/String;
    const-string v7, "#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "?"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 138
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "lastOccurance":I
    .end local v2    # "stringAfterLastWebFileExtension":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public static setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;
    .locals 1
    .param p0, "player"    # Lcom/google/appinventor/components/runtime/Player;

    .prologue
    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Player;)V

    .line 100
    .local v0, "afChangeListener":Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;
    return-object v0
.end method

.method public static setAudioManager(Landroid/app/Activity;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method
