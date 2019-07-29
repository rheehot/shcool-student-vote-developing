.class public Lcom/google/appinventor/components/runtime/LocationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LocationSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), speed (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p>\n<p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through wireless networks or GPS satellites (if outdoors).</p>\nLocation information might not be immediately available when an app starts.  You\'ll have to wait a short time for a location provider to be found and used, or wait for the OnLocationChanged event"
    docUri = "location/location-sensor"
    iconName = "images/locationSensor.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_MOCK_LOCATION,android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;,
        Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNKNOWN_VALUE:I


# instance fields
.field private allProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private altitude:D

.field private final androidUIHandler:Landroid/os/Handler;

.field private distanceInterval:I

.field private enabled:Z

.field private geocoder:Landroid/location/Geocoder;

.field private final handler:Landroid/os/Handler;

.field private hasAltitude:Z

.field private hasLocationData:Z

.field private havePermission:Z

.field private initialized:Z

.field private lastLocation:Landroid/location/Location;

.field private latitude:D

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private listening:Z

.field private final locationCriteria:Landroid/location/Criteria;

.field private final locationManager:Landroid/location/LocationManager;

.field private locationProvider:Landroid/location/LocationProvider;

.field private longitude:D

.field private myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

.field private providerLocked:Z

.field private providerName:Ljava/lang/String;

.field private speed:F

.field private timeInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "enabled"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 237
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 178
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    .line 180
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    .line 184
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 192
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 202
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    .line 203
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    .line 204
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    .line 205
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    .line 206
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    .line 207
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    .line 210
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 218
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    .line 238
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 239
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->handler:Landroid/os/Handler;

    .line 241
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 242
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 245
    const v1, 0xea60

    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    .line 246
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    .line 249
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    .line 250
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    .line 251
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    .line 252
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    .line 253
    new-instance v1, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$1;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    .line 256
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 257
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # D

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    return p1
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # D

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/LocationSensor;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/LocationSensor;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return p1
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # D

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method private empty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 710
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startProvider(Ljava/lang/String;)Z
    .locals 8
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 646
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 648
    .local v6, "tLocationProvider":Landroid/location/LocationProvider;
    if-nez v6, :cond_0

    .line 649
    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvider("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 653
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 654
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    int-to-long v2, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 656
    iput-boolean v7, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    move v0, v7

    .line 657
    goto :goto_0
.end method

.method private stopListening()V
    .locals 2

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 673
    :cond_0
    return-void
.end method


# virtual methods
.method public Accuracy()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    .line 461
    :goto_0
    return-wide v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 461
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Altitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method public AvailableProviders()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method public CurrentAddress()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 499
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4

    .line 503
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 504
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v11, :cond_4

    .line 505
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 506
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_4

    .line 507
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    if-gt v9, v1, :cond_2

    .line 509
    invoke-virtual {v0, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 531
    .end local v0    # "address":Landroid/location/Address;
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 516
    :catch_0
    move-exception v8

    .line 520
    .local v8, "e":Ljava/lang/Exception;
    instance-of v1, v8, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_3

    instance-of v1, v8, Ljava/io/IOException;

    if-nez v1, :cond_3

    instance-of v1, v8, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v1, :cond_5

    .line 523
    :cond_3
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown by getting current address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    const-string v1, "No address available"

    goto :goto_1

    .line 526
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception thrown by getting current address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public DistanceInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum distance interval, in meters, that the sensor will try to use for sending out location updates. For example, if this is set to 5, then the sensor will fire a LocationChanged event only after 5 meters have been traversed. However, the sensor does not guarantee that an update will be received at exactly the distance interval. It may take more than 5 meters to fire an event, for instance."
    .end annotation

    .prologue
    .line 395
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    return v0
.end method

.method public DistanceInterval(I)V
    .locals 3
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "sensor_dist_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 372
    if-ltz p1, :cond_0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    .line 385
    :cond_0
    return-void

    .line 375
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    .line 378
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v1, :cond_2

    .line 379
    const-string v1, "DistanceInterval"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 383
    .local v0, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onDistanceIntervalChanged(I)V

    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 483
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 486
    :cond_0
    if-nez p1, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    goto :goto_0

    .line 489
    :cond_1
    const-string v0, "Enabled"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method public HasAccuracy()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Accuracy()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasAltitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasLongitudeLatitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 262
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 263
    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method public LatitudeFromAddress(Ljava/lang/String;)D
    .locals 7
    .param p1, "locationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 545
    .local v0, "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    sget-object v2, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latitude addressObjs size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 547
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "LatitudeFromAddress"

    const/16 v4, 0x65

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 553
    const-wide/16 v2, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-wide v2

    .line 549
    .restart local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0
.end method

.method public LocationChanged(DDDF)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "speed"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 272
    const-string v0, "LocationChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method public LongitudeFromAddress(Ljava/lang/String;)D
    .locals 7
    .param p1, "locationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives longitude of given address"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 566
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 567
    .local v0, "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    sget-object v2, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longitude addressObjs size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 569
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "LongitudeFromAddress"

    const/16 v4, 0x66

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 575
    const-wide/16 v2, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-wide v2

    .line 571
    .restart local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0
.end method

.method public ProviderLocked(Z)V
    .locals 0
    .param p1, "lock"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    .line 330
    return-void
.end method

.method public ProviderLocked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    return v0
.end method

.method public ProviderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    const-string v0, "NO PROVIDER"

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public ProviderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    .line 310
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    const-string v0, "ProviderName"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public RefreshProvider(Ljava/lang/String;)V
    .locals 7
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 595
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v3, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 597
    move-object v1, p0

    .line 598
    .local v1, "me":Lcom/google/appinventor/components/runtime/LocationSensor;
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    if-nez v3, :cond_2

    .line 600
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/appinventor/components/runtime/LocationSensor$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_2
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 622
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    goto :goto_0

    .line 625
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    .line 626
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    invoke-virtual {v3, v4, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "bProviderName":Ljava/lang/String;
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 628
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 631
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 632
    .local v2, "providerN":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 633
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v4, :cond_5

    .line 634
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-nez v3, :cond_0

    .line 635
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public StatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "StatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public TimeInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum time interval, in milliseconds, that the sensor will try to use for sending out location updates. However, location updates will only be received when the location of the phone actually changes, and use of the specified time interval is not guaranteed. For example, if 1000 is used as the time interval, location updates will never be fired sooner than 1000ms, but they may be fired anytime after."
    .end annotation

    .prologue
    .line 362
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    return v0
.end method

.method public TimeInterval(I)V
    .locals 3
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60000"
        editorType = "sensor_time_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 339
    if-ltz p1, :cond_0

    const v1, 0xf4240

    if-le p1, v1, :cond_1

    .line 352
    :cond_0
    return-void

    .line 342
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    .line 345
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v1, :cond_2

    .line 346
    const-string v1, "TimeInterval"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 350
    .local v0, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onTimeIntervalChanged(I)V

    goto :goto_0
.end method

.method public addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .prologue
    .line 700
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 697
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 683
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 690
    return-void
.end method

.method public removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 706
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 707
    return-void
.end method
