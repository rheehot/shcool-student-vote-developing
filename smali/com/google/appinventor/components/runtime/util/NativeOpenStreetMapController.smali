.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;
    }
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL:[F

.field private static final ANCHOR_VERTICAL:[F

.field private static final SPECIFIED_FILL:J = 0x1L

.field private static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field private static final SPECIFIED_STROKE:J = 0x8L

.field private static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field private static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private caches:Z

.field private compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

.field private containerView:Landroid/widget/RelativeLayout;

.field private defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

.field private defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

.field private eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private featureOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            "Lorg/osmdroid/views/overlay/OverlayWithIW;",
            ">;"
        }
    .end annotation
.end field

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private lastAzimuth:F

.field private final locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

.field private ready:Z

.field private rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

.field private scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private tileType:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field private touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

.field private final userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field private view:Lorg/osmdroid/views/MapView;

.field private zoomControlEnabled:Z

.field private zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

.field private zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 97
    const-class v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    .line 118
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    .line 119
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    return-void

    .line 118
    :array_0
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 119
    :array_1
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 7
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 107
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 108
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    .line 110
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 111
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 112
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 114
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 115
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 270
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->setUserAgentValue(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "osmdroid"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .local v0, "osmdroid":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 274
    new-instance v1, Ljava/io/File;

    const-string v2, "tiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v1, "osmdroidTiles":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    :cond_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 277
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->caches:Z

    .line 280
    .end local v1    # "osmdroidTiles":Ljava/io/File;
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 281
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-direct {v2, p0, v4}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 282
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    .line 283
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    invoke-direct {v2, v4}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    .line 284
    new-instance v2, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3}, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 285
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2, v5}, Lorg/osmdroid/views/MapView;->setTilesScaledToDpi(Z)V

    .line 286
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    .line 287
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-interface {v2, v3}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/MapView;->addOnTapListener(Lorg/osmdroid/views/MapView$OnTapListener;)V

    .line 303
    new-instance v2, Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 304
    new-instance v2, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .line 305
    new-instance v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    .line 306
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v2, v5}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    .line 307
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v2, v5}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    .line 308
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->disableScaleBar()V

    .line 309
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v2, v3}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    .line 312
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 313
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "x2"    # Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/overlay/compass/CompassOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 642
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 694
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0
.end method

.method private createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 6
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 1133
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1134
    .local v0, "osmPolygon":Lorg/osmdroid/views/overlay/Polygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1135
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1136
    return-object v0
.end method

.method private createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/osmdroid/views/overlay/Marker;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 1082
    .local v0, "osmMarker":Lorg/osmdroid/views/overlay/Marker;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setDraggable(Z)V

    .line 1084
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 1085
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1086
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 1087
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 1088
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1100
    return-void
.end method

.method private createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    .locals 2
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 1125
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;-><init>()V

    .line 1126
    .local v0, "osmPolygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1127
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 1128
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    .line 1129
    return-object v0
.end method

.method private createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;
    .locals 2
    .param p1, "aiLineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 1103
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 1104
    .local v0, "osmLine":Lorg/osmdroid/views/overlay/Polyline;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setDraggable(Z)V

    .line 1105
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setTitle(Ljava/lang/String;)V

    .line 1106
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setSnippet(Ljava/lang/String;)V

    .line 1107
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 1108
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 1109
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 1110
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1111
    return-object v0
.end method

.method private createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 10
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 1140
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    .line 1141
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 1142
    .local v1, "bbox":Lorg/osmdroid/util/BoundingBox;
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1143
    .local v0, "osmPolygon":Lorg/osmdroid/views/overlay/Polygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1144
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1145
    return-object v0
.end method

.method private createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "osmPolygon"    # Lorg/osmdroid/views/overlay/Polygon;
    .param p2, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1115
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1116
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1117
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    move-object v0, p2

    .line 1118
    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    move-object v0, p2

    .line 1119
    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1120
    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .end local p2    # "aiFeature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1122
    return-void
.end method

.method private static getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1
    .param p0, "svg"    # Lcom/caverock/androidsvg/SVG$Svg;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v0

    .line 1015
    :goto_0
    return v0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto :goto_0

    .line 1015
    :cond_1
    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0
.end method

.method private static getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1
    .param p0, "svg"    # Lcom/caverock/androidsvg/SVG$Svg;

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v0

    .line 1005
    :goto_0
    return v0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto :goto_0

    .line 1005
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0
.end method

.method private getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 2
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "assetPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method private getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 3
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 993
    return-void
.end method

