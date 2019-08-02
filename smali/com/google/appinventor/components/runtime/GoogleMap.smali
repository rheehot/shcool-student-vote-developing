.class public Lcom/google/appinventor/components/runtime/GoogleMap;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "GoogleMap.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPVIZ:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Map component that provides MyLocation, drawing markers on the map, and more."
    docUri = "location/google-maps"
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-play-services.jar, gson-2.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.ACCESS_NETWORK_STATE, android.permission.INTERNET, android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION, com.google.android.providers.gsf.permission.READ_GSERVICES, android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    }
.end annotation


# static fields
.field public static final RADIUS_OF_EARTH_METERS:D = 6371009.0

.field private static final REQUEST:Lcom/google/android/gms/location/LocationRequest;

.field private static final TAG:Ljava/lang/String; = "GoogleMap"

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final snextCircleId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final snextMarkerId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final snextPolylineId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final MAP_FRAGMENT_TAG:Ljava/lang/String;

.field private final androidUIHandler:Landroid/os/Handler;

.field private circles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private compassEnabled:Z

.field private final context:Landroid/app/Activity;

.field private enableCameraChangeListener:Z

.field private enableMapClickListener:Z

.field private enableMapLongClickListener:Z

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private initialCameraBearingDegrees:Ljava/lang/Float;

.field private initialCameraTiltDegrees:Ljava/lang/Float;

.field private initialCameraZoomLevel:Ljava/lang/Float;

.field private initialLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private initialStyleJson:Ljava/lang/String;

.field private initialTheme:Ljava/lang/String;

.field private isMapIsReadyDispatched:Z

.field private isMapReady:Z

.field private isScreenInitialized:Z

.field private mCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field private mMarkerColor:I

.field private mMarkerDraggable:Z

.field private mUiSettings:Lcom/google/android/gms/maps/UiSettings;

.field private mapType:I

.field private markers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private markersList:Lcom/google/appinventor/components/runtime/util/YailList;

.field private myLocationEnabled:Z

.field private final polylinesByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private rotateEnabled:Z

.field private savedInstanceState:Landroid/os/Bundle;

.field private scrollEnabled:Z

.field private theme:Ljava/lang/String;

.field private viewLayout:Landroid/widget/LinearLayout;

.field private zoomControlEnabled:Z

