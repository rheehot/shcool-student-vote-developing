.class public Lcom/google/appinventor/components/runtime/Map;
.super Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.source "Map.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x8
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional container that renders map tiles in the background and allows for multiple Marker elements to identify points on the map. Map tiles are supplied by OpenStreetMap contributors and the United States Geological Survey.</p><p>The Map component provides three utilities for manipulating its boundaries within App Inventor. First, a locking mechanism is provided to allow the map to be moved relative to other components on the Screen. Second, when unlocked, the user can pan the Map to any location. At this new location, the &quot;Set Initial Boundary&quot; button can be pressed to save the current Map coordinates to its properties. Lastly, if the Map is moved to a different location, for example to add Markers off-screen, then the &quot;Reset Map to Initial Bounds&quot; button can be used to re-center the Map at the starting location.</p>"
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "location.png"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "osmdroid.aar, osmdroid.jar, androidsvg.jar, jts.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_FINE_LOCATION, android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_WIFI_STATE, android.permission.ACCESS_NETWORK_STATE, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final ERROR_INVALID_NUMBER:Ljava/lang/String; = "%s is not a valid number."

.field private static final ERROR_LATITUDE_OUT_OF_BOUNDS:Ljava/lang/String; = "Latitude %f is out of bounds."

.field private static final ERROR_LONGITUDE_OUT_OF_BOUNDS:Ljava/lang/String; = "Longitude %f is out of bounds."

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