.method private getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 932
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    const/4 v3, 0x0

    .line 933
    .local v3, "markerSvg":Lcom/caverock/androidsvg/SVG;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    if-nez v4, :cond_1

    .line 935
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "marker.svg"

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 941
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v4

    if-nez v4, :cond_1

    .line 942
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to load SVG from assets"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Invalid SVG in Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 938
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :catch_1
    move-exception v0

    .line 939
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Unable to read Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 945
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "markerAsset":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 948
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 954
    :goto_1
    if-nez v3, :cond_2

    .line 956
    const/4 v1, 0x0

    .line 958
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 959
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 965
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 969
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 970
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 973
    :cond_3
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 977
    :goto_3
    return-void

    .line 949
    :catch_2
    move-exception v0

    .line 950
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Invalid SVG in Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 951
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :catch_3
    move-exception v0

    .line 952
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Unable to read Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 960
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    .line 961
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    :try_start_4
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Invalid SVG in Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 965
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_2

    .line 962
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :catch_5
    move-exception v0

    .line 963
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Unable to read Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 965
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 966
    throw v4

    .line 974
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;
    .locals 26
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "markerSvg"    # Lcom/caverock/androidsvg/SVG;

    .prologue
    .line 1020
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v17

    .line 1021
    .local v17, "svg":Lcom/caverock/androidsvg/SVG$Svg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1022
    .local v5, "density":F
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v19

    if-gtz v19, :cond_5

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v8

    .line 1023
    .local v8, "height":F
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v19

    if-gtz v19, :cond_6

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v18

    .line 1024
    .local v18, "width":F
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v19

    div-float v12, v8, v19

    .line 1025
    .local v12, "scaleH":F
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v19

    div-float v13, v18, v19

    .line 1026
    .local v13, "scaleW":F
    mul-float v19, v12, v12

    mul-float v20, v13, v13

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v11, v0

    .line 1029
    .local v11, "scale":F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1030
    .local v7, "fillPaint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1031
    .local v15, "strokePaint":Landroid/graphics/Paint;
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->FillColor()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v7, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1032
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeColor()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1033
    new-instance v16, Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v11

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 1034
    .local v16, "strokeWidth":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVG$Svg;->getChildren()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1035
    .local v6, "element":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v0, v6, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object v9, v6

    .line 1036
    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    .line 1037
    .local v9, "path":Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1038
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1039
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1040
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1041
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1042
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1043
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 1044
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1045
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1047
    :cond_1
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x4

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    .line 1048
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1049
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x4

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1051
    :cond_2
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x8

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 1052
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1053
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x8

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1055
    :cond_3
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x10

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_4

    .line 1056
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1057
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x10

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1059
    :cond_4
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x20

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    .line 1060
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1061
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x20

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_2

    .line 1022
    .end local v6    # "element":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v7    # "fillPaint":Landroid/graphics/Paint;
    .end local v8    # "height":F
    .end local v9    # "path":Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
    .end local v11    # "scale":F
    .end local v12    # "scaleH":F
    .end local v13    # "scaleW":F
    .end local v15    # "strokePaint":Landroid/graphics/Paint;
    .end local v16    # "strokeWidth":Lcom/caverock/androidsvg/SVG$Length;
    .end local v18    # "width":F
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v8, v0

    goto/16 :goto_0

    .line 1023
    .restart local v8    # "height":F
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    .line 1068
    .restart local v7    # "fillPaint":Landroid/graphics/Paint;
    .restart local v11    # "scale":F
    .restart local v12    # "scaleH":F
    .restart local v13    # "scaleW":F
    .restart local v15    # "strokePaint":Landroid/graphics/Paint;
    .restart local v16    # "strokeWidth":Lcom/caverock/androidsvg/SVG$Length;
    .restart local v18    # "width":F
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v10

    .line 1069
    .local v10, "picture":Landroid/graphics/Picture;
    new-instance v14, Landroid/graphics/Picture;

    invoke-direct {v14}, Landroid/graphics/Picture;-><init>()V

    .line 1070
    .local v14, "scaledPicture":Landroid/graphics/Picture;
    const/high16 v19, 0x40000000    # 2.0f

    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v19, v19, v18

    mul-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    .line 1071
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v20, v20, v8

    mul-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1070
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v4

    .line 1072
    .local v4, "canvas":Landroid/graphics/Canvas;
    mul-float v19, v5, v13

    mul-float v20, v5, v12

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1073
    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1074
    invoke-virtual {v10, v4}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1075
    invoke-virtual {v14}, Landroid/graphics/Picture;->endRecording()V

    .line 1076
    new-instance v19, Landroid/graphics/drawable/PictureDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v19
.end method


# virtual methods
.method public addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    const-string v2, "MapReady"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 499
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    .line 501
    :cond_1
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 709
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2
    .param p1, "aiPolyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object v0

    .line 569
    .local v0, "polyline":Lorg/osmdroid/views/overlay/Polyline;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V

    .line 590
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnDragListener(Lorg/osmdroid/views/overlay/Polyline$OnDragListener;)V

    .line 613
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Visible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 505
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 564
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 704
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 714
    return-void
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    return-object v0
.end method

.method public getOverlayCount()I
    .locals 2

    .prologue
    .line 1227
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 2

    .prologue
    .line 1269
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1273
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    goto :goto_0

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 1161
    return-void
.end method

.method public hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1183
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    .line 1184
    return-void
.end method

