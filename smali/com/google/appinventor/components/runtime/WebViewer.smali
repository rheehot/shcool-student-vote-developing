.class public final Lcom/google/appinventor/components/runtime/WebViewer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "WebViewer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for viewing Web pages.  The Home URL can be specified in the Designer or in the Blocks Editor.  The view can be set to follow links when they are tapped, and users can fill in Web forms. Warning: This is not a full browser.  For example, pressing the phone\'s hardware Back key will exit the app, rather than move back in the browser history.<p />You can use the WebViewer.WebViewString property to communicate between your app and Javascript code running in the Webviewer page. In the app, you get and set WebViewString.  In the WebViewer, you include Javascript that references the window.AppInventor object, using the methoods </em getWebViewString()</em> and <em>setWebViewString(text)</em>.  <p />For example, if the WebViewer opens to a page that contains the Javascript command <br /> <em>document.write(\"The answer is\" + window.AppInventor.getWebViewString());</em> <br />and if you set WebView.WebVewString to \"hello\", then the web page will show </br ><em>The answer is hello</em>.  <br />And if the Web page contains Javascript that executes the command <br /><em>window.AppInventor.setWebViewString(\"hello from Javascript\")</em>, <br />then the value of the WebViewString property will be <br /><em>hello from Javascript</em>. "
    docUri = "web-viewer"
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "advanced-web-view.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;,
        Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;
    }
.end annotation


# instance fields
.field private followLinks:Z

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private homeUrl:Ljava/lang/String;

.field private ignoreSslErrors:Z

.field private prompt:Z

.field private useExternalBrowser:Z

.field private final webview:Lim/delight/android/webview/AdvancedWebView;

.field wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

.field private zoomDisplay:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v4, -0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 111
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 85
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 88
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    .line 93
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    .line 95
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomDisplay:Z

    .line 97
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    .line 103
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    .line 113
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 114
    new-instance v0, Lim/delight/android/webview/AdvancedWebView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/delight/android/webview/AdvancedWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 116
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0, v3}, Lim/delight/android/webview/AdvancedWebView;->setFocusable(Z)V

    .line 120
    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v1}, Lim/delight/android/webview/AdvancedWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string v2, "AppInventor"

    invoke-virtual {v0, v1, v2}, Lim/delight/android/webview/AdvancedWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 127
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 130
    :cond_0
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewer$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v0, v1}, Lim/delight/android/webview/AdvancedWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lim/delight/android/webview/AdvancedWebView;->setListener(Landroid/app/Activity;Lim/delight/android/webview/AdvancedWebView$Listener;I)V

    .line 151
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->HomeUrl(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->Width(I)V

    .line 153
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->Height(I)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/WebViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/WebViewer;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/WebViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/WebViewer;)Lim/delight/android/webview/AdvancedWebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/WebViewer;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    return-object v0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v2, Lcom/google/appinventor/components/runtime/WebViewer$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/appinventor/components/runtime/WebViewer$2;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 526
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0, p2}, Lim/delight/android/webview/AdvancedWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetWebViewClient()V
    .locals 5

    .prologue
    .line 483
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-static {v1, v2, v3, v4, p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getWebViewClient(ZZZLcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/Component;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/delight/android/webview/AdvancedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Lcom/google/appinventor/components/runtime/WebViewer$1;)V

    invoke-virtual {v0, v1}, Lim/delight/android/webview/AdvancedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method


# virtual methods
.method public CanGoBack()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go back in the history list."
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public CanGoForward()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go forward in the history list."
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public ClearCaches()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear WebView caches."
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/delight/android/webview/AdvancedWebView;->clearCache(Z)V

    .line 501
    return-void
.end method

.method public ClearLocations()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear stored location permissions."
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 479
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->clearWebViewGeoLoc()V

    .line 480
    :cond_0
    return-void
.end method

.method public CurrentPageTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title of the page currently viewed"
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public CurrentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page currently viewed.   This could be different from the Home URL if new pages were visited by following links."
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public FollowLinks(Z)V
    .locals 0
    .param p1, "follow"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 304
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 305
    return-void
.end method

.method public FollowLinks()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether to follow links when they are tapped in the WebViewer.  If you follow links, you can use GoBack and GoForward to navigate the browser history. "
    .end annotation

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    return v0
.end method

.method public GoBack()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go back to the previous page in the history list.  Does nothing if there is no previous page."
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->goBack()V

    .line 381
    :cond_0
    return-void
.end method

.method public GoForward()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go forward to the next page in the history list.   Does nothing if there is no next page."
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->goForward()V

    .line 393
    :cond_0
    return-void
.end method

.method public GoHome()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the home URL page.  This happens automatically when the home URL is changed."
    .end annotation

    .prologue
    .line 368
    const-string v0, "GoHome"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public GoToUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load the page at the given URL."
    .end annotation

    .prologue
    .line 421
    const-string v0, "GoToUrl"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 207
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 208
    const/4 p1, -0x2

    .line 210
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 211
    return-void
.end method

.method public HomeUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page the WebViewer should initially open to.  Setting this will load the page."
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public HomeUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->clearHistory()V

    .line 254
    const-string v0, "HomeUrl"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public IgnoreSslErrors(Z)V
    .locals 0
    .param p1, "ignoreSslErrors"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    .line 331
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 332
    return-void
.end method

.method public IgnoreSslErrors()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determine whether or not to ignore SSL errors. Set to true to ignore errors. Use this to accept self signed certificates from websites."
    .end annotation

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    return v0
.end method

.method public PromptforPermission(Z)V
    .locals 0
    .param p1, "prompt"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    .line 464
    return-void
.end method

.method public PromptforPermission()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If True, then prompt the user of the WebView to give permission to access the geolocation API. If False, then assume permission is granted."
    .end annotation

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    return v0
.end method

.method public UseExternalBrowser(Z)V
    .locals 0
    .param p1, "control"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Open link in the webviewer page using the external browser."
    .end annotation

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    .line 226
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 227
    return-void
.end method

.method public UseExternalBrowser()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Open link in the webviewer page using the external browser."
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    return v0
.end method

.method public UsesLocation(Z)V
    .locals 0
    .param p1, "uses"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether or not to give the application permission to use the Javascript geolocation API. This property is available only in the designer."
        userVisible = false
    .end annotation

    .prologue
    .line 437
    return-void
.end method

.method public WebViewString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the WebView\'s String, which is viewable through Javascript in the WebView as the window.AppInventor object"
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->getWebViewString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WebViewString(Ljava/lang/String;)V
    .locals 1
    .param p1, "newString"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->setWebViewStringFromBlocks(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public WebViewStringChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the JavaScript calls AppInventor.setWebViewString this event is run."
    .end annotation

    .prologue
    .line 505
    const-string v0, "WebViewStringChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 506
    return-void
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 198
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 199
    const/4 p1, -0x2

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 202
    return-void
.end method

.method public ZoomDisplay(Z)V
    .locals 2
    .param p1, "zoom"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomDisplay:Z

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 358
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ZoomDisplay()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determine status of the zoom control display."
    .end annotation

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomDisplay:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    return-object v0
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 580
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0, p1, p2, p3}, Lim/delight/android/webview/AdvancedWebView;->onActivityResult(IILandroid/content/Intent;)V

    .line 575
    return-void
.end method