.field private zoomGesturesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->snextCircleId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->snextPolylineId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->snextMarkerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x1388

    .line 173
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x10

    .line 174
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->REQUEST:Lcom/google/android/gms/location/LocationRequest;

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 118
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isScreenInitialized:Z

    .line 119
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isMapReady:Z

    .line 120
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isMapIsReadyDispatched:Z

    .line 127
    const-string v1, "standard"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->theme:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->theme:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialTheme:Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    .line 134
    iput v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mapType:I

    .line 135
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->myLocationEnabled:Z

    .line 136
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->compassEnabled:Z

    .line 137
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->rotateEnabled:Z

    .line 138
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->scrollEnabled:Z

    .line 139
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->zoomControlEnabled:Z

    .line 140
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->zoomGesturesEnabled:Z

    .line 143
    const v1, -0xde690d

    iput v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMarkerColor:I

    .line 144
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMarkerDraggable:Z

    .line 147
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapClickListener:Z

    .line 148
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapLongClickListener:Z

    .line 149
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableCameraChangeListener:Z

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mCircles:Ljava/util/List;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->polylinesByIds:Ljava/util/HashMap;

    .line 165
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->androidUIHandler:Landroid/os/Handler;

    .line 179
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    .line 180
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 181
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getOnCreateBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->savedInstanceState:Landroid/os/Bundle;

    .line 182
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    invoke-direct {v1, v2, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 183
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 186
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->viewLayout:Landroid/widget/LinearLayout;

    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->viewLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->MAP_FRAGMENT_TAG:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->checkGooglePlayServiceSDK()V

    .line 193
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->checkGoogleMapInstalled()V

    .line 195
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->MAP_FRAGMENT_TAG:Ljava/lang/String;

    .line 196
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 199
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    if-nez v1, :cond_0

    .line 201
    invoke-static {}, Lcom/google/android/gms/maps/SupportMapFragment;->newInstance()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 203
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 204
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 206
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->MAP_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 207
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 210
    .end local v0    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V

    .line 211
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 212
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->Width(I)V

    .line 213
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->Height(I)V

    .line 214
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 215
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 216
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 217
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 218
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GoogleMap"

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;
    .param p1, "x1"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/GoogleMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMap()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/SupportMapFragment;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/GoogleMap;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->viewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/GoogleMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->MAP_FRAGMENT_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/GoogleMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/GoogleMap;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "x1"    # D

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusMeters(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    return-wide v0
.end method

.method private addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 10
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lng"    # Ljava/lang/Double;
    .param p3, "id"    # I
    .param p4, "hue"    # F
    .param p5, "icon"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "snippet"    # Ljava/lang/String;
    .param p8, "draggable"    # Z

    .prologue
    .line 1071
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v6, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V

    .line 1075
    :cond_0
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1076
    .local v4, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1077
    invoke-virtual {v7, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 1076
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v5

    .line 1079
    .local v5, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1083
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v6, p5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1089
    .local v2, "iconBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1094
    .end local v2    # "iconBitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1095
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1097
    :cond_1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1098
    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1100
    :cond_2
    move/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1101
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    return p3

    .line 1084
    :catch_0
    move-exception v3

    .line 1085
    .local v3, "ioe":Ljava/io/IOException;
    const-string v6, "GoogleMap"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v2, 0x0

    .restart local v2    # "iconBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1092
    .end local v2    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_3
    invoke-static {p4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_1
.end method

.method private checkGoogleMapInstalled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.maps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "checkGoogleMapInstalled"

    const/16 v3, 0x2eea

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private checkGooglePlayServiceSDK()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 402
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 404
    .local v0, "googlePlayServicesAvailable":I
    packed-switch v0, :pswitch_data_0

    .line 422
    :goto_0
    :pswitch_0
    return-void

    .line 406
    :pswitch_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "checkGooglePlayServiceSDK"

    const/16 v3, 0x2eeb

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "checkGooglePlayServiceSDK"

    const/16 v3, 0x2ef0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :pswitch_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "checkGooglePlayServiceSDK"

    const/16 v3, 0x2ef1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "checkGooglePlayServiceSDK"

    const/16 v3, 0x2ef2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static convertPointToLatLng(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .param p0, "point"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 620
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method private static convertPointsToLatLngs(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 3
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v1, "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 627
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->convertPointToLatLng(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :cond_0
    return-object v1
.end method

.method private static generateCircleId()I
    .locals 1

    .prologue
    .line 1049
    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->snextCircleId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static generateMarkerId()I
    .locals 1

    .prologue
    .line 1041
    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->snextMarkerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static generatePolylineId()I
    .locals 1

    .prologue
    .line 1057
    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->snextPolylineId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static generateViewId()I
    .locals 3

    .prologue
    .line 229
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/GoogleMap;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 231
    add-int/lit8 v0, v1, 0x1

    .line 232
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 233
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/GoogleMap;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    return v1
.end method

.method private getCircleIfExisted(I)Ljava/lang/Object;
    .locals 7
    .param p1, "circleId"    # I

    .prologue
    .line 481
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 482
    .local v0, "circle":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 483
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "getCircleIfExisted"

    const/16 v3, 0x2eef

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 483
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 485
    const/4 v0, 0x0

    .line 487
    .end local v0    # "circle":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;TE;>;TE;)TT;"
        }
    .end annotation

    .prologue
    .line 1515
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TT;TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1516
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TE;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1520
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TE;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMarkerIfExisted(I)Lcom/google/android/gms/maps/model/Marker;
    .locals 7
    .param p1, "markerId"    # I

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 1366
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "getMarkerIfExisted"

    const/16 v3, 0x2eed

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1368
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1367
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1370
    :cond_0
    return-object v0
.end method

.method private prepareFragmentView()V
    .locals 2

    .prologue
    .line 753
    invoke-static {}, Lcom/google/android/gms/maps/SupportMapFragment;->newInstance()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 754
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GoogleMap$3;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 777
    return-void
.end method

.method private setUpLocationClientIfNeeded()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 290
    :cond_0
    return-void
.end method

.method private setUpMap()V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 294
    .local v0, "cameraPositionBuilder":Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialLocation:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialLocation:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraZoomLevel:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraZoomLevel:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraTiltDegrees:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraTiltDegrees:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraBearingDegrees:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraBearingDegrees:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 304
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialStyleJson:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 305
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialStyleJson:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->Style(Ljava/lang/String;)V

    .line 310
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 311
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 312
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 319
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    .line 320
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->compassEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 321
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->rotateEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 322
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->scrollEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 323
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->zoomControlEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 324
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->zoomGesturesEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isMapReady:Z

    .line 328
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->MapIsReady()V

    .line 329
    return-void

    .line 306
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialTheme:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->theme:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    .line 307
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialTheme:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->Theme(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUpMapIfNeeded()V
    .locals 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->myLocationEnabled:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpLocationClientIfNeeded()V

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GoogleMap$1;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 283
    :cond_1
    return-void
.end method

.method private static toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 9
    .param p0, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "radius"    # D

    .prologue
    .line 1704
    const-wide v2, 0x41584db040000000L    # 6371009.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1705
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double v0, v2, v4

    .line 1706
    .local v0, "radiusAngle":D
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v2
.end method

.method private static toRadiusMeters(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 9
    .param p0, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "radius"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 1710
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 1711
    .local v8, "result":[F
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 1713
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    return-wide v0
.end method


# virtual methods
.method public AddCircle(DDDIFFIZ)I
    .locals 13
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "radius"    # D
    .param p7, "alpha"    # I
    .param p8, "hue"    # F
    .param p9, "strokeWidth"    # F
    .param p10, "strokeColor"    # I
    .param p11, "draggable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a circle overlay on the map UI with specified latitude and longitude for center. \"hue\" (min 0, max 360) and \"alpha\" (min 0, max 255) are used to set color and transparency level of the circle, \"strokeWidth\" and \"strokeColor\" are for the perimeter of the circle. Returning a unique id of the circle for future reference to events raised by moving this circle. If the circle isset to be draggable, two default markers will appear on the map: one in the center of the circle, another on the perimeter."
    .end annotation

    .prologue
    .line 451
    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generateCircleId()I

    move-result v1

    .local v1, "uid":I
    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 452
    invoke-virtual/range {v0 .. v12}, Lcom/google/appinventor/components/runtime/GoogleMap;->AddCircle2(IDDDIFFIZ)I

    move-result v0

    return v0
.end method

.method public AddCircle2(IDDDIFFIZ)I
    .locals 14
    .param p1, "uid"    # I
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .param p6, "radius"    # D
    .param p8, "alpha"    # I
    .param p9, "hue"    # F
    .param p10, "strokeWidth"    # F
    .param p11, "strokeColor"    # I
    .param p12, "draggable"    # Z

    .prologue
    .line 456
    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p9, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    move/from16 v0, p8

    invoke-static {v0, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v10

    .local v10, "fillColor":I
    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 457
    invoke-virtual/range {v2 .. v13}, Lcom/google/appinventor/components/runtime/GoogleMap;->AddCircle3(IDDDIFIZ)I

    move-result v2

    return v2
.end method

.method public AddCircle3(IDDDIFIZ)I
    .locals 12
    .param p1, "uid"    # I
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .param p6, "radius"    # D
    .param p8, "fillColor"    # I
    .param p9, "strokeWidth"    # F
    .param p10, "strokeColor"    # I
    .param p11, "draggable"    # Z

    .prologue
    .line 461
    if-eqz p11, :cond_0

    .line 463
    new-instance v3, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v0, p4

    invoke-direct {v5, p2, p3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v4, p0

    move-wide/from16 v6, p6

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;DFII)V

    .line 464
    .local v3, "circle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->setRadiusMarker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 465
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mCircles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local v3    # "circle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    :goto_0
    return p1

    .line 469
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v0, p4

    invoke-direct {v6, p2, p3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 470
    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v5

    .line 471
    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v5

    .line 472
    move/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v5

    .line 473
    move/from16 v0, p10

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v5

    .line 474
    move/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v5

    .line 469
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v2

    .line 475
    .local v2, "plainCircle":Lcom/google/android/gms/maps/model/Circle;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public AddMarkerCustom(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 9
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "icon"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "snippet"    # Ljava/lang/String;
    .param p8, "draggable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a custom marker to the map. \"lat\" (type double) [required], \"lng\"(type double) [required], \"icon\"(type String)[the path of the icon], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean). Returns the unique id of the marker."
    .end annotation

    .prologue
    .line 1132
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generateMarkerId()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/GoogleMap;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public AddMarkerStandard(DDILjava/lang/String;Ljava/lang/String;Z)I
    .locals 13
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "color"    # I
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "snippet"    # Ljava/lang/String;
    .param p8, "draggable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a standard marker to the map. \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean). Returns the unique id of the marker."
    .end annotation

    .prologue
    .line 1119
    const/4 v1, 0x3

    new-array v10, v1, [F

    .line 1121
    .local v10, "hsv":[F
    move/from16 v0, p5

    invoke-static {v0, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1123
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generateMarkerId()I

    move-result v4

    const/4 v1, 0x0

    aget v5, v10, v1

    const-string v6, ""

    move-object v1, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/GoogleMap;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method public AddMarkers(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 25
    .param p1, "markers"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 961
    const/4 v2, 0x3

    new-array v14, v2, [F

    .line 963
    .local v14, "hsv":[F
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v18, "markerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    aget-object v17, v20, v19

    .line 965
    .local v17, "marker":Ljava/lang/Object;
    const/4 v11, 0x1

    .line 966
    .local v11, "addOne":Z
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_c

    move-object/from16 v2, v17

    .line 967
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_0

    .line 968
    const/4 v11, 0x0

    :cond_0
    move-object/from16 v2, v17

    .line 971
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v15

    .local v15, "latObj":Ljava/lang/Object;
    move-object/from16 v2, v17

    .line 972
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v16

    .line 973
    .local v16, "lngObj":Ljava/lang/Object;
    new-instance v3, Ljava/lang/Double;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v6, v7}, Ljava/lang/Double;-><init>(D)V

    .line 974
    .local v3, "lat":Ljava/lang/Double;
    new-instance v4, Ljava/lang/Double;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    .line 976
    .local v4, "lng":Ljava/lang/Double;
    instance-of v2, v15, Lgnu/math/DFloNum;

    if-eqz v2, :cond_1

    move-object/from16 v0, v16

    instance-of v2, v0, Lgnu/math/DFloNum;

    if-nez v2, :cond_9

    .line 977
    :cond_1
    const/4 v11, 0x0

    .line 983
    .end local v15    # "latObj":Ljava/lang/Object;
    .end local v16    # "lngObj":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v22, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v6, v22

    if-ltz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v22, 0x4056800000000000L    # 90.0

    cmpl-double v2, v6, v22

    if-gtz v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v22, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v6, v22

    if-ltz v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v22, 0x4066800000000000L    # 180.0

    cmpl-double v2, v6, v22

    if-lez v2, :cond_3

    .line 984
    :cond_2
    const/4 v11, 0x0

    .line 988
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMarkerColor:I

    .line 989
    .local v12, "color":I
    const-string v8, ""

    .line 990
    .local v8, "title":Ljava/lang/String;
    const-string v9, ""

    .line 991
    .local v9, "snippet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMarkerDraggable:Z

    .local v10, "draggable":Z
    move-object/from16 v2, v17

    .line 993
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v6, 0x3

    if-lt v2, v6, :cond_4

    move-object/from16 v2, v17

    .line 995
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v13

    .line 996
    .local v13, "colorObj":Ljava/lang/Object;
    instance-of v2, v13, Lgnu/math/IntNum;

    if-eqz v2, :cond_a

    move-object/from16 v2, v17

    .line 997
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v12

    .end local v13    # "colorObj":Ljava/lang/Object;
    :cond_4
    :goto_2
    move-object/from16 v2, v17

    .line 1003
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v6, 0x4

    if-lt v2, v6, :cond_5

    move-object/from16 v2, v17

    .line 1004
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_5
    move-object/from16 v2, v17

    .line 1007
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v6, 0x5

    if-lt v2, v6, :cond_6

    move-object/from16 v2, v17

    .line 1008
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6
    move-object/from16 v2, v17

    .line 1011
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v6, 0x6

    if-lt v2, v6, :cond_7

    move-object/from16 v2, v17

    .line 1012
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 1013
    check-cast v17, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v17    # "marker":Ljava/lang/Object;
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1020
    :cond_7
    :goto_3
    invoke-static {v12, v14}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1021
    if-eqz v11, :cond_8

    .line 1022
    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generateMarkerId()I

    move-result v5

    .line 1023
    .local v5, "uniqueId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    const/4 v2, 0x0

    aget v6, v14, v2

    const-string v7, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/appinventor/components/runtime/GoogleMap;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 964
    .end local v3    # "lat":Ljava/lang/Double;
    .end local v4    # "lng":Ljava/lang/Double;
    .end local v5    # "uniqueId":I
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "snippet":Ljava/lang/String;
    .end local v10    # "draggable":Z
    .end local v12    # "color":I
    :cond_8
    :goto_4
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto/16 :goto_0

    .line 979
    .restart local v3    # "lat":Ljava/lang/Double;
    .restart local v4    # "lng":Ljava/lang/Double;
    .restart local v15    # "latObj":Ljava/lang/Object;
    .restart local v16    # "lngObj":Ljava/lang/Object;
    .restart local v17    # "marker":Ljava/lang/Object;
    :cond_9
    check-cast v15, Lgnu/math/DFloNum;

    .end local v15    # "latObj":Ljava/lang/Object;
    invoke-virtual {v15}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 980
    check-cast v16, Lgnu/math/DFloNum;

    .end local v16    # "lngObj":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto/16 :goto_1

    .line 999
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v9    # "snippet":Ljava/lang/String;
    .restart local v10    # "draggable":Z
    .restart local v12    # "color":I
    .restart local v13    # "colorObj":Ljava/lang/Object;
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1016
    .end local v13    # "colorObj":Ljava/lang/Object;
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 1028
    .end local v3    # "lat":Ljava/lang/Double;
    .end local v4    # "lng":Ljava/lang/Double;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "snippet":Ljava/lang/String;
    .end local v10    # "draggable":Z
    .end local v12    # "color":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "AddMarkers"

    const/16 v7, 0x2eec

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "marker is not represented as list"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v6, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_4

    .line 1033
    .end local v11    # "addOne":Z
    .end local v17    # "marker":Ljava/lang/Object;
    :cond_d
    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public AddMarkersFromJson(Ljava/lang/String;)V
    .locals 30
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of markers that are represented as JsonArray.  The inner JsonObject represents a markerand is composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"icon\"(type String)[the path of the icon], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    .prologue
    .line 1143
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v23, "markerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Lcom/google/gson/JsonParser;

    invoke-direct/range {v26 .. v26}, Lcom/google/gson/JsonParser;-><init>()V

    .line 1145
    .local v26, "parser":Lcom/google/gson/JsonParser;
    const/4 v2, 0x3

    new-array v14, v2, [F

    .line 1149
    .local v14, "hsv":[F
    :try_start_0
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v25

    .line 1150
    .local v25, "markerList":Lcom/google/gson/JsonElement;
    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1151
    invoke-virtual/range {v25 .. v25}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v22

    .line 1152
    .local v22, "markerArray":Lcom/google/gson/JsonArray;
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_0
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/gson/JsonElement;

    .line 1153
    .local v17, "marker":Lcom/google/gson/JsonElement;
    const/4 v11, 0x1

    .line 1155
    .local v11, "addOne":Z
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1156
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v24

    .line 1157
    .local v24, "markerJson":Lcom/google/gson/JsonObject;
    const-string v2, "lat"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "lng"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1158
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1161
    :cond_2
    const-string v2, "lat"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    check-cast v15, Lcom/google/gson/JsonPrimitive;

    .line 1162
    .local v15, "jpLat":Lcom/google/gson/JsonPrimitive;
    const-string v2, "lng"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonPrimitive;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    .local v16, "jpLng":Lcom/google/gson/JsonPrimitive;
    const-wide/16 v18, 0x0

    .line 1165
    .local v18, "latitude":D
    const-wide/16 v20, 0x0

    .line 1168
    .local v20, "longitude":D
    :try_start_1
    invoke-virtual {v15}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1169
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v15}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 1170
    new-instance v2, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v20

    .line 1180
    :goto_1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v18, v2

    if-ltz v2, :cond_3

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, v18, v2

    if-gtz v2, :cond_3

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v20, v2

    if-ltz v2, :cond_3

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_4

    .line 1181
    :cond_3
    const/4 v11, 0x0

    .line 1184
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMarkerColor:I

    invoke-static {v2, v14}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1185
    const/4 v2, 0x0

    aget v12, v14, v2

    .line 1186
    .local v12, "defaultColor":F
    const-string v2, "color"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-nez v2, :cond_9

    move v6, v12

    .line 1188
    .local v6, "color":F
    :goto_2
    const/4 v2, 0x0

    cmpg-float v2, v6, v2

    if-ltz v2, :cond_5

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v2, v6, v2

    if-lez v2, :cond_6

    .line 1189
    :cond_5
    const/4 v11, 0x0

    .line 1192
    :cond_6
    const-string v2, "icon"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v7, ""

    .line 1193
    .local v7, "icon":Ljava/lang/String;
    :goto_3
    const-string v2, "title"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-nez v2, :cond_b

    const-string v8, ""

    .line 1194
    .local v8, "title":Ljava/lang/String;
    :goto_4
    const-string v2, "snippet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v9, ""

    .line 1195
    .local v9, "snippet":Ljava/lang/String;
    :goto_5
    const-string v2, "draggable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMarkerDraggable:Z

    .line 1197
    .local v10, "draggable":Z
    :goto_6
    if-eqz v11, :cond_0

    .line 1198
    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generateMarkerId()I

    move-result v5

    .line 1199
    .local v5, "uniqueId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/appinventor/components/runtime/GoogleMap;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1211
    .end local v5    # "uniqueId":I
    .end local v6    # "color":F
    .end local v7    # "icon":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "snippet":Ljava/lang/String;
    .end local v10    # "draggable":Z
    .end local v11    # "addOne":Z
    .end local v12    # "defaultColor":F
    .end local v15    # "jpLat":Lcom/google/gson/JsonPrimitive;
    .end local v16    # "jpLng":Lcom/google/gson/JsonPrimitive;
    .end local v17    # "marker":Lcom/google/gson/JsonElement;
    .end local v18    # "latitude":D
    .end local v20    # "longitude":D
    .end local v22    # "markerArray":Lcom/google/gson/JsonArray;
    .end local v24    # "markerJson":Lcom/google/gson/JsonObject;
    .end local v25    # "markerList":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v13

    .line 1212
    .local v13, "e":Lcom/google/gson/JsonSyntaxException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "AddMarkersFromJson"

    const/16 v4, 0x2eee

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object p1, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1214
    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1216
    .end local v13    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_7
    :goto_7
    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1217
    return-void

    .line 1173
    .restart local v11    # "addOne":Z
    .restart local v15    # "jpLat":Lcom/google/gson/JsonPrimitive;
    .restart local v16    # "jpLng":Lcom/google/gson/JsonPrimitive;
    .restart local v17    # "marker":Lcom/google/gson/JsonElement;
    .restart local v18    # "latitude":D
    .restart local v20    # "longitude":D
    .restart local v22    # "markerArray":Lcom/google/gson/JsonArray;
    .restart local v24    # "markerJson":Lcom/google/gson/JsonObject;
    .restart local v25    # "markerList":Lcom/google/gson/JsonElement;
    :cond_8
    :try_start_3
    const-string v2, "lat"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v18

    .line 1174
    const-string v2, "lng"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v20

    goto/16 :goto_1

    .line 1176
    :catch_1
    move-exception v13

    .line 1177
    .local v13, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1186
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "defaultColor":F
    :cond_9
    :try_start_4
    const-string v2, "color"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    int-to-float v6, v2

    goto/16 :goto_2

    .line 1192
    .restart local v6    # "color":F
    :cond_a
    const-string v2, "icon"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 1193
    .restart local v7    # "icon":Ljava/lang/String;
    :cond_b
    const-string v2, "title"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 1194
    .restart local v8    # "title":Ljava/lang/String;
    :cond_c
    const-string v2, "snippet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 1195
    .restart local v9    # "snippet":Ljava/lang/String;
    :cond_d
    const-string v2, "draggable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v10

    goto/16 :goto_6

    .line 1207
    .end local v6    # "color":F
    .end local v7    # "icon":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "snippet":Ljava/lang/String;
    .end local v11    # "addOne":Z
    .end local v12    # "defaultColor":F
    .end local v15    # "jpLat":Lcom/google/gson/JsonPrimitive;
    .end local v16    # "jpLng":Lcom/google/gson/JsonPrimitive;
    .end local v17    # "marker":Lcom/google/gson/JsonElement;
    .end local v18    # "latitude":D
    .end local v20    # "longitude":D
    .end local v22    # "markerArray":Lcom/google/gson/JsonArray;
    .end local v24    # "markerJson":Lcom/google/gson/JsonObject;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "AddMarkersFromJson"

    const/16 v4, 0x2eec

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "markers needs to be represented as JsonArray"

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1209
    invoke-static/range {v23 .. v23}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7
.end method

.method public AddMarkersHue(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 26
    .param p1, "markers"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 1227
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v16, "markerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v15, v19, v18

    .line 1230
    .local v15, "marker":Ljava/lang/Object;
    const/4 v11, 0x1

    .line 1231
    .local v11, "addOne":Z
    instance-of v2, v15, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_c

    move-object v2, v15

    .line 1232
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "AddMarkers"

    const/16 v7, 0x2eec

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Need more than 2 inputs"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v5, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1236
    const/4 v11, 0x0

    :cond_0
    move-object v2, v15

    .line 1240
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v13

    .local v13, "latObj":Ljava/lang/Object;
    move-object v2, v15

    .line 1241
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v14

    .line 1242
    .local v14, "lngObj":Ljava/lang/Object;
    new-instance v3, Ljava/lang/Double;

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 1243
    .local v3, "lat":Ljava/lang/Double;
    new-instance v4, Ljava/lang/Double;

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 1245
    .local v4, "lng":Ljava/lang/Double;
    instance-of v2, v13, Lgnu/math/DFloNum;

    if-eqz v2, :cond_1

    instance-of v2, v14, Lgnu/math/DFloNum;

    if-nez v2, :cond_9

    .line 1246
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "AddMarkersHue"

    const/16 v7, 0x2eec

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Not a number for latitude or longitude"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v5, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1248
    const/4 v11, 0x0

    .line 1254
    .end local v13    # "latObj":Ljava/lang/Object;
    .end local v14    # "lngObj":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v22, v24

    if-ltz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, 0x4056800000000000L    # 90.0

    cmpl-double v2, v22, v24

    if-gtz v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v22, v24

    if-ltz v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, 0x4066800000000000L    # 180.0

    cmpl-double v2, v22, v24

    if-lez v2, :cond_3

    .line 1255
    :cond_2
    const/4 v11, 0x0

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "AddMarkers"

    const/16 v7, 0x2eec

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Range for the latitude or longitude is wrong"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v5, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1260
    :cond_3
    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generateMarkerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1261
    .local v17, "uniqueId":Ljava/lang/Integer;
    const/high16 v6, 0x43700000    # 240.0f

    .line 1262
    .local v6, "color":F
    const-string v8, ""

    .line 1263
    .local v8, "title":Ljava/lang/String;
    const-string v9, ""

    .line 1264
    .local v9, "snippet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMarkerDraggable:Z

    .local v10, "draggable":Z
    move-object v2, v15

    .line 1266
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v5, 0x3

    if-lt v2, v5, :cond_4

    move-object v2, v15

    .line 1268
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    .line 1270
    .local v12, "colorObj":Ljava/lang/Object;
    instance-of v2, v12, Lgnu/math/IntNum;

    if-eqz v2, :cond_a

    .line 1271
    new-instance v5, Ljava/lang/Float;

    move-object v2, v15

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v5, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .end local v12    # "colorObj":Ljava/lang/Object;
    :cond_4
    :goto_2
    move-object v2, v15

    .line 1279
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_5

    move-object v2, v15

    .line 1280
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "title":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "title":Ljava/lang/String;
    :cond_5
    move-object v2, v15

    .line 1283
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_6

    move-object v2, v15

    .line 1284
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "snippet":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "snippet":Ljava/lang/String;
    :cond_6
    move-object v2, v15

    .line 1287
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v5, 0x6

    if-lt v2, v5, :cond_7

    move-object v2, v15

    .line 1288
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 1289
    check-cast v15, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v15    # "marker":Ljava/lang/Object;
    const/4 v2, 0x5

    invoke-virtual {v15, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1298
    :cond_7
    :goto_3
    if-eqz v11, :cond_8

    .line 1299
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/appinventor/components/runtime/GoogleMap;->addMarkerToMap(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1229
    :cond_8
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_0

    .line 1250
    .end local v6    # "color":F
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "snippet":Ljava/lang/String;
    .end local v10    # "draggable":Z
    .end local v17    # "uniqueId":Ljava/lang/Integer;
    .restart local v13    # "latObj":Ljava/lang/Object;
    .restart local v14    # "lngObj":Ljava/lang/Object;
    .restart local v15    # "marker":Ljava/lang/Object;
    :cond_9
    check-cast v13, Lgnu/math/DFloNum;

    .end local v13    # "latObj":Ljava/lang/Object;
    invoke-virtual {v13}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1251
    check-cast v14, Lgnu/math/DFloNum;

    .end local v14    # "lngObj":Ljava/lang/Object;
    invoke-virtual {v14}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto/16 :goto_1

    .line 1273
    .restart local v6    # "color":F
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v9    # "snippet":Ljava/lang/String;
    .restart local v10    # "draggable":Z
    .restart local v12    # "colorObj":Ljava/lang/Object;
    .restart local v17    # "uniqueId":Ljava/lang/Integer;
    :cond_a
    const/4 v11, 0x0

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "AddMarkersHue"

    const/16 v7, 0x2eec

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1275
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not a number"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 1274
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v5, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1292
    .end local v12    # "colorObj":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "AddMarkers"

    const/16 v7, 0x2eec

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "marker not as a list"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v5, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1294
    const/4 v11, 0x0

    goto :goto_3

    .line 1305
    .end local v3    # "lat":Ljava/lang/Double;
    .end local v4    # "lng":Ljava/lang/Double;
    .end local v6    # "color":F
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "snippet":Ljava/lang/String;
    .end local v10    # "draggable":Z
    .end local v17    # "uniqueId":Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "AddMarkersHue"

    const/16 v7, 0x2eec

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Marker is not represented as list"

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v5, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1307
    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 1310
    .end local v11    # "addOne":Z
    .end local v15    # "marker":Ljava/lang/Object;
    :goto_4
    return-object v2

    :cond_d
    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_4
.end method

.method public AddPolyline(Lcom/google/appinventor/components/runtime/util/YailList;FI)I
    .locals 5
    .param p1, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "width"    # F
    .param p3, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a polyline on the map. \"points\" (list of lat, lng pairs), line segments are drawn between consecutive points\"width\" (pixels) the width of the line segments, \"color\" the color of the line segments. Returns the unique id of the polyline."
    .end annotation

    .prologue
    .line 656
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 657
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->convertPointsToLatLngs(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    .line 658
    invoke-virtual {v3, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    .line 659
    invoke-virtual {v3, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    .line 656
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    .line 661
    .local v1, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->generatePolylineId()I

    move-result v0

    .line 663
    .local v0, "id":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->polylinesByIds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    return v0
.end method

.method public BoundCamera(DDDD)V
    .locals 5
    .param p1, "neLat"    # D
    .param p3, "neLng"    # D
    .param p5, "swLat"    # D
    .param p7, "swLng"    # D

    .prologue
    .line 1596
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1597
    .local v2, "northeast":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v3, p5, p6, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1598
    .local v3, "southwest":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1600
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 1601
    .local v1, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1602
    return-void
.end method

.method public CameraBearingDegrees()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current bearing, the direction that the camera is pointing in (in degrees clockwise from north), of the map\'s camera."
    .end annotation

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    .line 1811
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public CameraBearingDegrees(F)V
    .locals 3
    .param p1, "cameraBearingDegrees"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified bearing, the direction that the camera is pointing in (in degrees clockwise from north)."
    .end annotation

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1824
    :goto_0
    return-void

    .line 1823
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraBearingDegrees:Ljava/lang/Float;

    goto :goto_0
.end method

.method public CameraPositionChanged(DDFFF)V
    .locals 11
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "bearing"    # F
    .param p6, "tilt"    # F
    .param p7, "zoom"    # F

    .prologue
    .line 1544
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/GoogleMap$9;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/GoogleMap$9;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DDFFF)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1549
    return-void
.end method

.method public CameraTiltDegrees()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current tilt, the angle (in degrees) from the nadir (directly facing the Earth), of the map\'s camera."
    .end annotation

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    .line 1791
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public CameraTiltDegrees(F)V
    .locals 3
    .param p1, "cameraTiltDegrees"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified tilt, the angle (in degrees) from the nadir (directly facing the Earth)."
    .end annotation

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1804
    :goto_0
    return-void

    .line 1803
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraTiltDegrees:Ljava/lang/Float;

    goto :goto_0
.end method

.method public CameraZoomLevel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current zoom level of the map\'s camera."
    .end annotation

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 1771
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public CameraZoomLevel(F)V
    .locals 2
    .param p1, "cameraZoomLevel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "15"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified zoom level."
    .end annotation

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1784
    :goto_0
    return-void

    .line 1783
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraZoomLevel:Ljava/lang/Float;

    goto :goto_0
.end method

.method public CompassEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the compass widget is currently enabled in the map ui"
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isCompassEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableCompass(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the compass widget on the map\'s ui. Call this only after event \"MapIsReady\" is received"
    .end annotation

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->compassEnabled:Z

    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 336
    return-void
.end method

.method public EnableMapCameraPosChangeListener(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableCameraChangeListener:Z

    if-eq v0, p1, :cond_0

    .line 903
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableCameraChangeListener:Z

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    .line 907
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_2

    .end local p0    # "this":Lcom/google/appinventor/components/runtime/GoogleMap;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 910
    return-void

    .line 909
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/GoogleMap;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public EnableMapClickListener(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s click event"
    .end annotation

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapClickListener:Z

    if-eq v0, p1, :cond_0

    .line 854
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapClickListener:Z

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    .line 857
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_2

    .end local p0    # "this":Lcom/google/appinventor/components/runtime/GoogleMap;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 860
    return-void

    .line 859
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/GoogleMap;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public EnableMapLongClickListener(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/disable to listen to map\'s long click event"
    .end annotation

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapLongClickListener:Z

    if-eq v0, p1, :cond_0

    .line 878
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapLongClickListener:Z

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    .line 882
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_2

    .end local p0    # "this":Lcom/google/appinventor/components/runtime/GoogleMap;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 885
    return-void

    .line 884
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/GoogleMap;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public EnableMyLocation(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable or disable my location widget control for Google Map. One can call GetMyLocation() to obtain the current location after enable this.\""
    .end annotation

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->myLocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 783
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->myLocationEnabled:Z

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    .line 786
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 790
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 800
    :cond_2
    :goto_0
    return-void

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 794
    if-eqz p1, :cond_4

    .line 795
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->setUpLocationClientIfNeeded()V

    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method public EnableRotate(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to rotate a map on the ui. Call this only after the event \"MapIsReady\" is received."
    .end annotation

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->rotateEnabled:Z

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 348
    return-void
.end method

.method public EnableScroll(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to scroll a map on the ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->scrollEnabled:Z

    .line 359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 360
    return-void
.end method

.method public EnableZoomControl(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the zoom widget on the map\'s ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->zoomControlEnabled:Z

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 372
    return-void
.end method

.method public EnableZoomGesture(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables zoom gesture on the map ui. Call this only after the event  \"MapIsReady\" is received. "
    .end annotation

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->zoomGesturesEnabled:Z

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 384
    return-void
.end method

.method public FinishedDraggingCircle(IDDD)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "centerLat"    # D
    .param p4, "centerLng"    # D
    .param p6, "radius"    # D

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$2;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/GoogleMap$2;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public GetAllCircleIDs()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all circles Ids. A short cut to get all the references for the eixisting circles"
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetAllMarkerID()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all the existing markers\'s Ids"
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetAllPolylineIds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all polyline Ids."
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->polylinesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetMarkers()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a list of markers composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markersList:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public GetMyLocation()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get current location using Google Map Service. Return a YailList with first item being the latitude, the second item being the longitude, and last time being the accuracy of the reading."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v0, "latLng":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 814
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 815
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2

    .line 819
    .restart local v1    # "location":Landroid/location/Location;
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public GetPointsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Convert a JsonArray of points (lat, lng pairs) to a list."
    .end annotation

    .prologue
    .line 634
    const/4 v2, 0x0

    .line 637
    .local v2, "points":Lcom/google/appinventor/components/runtime/util/YailList;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v3, "pointsList":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 640
    .local v1, "point":Ljava/lang/Object;
    check-cast v1, Ljava/util/List;

    .end local v1    # "point":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    .end local v3    # "pointsList":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :catch_0
    move-exception v0

    .line 644
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "GetPointsFromJson"

    const/16 v6, 0x2eee

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 647
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 641
    .restart local v3    # "pointsList":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 252
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 253
    const/4 p1, -0x2

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 256
    return-void
.end method

.method public InfoWindowClicked(I)V
    .locals 2
    .param p1, "markerId"    # I

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$8;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1484
    return-void
.end method

.method public MapCameraChangedListenerEnabled()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableCameraChangeListener:Z

    return v0
.end method

.method public MapClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the mapClick event listener is currently enabled"
    .end annotation

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapClickListener:Z

    return v0
.end method

.method public MapIsReady()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the map has been rendered and ready for adding markers or changing other settings. Please add or updating markers within this event"
    .end annotation

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isMapReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isScreenInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isMapIsReadyDispatched:Z

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isMapIsReadyDispatched:Z

    .line 396
    const-string v0, "MapIsReady"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 398
    :cond_0
    return-void
.end method

.method public MapLongClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map longClick listener is currently enabled"
    .end annotation

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->enableMapLongClickListener:Z

    return v0
.end method

.method public MapType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mapType:I

    packed-switch v0, :pswitch_data_0

    .line 933
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 925
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 927
    :pswitch_1
    const-string v0, "hybrid"

    goto :goto_0

    .line 929
    :pswitch_2
    const-string v0, "satellite"

    goto :goto_0

    .line 931
    :pswitch_3
    const-string v0, "terrain"

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public MyLocationEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether my locaiton UI control is currently enabled for the Google map."
    .end annotation

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->myLocationEnabled:Z

    return v0
.end method

.method public OnLocationChanged(DD)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers this event when user location has changed. Only works when EnableMylocation is set to true"
    .end annotation

    .prologue
    .line 1738
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/GoogleMap$12;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GoogleMap$12;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1743
    return-void
.end method

.method public OnMapClick(DD)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a tap gesture on the map"
    .end annotation

    .prologue
    .line 1578
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/GoogleMap$11;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GoogleMap$11;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1583
    return-void
.end method

.method public OnMapLongClick(DD)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a long-press gesture on the map"
    .end annotation

    .prologue
    .line 1564
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/GoogleMap$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GoogleMap$10;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1569
    return-void
.end method

.method public OnMarkerClick(IDD)V
    .locals 8
    .param p1, "markerId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is clicked"
    .end annotation

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$7;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$7;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1475
    return-void
.end method

.method public OnMarkerDrag(IDD)V
    .locals 8
    .param p1, "markerId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$5;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$5;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1456
    return-void
.end method

.method public OnMarkerDragEnd(IDD)V
    .locals 8
    .param p1, "markerId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$6;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$6;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1466
    return-void
.end method

.method public OnMarkerDragStart(IDD)V
    .locals 8
    .param p1, "markerId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->context:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$4;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$4;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1447
    return-void
.end method

.method public RemoveCircle(I)Z
    .locals 5
    .param p1, "circleId"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a circle for the map. Returns true if successfully removed, false if the circle does not exist with the specified id"
    .end annotation

    .prologue
    .line 493
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->getKeyByValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 494
    .local v0, "circle":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 496
    .local v1, "isRemoved":Z
    if-nez v0, :cond_0

    move v2, v1

    .line 509
    .end local v1    # "isRemoved":Z
    .local v2, "isRemoved":I
    :goto_0
    return v2

    .line 499
    .end local v2    # "isRemoved":I
    .restart local v1    # "isRemoved":Z
    :cond_0
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 500
    check-cast v3, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->removeFromMap()V

    .line 501
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mCircles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 503
    :cond_1
    instance-of v3, v0, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 504
    check-cast v3, Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 506
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const/4 v1, 0x1

    move v2, v1

    .line 509
    .restart local v2    # "isRemoved":I
    goto :goto_0
.end method

.method public RemoveMarker(I)V
    .locals 2
    .param p1, "markerId"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a marker from the map"
    .end annotation

    .prologue
    .line 1375
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->getMarkerIfExisted(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 1376
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1380
    :cond_0
    return-void
.end method

.method public RemovePolyline(I)Z
    .locals 3
    .param p1, "polylineId"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a polyline for the map. Returns true if successfully removed, false if the polyline does not exist with the specified id."
    .end annotation

    .prologue
    .line 671
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->polylinesByIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    .line 673
    .local v0, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 675
    const/4 v1, 0x1

    .line 678
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public RotateEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to rotate a map on the ui is currently enabled"
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public ScrollEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to scroll a map on the ui is currently enabled"
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public SetMapType(Ljava/lang/String;)V
    .locals 7
    .param p1, "layerName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the layer of Google map. Default layer is \"normal\", other choices including \"hybrid\",\"satellite\", and \"terrain\" "
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 830
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iput v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mapType:I

    .line 842
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mapType:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 845
    :cond_0
    return-void

    .line 832
    :cond_1
    const-string v0, "hybrid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mapType:I

    goto :goto_0

    .line 834
    :cond_2
    const-string v0, "satellite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mapType:I

    goto :goto_0

    .line 836
    :cond_3
    const-string v0, "terrain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mapType:I

    goto :goto_0

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "SetMapType"

    const/16 v2, 0x2eec

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not the correct type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Style(Ljava/lang/String;)V
    .locals 5
    .param p1, "styleJson"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the style of the map from json. Create a custom map style at mapstyle.withgoogle.com. Set the theme to \"standard\" to clear the style json."
    .end annotation

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MapStyleOptions;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    const-string v0, "custom"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->theme:Ljava/lang/String;

    .line 1861
    :goto_0
    return-void

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "SetStyle"

    const/16 v2, 0x2ef6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1860
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialStyleJson:Ljava/lang/String;

    goto :goto_0
.end method

.method public Theme()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the theme of the map. The choices are \"standard\"(default), \"silver\", \"retro\", \"dark\", \"night\", and \"aubergine\". Returns \"custom\" if the style of the map has been set from json."
    .end annotation

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 7
    .param p1, "theme"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "standard"
        editorType = "google_map_theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme of the map. The choices are \"standard\"(default), \"silver\", \"retro\", \"dark\", \"night\", and \"aubergine\"."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1837
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 1838
    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMapStyleOptions;->JSON_BY_THEME:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MapStyleOptions;

    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMapStyleOptions;->JSON_BY_THEME:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->theme:Ljava/lang/String;

    .line 1849
    :goto_0
    return-void

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "SetStyle"

    const/16 v2, 0x2ef6

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(theme)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1845
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "SetTheme"

    const/16 v2, 0x2ef5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1848
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialTheme:Ljava/lang/String;

    goto :goto_0
.end method

.method public UpdateCircle(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 34
    .param p1, "circleId"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of an existing circle. Properties include: \"alpha\"(number, transparency level ranging from 0~255), \"hue\" (number, color value ranging 0~360), \"radius\"(number in meters), and many more. Please refer to parameters in the AddCircle method."
    .end annotation

    .prologue
    .line 516
    const/4 v4, 0x3

    new-array v0, v4, [F

    move-object/from16 v23, v0

    .line 517
    .local v23, "hsv":[F
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->getCircleIfExisted(I)Ljava/lang/Object;

    move-result-object v19

    .line 518
    .local v19, "circle":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 519
    .local v27, "updateCircle":Lcom/google/android/gms/maps/model/Circle;
    const/16 v21, 0x0

    .line 521
    .local v21, "currentDraggable":Z
    if-eqz v19, :cond_c

    .line 522
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    if-eqz v4, :cond_0

    move-object/from16 v4, v19

    .line 523
    check-cast v4, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getCircle()Lcom/google/android/gms/maps/model/Circle;

    move-result-object v27

    .line 524
    const/16 v21, 0x1

    .line 526
    :cond_0
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v4, :cond_1

    move-object/from16 v27, v19

    .line 527
    check-cast v27, Lcom/google/android/gms/maps/model/Circle;

    .line 530
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    .line 531
    .local v28, "val":Ljava/lang/Float;
    const-string v4, "radius"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "alpha"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "hue"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "strokeWidth"

    .line 532
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v28

    .line 535
    :cond_3
    const-string v4, "alpha"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 536
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v20

    .line 537
    .local v20, "color":I
    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 538
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 539
    .local v17, "alphaVal":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v24

    .line 540
    .local v24, "newColor":I
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 595
    .end local v17    # "alphaVal":Ljava/lang/Integer;
    .end local v19    # "circle":Ljava/lang/Object;
    .end local v20    # "color":I
    .end local v24    # "newColor":I
    .end local v28    # "val":Ljava/lang/Float;
    :cond_4
    :goto_0
    return-void

    .line 541
    .restart local v19    # "circle":Ljava/lang/Object;
    .restart local v28    # "val":Ljava/lang/Float;
    :cond_5
    const-string v4, "hue"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 542
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    .line 543
    .local v16, "alpha":I
    const/4 v4, 0x3

    new-array v4, v4, [F

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v30

    aput v30, v4, v29

    const/16 v29, 0x1

    const/high16 v30, 0x3f800000    # 1.0f

    aput v30, v4, v29

    const/16 v29, 0x2

    const/high16 v30, 0x3f800000    # 1.0f

    aput v30, v4, v29

    move/from16 v0, v16

    invoke-static {v0, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v24

    .line 544
    .restart local v24    # "newColor":I
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    .end local v16    # "alpha":I
    .end local v19    # "circle":Ljava/lang/Object;
    .end local v24    # "newColor":I
    .end local v28    # "val":Ljava/lang/Float;
    :catch_0
    move-exception v22

    .line 587
    .local v22, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v29, "UpdateCircle"

    const/16 v30, 0x2eec

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    .line 588
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 587
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 545
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "circle":Ljava/lang/Object;
    .restart local v28    # "val":Ljava/lang/Float;
    :cond_6
    :try_start_1
    const-string v4, "radius"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 547
    move-object/from16 v10, v28

    .line 548
    .local v10, "radius":Ljava/lang/Float;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v30, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 550
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    if-eqz v4, :cond_4

    .line 552
    move-object/from16 v0, v19

    check-cast v0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v18

    .line 553
    .local v18, "centerMarker":Lcom/google/android/gms/maps/model/Marker;
    move-object/from16 v0, v19

    check-cast v0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v26

    .line 554
    .local v26, "oldMarker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v29, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v29 .. v29}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 556
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v30

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v29

    const/16 v30, 0x1

    .line 557
    invoke-virtual/range {v29 .. v30}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v29

    const/high16 v30, 0x43520000    # 210.0f

    .line 558
    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v29

    .line 555
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v25

    .line 560
    .local v25, "newMarker":Lcom/google/android/gms/maps/model/Marker;
    check-cast v19, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    .end local v19    # "circle":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->setRadiusMarker(Lcom/google/android/gms/maps/model/Marker;)V

    goto/16 :goto_0

    .line 563
    .end local v10    # "radius":Ljava/lang/Float;
    .end local v18    # "centerMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v25    # "newMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v26    # "oldMarker":Lcom/google/android/gms/maps/model/Marker;
    .restart local v19    # "circle":Ljava/lang/Object;
    :cond_7
    const-string v4, "strokeWidth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 564
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/Circle;->setStrokeWidth(F)V

    goto/16 :goto_0

    .line 565
    :cond_8
    const-string v4, "strokeColor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 566
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 567
    .restart local v20    # "color":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/Circle;->setStrokeColor(I)V

    goto/16 :goto_0

    .line 568
    .end local v20    # "color":I
    :cond_9
    const-string v4, "draggable"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 569
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 570
    .local v15, "draggable":Z
    if-eqz v21, :cond_a

    if-nez v15, :cond_4

    .line 571
    :cond_a
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 572
    .local v5, "uid":I
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v6, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 573
    .local v6, "lat":D
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v8, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 574
    .local v8, "lng":D
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v10

    .line 575
    .local v10, "radius":D
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v12

    .line 576
    .local v12, "fillColor":I
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getStrokeWidth()F

    move-result v13

    .line 577
    .local v13, "strokeWidth":F
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/maps/model/Circle;->getStrokeColor()I

    move-result v14

    .line 578
    .local v14, "strokeColor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->RemoveCircle(I)Z

    move-object/from16 v4, p0

    .line 579
    invoke-virtual/range {v4 .. v15}, Lcom/google/appinventor/components/runtime/GoogleMap;->AddCircle3(IDDDIFIZ)I

    goto/16 :goto_0

    .line 583
    .end local v5    # "uid":I
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    .end local v10    # "radius":D
    .end local v12    # "fillColor":I
    .end local v13    # "strokeWidth":F
    .end local v14    # "strokeColor":I
    .end local v15    # "draggable":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v29, "UpdateCircle"

    const/16 v30, 0x2ef3

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p2, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 592
    .end local v28    # "val":Ljava/lang/Float;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v29, "UpdateCircle"

    const/16 v30, 0x2eef

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    .line 593
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public UpdateMarker(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p1, "markerId"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of a marker, note that the marker has to be added first or else will throw an exception! Properties include: \"color\"(hue value ranging from 0~360), \"icon\"(the path of the icon), \"title\", \"snippet\", \"draggable\"(give either true or false as the value)."
    .end annotation

    .prologue
    .line 1319
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1320
    .local v5, "property":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1321
    .local v4, "propVal":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->getMarkerIfExisted(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    .line 1323
    .local v3, "marker":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v3, :cond_5

    .line 1324
    const-string v6, "color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1325
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v0, "hue":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 1327
    :cond_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v7, "UpdateMarker"

    const/16 v8, 0x2eec

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 1328
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1327
    invoke-virtual {v6, p0, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1334
    .end local v0    # "hue":Ljava/lang/Float;
    :cond_1
    :goto_0
    const-string v6, "icon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1338
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v6, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1344
    .local v1, "icon":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 1346
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_2
    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1347
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1349
    :cond_3
    const-string v6, "snippet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1350
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1352
    :cond_4
    const-string v6, "draggable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1353
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v4}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1356
    :cond_5
    return-void

    .line 1331
    .restart local v0    # "hue":Ljava/lang/Float;
    :cond_6
    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 1339
    .end local v0    # "hue":Ljava/lang/Float;
    :catch_0
    move-exception v2

    .line 1340
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "GoogleMap"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v1, 0x0

    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public UpdatePolyline(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 14
    .param p1, "polylineId"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of an existing polyline. Properties: \"points\" (list of lat, lng pairs), line segments are drawn between consecutive points\"width\" (pixels) the width of the line segments, \"color\" the color of the line segments."
    .end annotation

    .prologue
    .line 686
    const-string v1, "UpdatePolyline"

    .line 687
    .local v1, "UPDATE_POLYLINE":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->polylinesByIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Polyline;

    .line 688
    .local v6, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    const/4 v4, 0x0

    .line 690
    .local v4, "invalidInput":Z
    if-eqz v6, :cond_5

    .line 691
    const-string v8, "points"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 692
    const/4 v5, 0x0

    .line 694
    .local v5, "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v8, v0

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/GoogleMap;->convertPointsToLatLngs(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 699
    :goto_0
    if-eqz v5, :cond_0

    .line 700
    invoke-virtual {v6, v5}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 724
    .end local v5    # "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 725
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v9, "UpdatePolyline"

    const/16 v10, 0x2eec

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 729
    :cond_1
    :goto_2
    return-void

    .line 696
    .restart local v5    # "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :catch_0
    move-exception v3

    .line 697
    .local v3, "exception":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_0

    .line 701
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v5    # "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :cond_2
    const-string v8, "width"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 702
    const/4 v7, 0x0

    .line 704
    .local v7, "width":Ljava/lang/Float;
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 709
    :goto_3
    if-eqz v7, :cond_0

    .line 710
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    goto :goto_1

    .line 706
    :catch_1
    move-exception v3

    .line 707
    .restart local v3    # "exception":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_3

    .line 711
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v7    # "width":Ljava/lang/Float;
    :cond_3
    const-string v8, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 712
    const/4 v2, 0x0

    .line 714
    .local v2, "color":Ljava/lang/Integer;
    :try_start_2
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 719
    :goto_4
    if-eqz v2, :cond_0

    .line 720
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    goto :goto_1

    .line 716
    :catch_2
    move-exception v3

    .line 717
    .restart local v3    # "exception":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_4

    .line 722
    .end local v2    # "color":Ljava/lang/Integer;
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_4
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v9, "UpdatePolyline"

    const/16 v10, 0x2ef3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 728
    :cond_5
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v9, "UpdatePolyline"

    const/16 v10, 0x2ef4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 243
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 244
    const/4 p1, -0x2

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 247
    return-void
.end method

.method public ZoomControlEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom widget on the map ui is currently enabled"
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomControlsEnabled()Z

    move-result v0

    return v0
.end method

.method public ZoomGestureEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom gesture is currently enabled"
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mUiSettings:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->viewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public moveMapToLocation(DDF)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "zoomLevel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the map\'s camera to the specified location (latitude and longitude) and zoom level."
    .end annotation

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, p5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1764
    :goto_0
    return-void

    .line 1761
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 1762
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialCameraZoomLevel:Ljava/lang/Float;

    goto :goto_0
.end method

.method public moveMapToLocationOnly(DD)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the map\'s camera to the specified location (latitude and longitude)."
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1754
    :goto_0
    return-void

    .line 1753
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->initialLocation:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 13
    .param p1, "position"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 1525
    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 1526
    .local v9, "lat":Ljava/lang/Double;
    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 1527
    .local v10, "lng":Ljava/lang/Double;
    iget v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1528
    .local v0, "bearing":Ljava/lang/Float;
    iget v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 1529
    .local v11, "tilt":Ljava/lang/Float;
    iget v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 1530
    .local v12, "zoom":Ljava/lang/Float;
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/GoogleMap;->CameraPositionChanged(DDFFF)V

    .line 1531
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 1721
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/google/appinventor/components/runtime/GoogleMap;->REQUEST:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 1722
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 1717
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1746
    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1489
    .local v0, "markerId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->InfoWindowClicked(I)V

    .line 1490
    return-void
.end method

.method public onInitialize()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->isScreenInitialized:Z

    .line 749
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->MapIsReady()V

    .line 750
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1733
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnLocationChanged(DD)V

    .line 1734
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 1573
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMapClick(DD)V

    .line 1574
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 1554
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMapLongClick(DD)V

    .line 1555
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 8
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1495
    .local v7, "markerId":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    .line 1496
    .local v6, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerClick(IDD)V

    .line 1501
    const/4 v0, 0x0

    return v0
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 9
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1387
    .local v8, "markerId":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 1388
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    .line 1389
    .local v7, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDrag(IDD)V

    .line 1393
    .end local v7    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    .line 1394
    .local v6, "dCircle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1395
    :cond_2
    invoke-virtual {v6, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0

    .line 1398
    .end local v6    # "dCircle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    :cond_3
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 13
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1405
    .local v11, "markerId":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 1406
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    .line 1407
    .local v10, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, v10, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDragEnd(IDD)V

    .line 1411
    .end local v10    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    .line 1412
    .local v9, "dCircle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    :cond_2
    invoke-virtual {v9, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 1415
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->circles:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1416
    .local v1, "uid":I
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    .line 1417
    .local v8, "center":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v2, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getRadius()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->FinishedDraggingCircle(IDDD)V

    goto :goto_0

    .line 1420
    .end local v1    # "uid":I
    .end local v8    # "center":Lcom/google/android/gms/maps/model/LatLng;
    .end local v9    # "dCircle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    :cond_3
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 9
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1427
    .local v8, "markerId":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 1428
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    .line 1429
    .local v7, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDragStart(IDD)V

    .line 1433
    .end local v7    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;

    .line 1434
    .local v6, "dCircle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getCenterMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1435
    :cond_2
    invoke-virtual {v6, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0

    .line 1438
    .end local v6    # "dCircle":Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 1729
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method