.method protected hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1
    .param p1, "overlay"    # Lorg/osmdroid/views/overlay/OverlayWithIW;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 1165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1166
    return-void
.end method

.method public isCompassEnabled()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFeatureVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1171
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInfoboxVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1189
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPanEnabled()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->access$800(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;)Z

    move-result v0

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScaleVisible()Z
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowUserEnabled()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomControlEnabled()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    return v0
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 3
    .param p1, "event"    # Lorg/osmdroid/events/ScrollEvent;

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1206
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onBoundsChanged()V

    goto :goto_0

    .line 1208
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 3
    .param p1, "event"    # Lorg/osmdroid/events/ZoomEvent;

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 1214
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1215
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onZoom()V

    goto :goto_0

    .line 1217
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public panTo(DDID)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "zoom"    # I
    .param p6, "seconds"    # D

    .prologue
    .line 485
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 486
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    int-to-double v2, p5

    invoke-interface {v1, v2, v3}, Lorg/osmdroid/api/IMapController;->zoomTo(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 488
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 489
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, p6

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 492
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 719
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-void
.end method

.method public setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V
    .locals 6
    .param p1, "bbox"    # Lorg/osmdroid/util/BoundingBox;

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 1200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/osmdroid/api/IMapController;->zoomToSpan(DD)V

    .line 1201
    return-void
.end method

.method public setCenter(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 336
    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 390
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 392
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_1

    .line 403
    if-eqz p1, :cond_3

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    .line 415
    :cond_1
    :goto_1
    return-void

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    new-instance v1, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    goto :goto_0

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientation()F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    goto :goto_1
.end method

.method public setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V
    .locals 2
    .param p1, "type"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .prologue
    .line 364
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapType:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 370
    :pswitch_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 374
    :pswitch_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPanEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->access$802(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;Z)Z

    .line 476
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "Rotation"    # F

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    .line 1234
    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 455
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    .line 460
    if-eqz p1, :cond_2

    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V
    .locals 3
    .param p1, "units"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .prologue
    .line 1254
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unallowable unit system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1264
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1265
    return-void

    .line 1259
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_0

    .line 1254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScaleVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 1244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1245
    return-void
.end method

.method public setShowUserEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setEnabled(Z)V

    .line 439
    if-eqz p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 444
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setZoom(I)V
    .locals 4
    .param p1, "zoom"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    int-to-double v2, p1

    invoke-interface {v0, v2, v3}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 342
    return-void
.end method

.method public setZoomControlEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    if-eq v0, p1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    .line 426
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 429
    :cond_0
    return-void

    .line 425
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setZoomEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    .line 355
    return-void
.end method

.method public showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 1151
    return-void
.end method

.method public showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1177
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->showInfoWindow()V

    .line 1178
    return-void
.end method

.method protected showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1
    .param p1, "overlay"    # Lorg/osmdroid/views/overlay/OverlayWithIW;

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 1155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1156
    return-void
.end method

.method public updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 874
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 875
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    .line 876
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setDraggable(Z)V

    .line 878
    :cond_0
    return-void
.end method

.method public updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .prologue
    .line 785
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 786
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-nez v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 789
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    goto :goto_0
.end method

.method public updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    .line 754
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    if-eqz v0, :cond_0

    .line 755
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    .line 756
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 758
    :cond_0
    return-void
.end method

.method public updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 882
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 883
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-nez v0, :cond_0

    .line 898
    :goto_0
    return-void

    .line 886
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 8
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 762
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 763
    .local v0, "center":Lorg/osmdroid/util/GeoPoint;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 764
    .local v2, "polygon":Lorg/osmdroid/views/overlay/Polygon;
    if-eqz v2, :cond_0

    .line 765
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object v1

    .line 766
    .local v1, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {v2, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 767
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 769
    .end local v1    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2
    .param p1, "aiPolyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    .line 736
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Polyline;
    if-eqz v0, :cond_0

    .line 737
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 738
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 740
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 6
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 724
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 725
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-eqz v0, :cond_0

    .line 726
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    .line 727
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v3

    aget v2, v2, v3

    .line 726
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 728
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 729
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 731
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 744
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    .line 745
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    if-eqz v0, :cond_0

    .line 746
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 747
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 749
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 11
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 774
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/osmdroid/views/overlay/Polygon;

    .line 775
    .local v10, "polygon":Lorg/osmdroid/views/overlay/Polygon;
    if-eqz v10, :cond_0

    .line 776
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    .line 777
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 776
    invoke-static {v1}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v0

    .line 778
    .local v0, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {v10, v0}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 779
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 781
    .end local v0    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    return-void
.end method

.method public updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 902
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 903
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 906
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_0
.end method

.method public updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    .prologue
    .line 822
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 823
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 826
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    goto :goto_0
.end method

.method public updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 865
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 866
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    .line 867
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setTitle(Ljava/lang/String;)V

    .line 868
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setSnippet(Ljava/lang/String;)V

    .line 870
    :cond_0
    return-void
.end method