.field private sensor:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 93
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 95
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 104
    sget-object v0, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string v1, "Map.<init>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 106
    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->Width(I)V

    .line 107
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->Height(I)V

    .line 108
    const-string v0, "42.359144, -71.093612"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->CenterFromString(Ljava/lang/String;)V

    .line 109
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ZoomLevel(I)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Map;->EnableZoom(Z)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Map;->EnablePan(Z)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Map;->MapType(I)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowCompass(Z)V

    .line 114
    new-instance v0, Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowUser(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowZoom(Z)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->EnableRotation(Z)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowScale(Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public BoundingBox()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bounding box for the map stored as [[North, West], [South, East]]."
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 429
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    .line 430
    .local v0, "bbox":Lorg/osmdroid/util/BoundingBox;
    new-array v3, v8, [Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 431
    .local v1, "northwest":Lcom/google/appinventor/components/runtime/util/YailList;
    new-array v3, v8, [Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 432
    .local v2, "southeast":Lcom/google/appinventor/components/runtime/util/YailList;
    new-array v3, v8, [Lcom/google/appinventor/components/runtime/util/YailList;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    return-object v3
.end method

.method public BoundingBox(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 11
    .param p1, "boundingbox"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    .line 419
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 420
    .local v2, "latNorth":D
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v8

    .line 421
    .local v8, "longWest":D
    invoke-virtual {p1, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .line 422
    .local v6, "latSouth":D
    invoke-virtual {p1, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 423
    .local v4, "longEast":D
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V

    .line 424
    return-void
.end method

.method public BoundsChange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the map bounds by panning or zooming the map."
    .end annotation

    .prologue
    .line 546
    const-string v0, "BoundsChange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method public CenterFromString(Ljava/lang/String;)V
    .locals 12
    .param p1, "center"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "42.359144, -71.093612"
        editorType = "geographic_point"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>Set the initial center coordinate of the map. The value is specified as a comma-separated pair of decimal latitude and longitude coordinates, for example, <code>42.359144, -71.093612</code>.</p><p>In blocks code, it is recommended for performance reasons to use SetCenter with numerical latitude and longitude rather than convert to the string representation for use with this property.</p>"
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 150
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "parts":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 152
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid point."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid point."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 166
    .local v2, "latitude":D
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 172
    .local v4, "longitude":D
    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_1

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_2

    .line 173
    :cond_1
    const-string v6, "Latitude %f is out of bounds."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string v7, "%s is not a valid number."

    new-array v8, v11, [Ljava/lang/Object;

    aget-object v9, v1, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v6, "%s is not a valid number."

    new-array v7, v11, [Ljava/lang/Object;

    aget-object v8, v1, v10

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "latitude":D
    :catch_1
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string v7, "%s is not a valid number."

    new-array v8, v11, [Ljava/lang/Object;

    aget-object v9, v1, v11

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v6, "%s is not a valid number."

    new-array v7, v11, [Ljava/lang/Object;

    aget-object v8, v1, v11

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "longitude":D
    :cond_2
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_3

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4

    .line 175
    :cond_3
    const-string v6, "Longitude %f is out of bounds."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_4
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting center to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v6, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCenter(DD)V

    goto/16 :goto_0
.end method

.method public CreateMarker(DD)Lcom/google/appinventor/components/runtime/Marker;
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new marker with default properties at the specified latitude and longitude."
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 512
    .local v0, "marker":Lcom/google/appinventor/components/runtime/Marker;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Marker;->SetLocation(DD)V

    .line 513
    return-object v0
.end method

.method public DoubleTapAtPoint(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user double-tapped at a point on the map. This event will be followed by a ZoomChanged event if zooming gestures are enabled and the map is not at the highest possible zoom level."
    .end annotation

    .prologue
    .line 569
    const-string v0, "DoubleTapAtPoint"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 570
    return-void
.end method

.method public EnablePan(Z)V
    .locals 1
    .param p1, "pan"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setPanEnabled(Z)V

    .line 409
    return-void
.end method

.method public EnablePan()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable two-finger panning of the Map"
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isPanEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableRotation(Z)V
    .locals 1
    .param p1, "rotation"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotationEnabled(Z)V

    .line 391
    return-void
.end method

.method public EnableRotation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true, the user can use multitouch gestures to rotate the map around its current center."
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isRotationEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableZoom(Z)V
    .locals 1
    .param p1, "zoom"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomEnabled(Z)V

    .line 250
    return-void
.end method

.method public EnableZoom()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If this property is set to true, multitouch zoom gestures are allowed on the map. Otherwise, the map zoom cannot be changed by the user except via the zoom control buttons."
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public InvalidPoint(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An invalid coordinate was supplied during a maps operation. The message parameter will have more details about the issue."
    .end annotation

    .prologue
    .line 557
    const-string v0, "InvalidPoint"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 558
    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the center of the map."
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public LocationSensor()Lcom/google/appinventor/components/runtime/LocationSensor;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    return-object v0
.end method

.method public LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 2
    .param p1, "sensor"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "component:com.google.appinventor.components.runtime.LocationSensor"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Uses the provided LocationSensor for user location data rather than the built-in location provider."
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    move-result-object v0

    .line 441
    .local v0, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    .line 444
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 445
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    .line 448
    :cond_1
    return-void
.end method

.method public LongPressAtPoint(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed at a point on the map."
    .end annotation

    .prologue
    .line 574
    const-string v0, "LongPressAtPoint"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the center of the map."
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public MapType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of tile layer to use as the base of the map. Valid values are: 1 (Roads), 2 (Aerial), 3 (Terrain)"
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v0

    return v0
.end method

.method public MapType(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 290
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v1

    aget-object v0, v1, p1

    .line 291
    .local v0, "newType":Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V

    .line 292
    return-void
.end method

.method public PanTo(DDI)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "zoom"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pan the map center to the given latitude and longitude and adjust the zoom level to the specified zoom."
    .end annotation

    .prologue
    .line 505
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->panTo(DDID)V

    .line 506
    return-void
.end method

.method public Ready()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Map has been initialized and is ready for user interaction."
    .end annotation

    .prologue
    .line 541
    const-string v0, "Ready"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 542
    return-void
.end method

.method public Rotation()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets or gets the rotation of the map in decimal degrees if any"
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getRotation()F

    move-result v0

    return v0
.end method

.method public Rotation(F)V
    .locals 1
    .param p1, "rotation"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotation(F)V

    .line 269
    return-void
.end method

.method public Save(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Save the contents of the Map to the specified path."
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 519
    .local v0, "featuresToSave":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/Map$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Map$1;-><init>(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method public ScaleUnits()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 480
    sget-object v0, Lcom/google/appinventor/components/runtime/Map$13;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 486
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 482
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ScaleUnits(I)V
    .locals 6
    .param p1, "units"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_unit_system"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 470
    if-gt v3, p1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "ScaleUnits"

    const/16 v2, 0xd5d

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 474
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 473
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ShowCompass(Z)V
    .locals 1
    .param p1, "compass"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCompassEnabled(Z)V

    .line 322
    return-void
.end method

.method public ShowCompass()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show a compass icon rotated based on user orientation."
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isCompassEnabled()Z

    move-result v0

    return v0
.end method

.method public ShowScale(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleVisible(Z)V

    .line 458
    return-void
.end method

.method public ShowScale()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Shows a scale reference on the map."
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isScaleVisible()Z

    move-result v0

    return v0
.end method

.method public ShowUser(Z)V
    .locals 1
    .param p1, "user"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setShowUserEnabled(Z)V

    .line 368
    return-void
.end method

.method public ShowUser()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show the user\'s location on the map."
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isShowUserEnabled()Z

    move-result v0

    return v0
.end method

.method public ShowZoom(Z)V
    .locals 1
    .param p1, "zoom"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomControlEnabled(Z)V

    .line 345
    return-void
.end method

.method public ShowZoom()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show zoom buttons on the map."
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomControlEnabled()Z

    move-result v0

    return v0
.end method

.method public TapAtPoint(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user tapped at a point on the map."
    .end annotation

    .prologue
    .line 562
    const-string v0, "TapAtPoint"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public UserLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s latitude if ShowUser is enabled."
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v0, :cond_0

    const-wide v0, -0x3f70c80000000000L    # -999.0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Latitude()D

    move-result-wide v0

    goto :goto_0
.end method

.method public UserLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s longitude if ShowUser is enabled."
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v0, :cond_0

    const-wide v0, -0x3f70c80000000000L    # -999.0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Longitude()D

    move-result-wide v0

    goto :goto_0
.end method

.method public ZoomChange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the zoom level of the map."
    .end annotation

    .prologue
    .line 551
    const-string v0, "ZoomChange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 552
    return-void
.end method

.method public ZoomLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The zoom level of the map. Valid values of ZoomLevel are dependent on the tile provider and the latitude and longitude of the map. For example, zoom levels are more constrained over oceans than dense city centers to conserve space for storing tiles, so valid values may be 1-7 over ocean and 1-18 over cities. Tile providers may send warning or error tiles if the zoom level is too great for the server to support."
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getZoom()I

    move-result v0

    return v0
.end method

.method public ZoomLevel(I)V
    .locals 1
    .param p1, "zoom"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "13"
        editorType = "map_zoom"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoom(I)V

    .line 221
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 731
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 732
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 710
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 711
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 703
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 704
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 717
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 718
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 724
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 725
    return-void
.end method

.method public getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    return-object v0
.end method

.method public getMap()Lcom/google/appinventor/components/runtime/Map;
    .locals 0

    .prologue
    .line 694
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory;->newMap(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBoundsChanged()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$3;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method

.method public onDoubleTap(DD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$6;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Map$6;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method

.method public onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$8;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$11;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 680
    return-void
.end method

.method public onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$9;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$9;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method public onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$10;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method public onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$12;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$12;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method public onLongPress(DD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$7;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Map$7;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 640
    return-void
.end method

.method public onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V
    .locals 2
    .param p1, "map"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$2;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 590
    return-void
.end method

.method public onSingleTap(DD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Map$5;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method public onZoom()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$4;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 737
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 738
    return-void
.end method
