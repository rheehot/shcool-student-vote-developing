.class public Lcom/google/appinventor/components/runtime/Marker;
.super Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;
.source "Marker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>An icon positioned at a point to indicate information on a map. Markers can be used to provide an info window, custom fill and stroke colors, and custom images to convey information to the user.</p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "marker.svg"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "osmdroid.aar, androidsvg.jar"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bearingComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchorHAlign:I

.field private anchorVAlign:I

.field private height:I

.field private imagePath:Ljava/lang/String;

.field private location:Lorg/osmdroid/util/GeoPoint;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Marker$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 124
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker$2;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Marker$2;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->bearingComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    const/4 v4, 0x3

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 174
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    .line 58
    iput v4, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorHAlign:I

    .line 64
    iput v4, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorVAlign:I

    .line 69
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    .line 74
    iput v1, p0, Lcom/google/appinventor/components/runtime/Marker;->width:I

    .line 79
    iput v1, p0, Lcom/google/appinventor/components/runtime/Marker;->height:I

    .line 175
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Marker;->ShowShadow(Z)V

    .line 177
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Marker;->AnchorHorizontal(I)V

    .line 178
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Marker;->AnchorVertical(I)V

    .line 179
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Marker;->ImageAsset(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Marker;->Width(I)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Marker;->Height(I)V

    .line 182
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    .line 184
    return-void
.end method


# virtual methods
.method public AnchorHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal alignment property controls where the Marker\'s anchor is located relative to its width."
    .end annotation

    .prologue
    .line 269
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorHAlign:I

    return v0
.end method

.method public AnchorHorizontal(I)V
    .locals 6
    .param p1, "horizontal"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 255
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorHAlign:I

    if-ne p1, v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    if-ge p1, v3, :cond_2

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "AnchorHorizontal"

    const/16 v2, 0xd59

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_2
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorHAlign:I

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    goto :goto_0
.end method

.method public AnchorVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical alignment property controls where the Marker\'s anchor is located relative to its height."
    .end annotation

    .prologue
    .line 291
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorVAlign:I

    return v0
.end method

.method public AnchorVertical(I)V
    .locals 6
    .param p1, "vertical"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 277
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorVAlign:I

    if-ne p1, v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    if-ge p1, v3, :cond_2

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "AnchorVertical"

    const/16 v2, 0xd58

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_2
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->anchorVAlign:I

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    goto :goto_0
.end method

.method public BearingToFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Z)D
    .locals 4
    .param p1, "mapFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "centroids"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bearing from the Marker to the given map feature, in degrees from due north. If the centroids parameter is true, the bearing will be to the center of the map feature. Otherwise, the bearing will be computed to the point in the feature nearest the Marker."
    .end annotation

    .prologue
    .line 400
    if-nez p1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->bearingComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public BearingToPoint(DD)D
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bearing from the Marker to the given latitude and longitude, in degrees from due north."
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public DistanceToPoint(DD)D
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between a map feature and a latitude, longitude point."
    .end annotation

    .prologue
    .line 383
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public DistanceToPoint(DDZ)D
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "centroid"    # Z

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Marker;->DistanceToPoint(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Height()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 341
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 346
    :goto_0
    return v0

    .line 343
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->height:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_1

    .line 344
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->height:I

    neg-int v0, v0

    int-to-double v0, v0

    const-wide v2, -0x3f70c00000000000L    # -1000.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 346
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->height:I

    goto :goto_0
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 334
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->height:I

    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 336
    return-void
.end method

.method public HeightPercent(I)V
    .locals 1
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 352
    rsub-int v0, p1, -0x3e8

    iput v0, p0, Lcom/google/appinventor/components/runtime/Marker;->height:I

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 354
    return-void
.end method

.method public ImageAsset()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The ImageAsset property is used to provide an alternative image for the Marker."
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public ImageAsset(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "ImageAsset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 236
    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public Latitude(D)V
    .locals 7
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "Latitude"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "Latitude"

    const/16 v2, 0xd55

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 201
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    goto :goto_0
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public Longitude(D)V
    .locals 7
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "Longitude"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "Longitude"

    const/16 v2, 0xd56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 220
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    goto :goto_0
.end method

.method public SetLocation(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the location of the marker."
    .end annotation

    .prologue
    .line 358
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "SetLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 360
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 362
    return-void
.end method

.method public ShowShadow(Z)V
    .locals 0
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 298
    return-void
.end method

.method public ShowShadow()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets whether or not the shadow of the Marker is shown."
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public StrokeColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->StrokeColor(I)V

    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 248
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 189
    const-string v0, "Marker"

    return-object v0
.end method

.method public Width()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 316
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 321
    :goto_0
    return v0

    .line 318
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->width:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_1

    .line 319
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->width:I

    neg-int v0, v0

    int-to-double v0, v0

    const-wide v2, -0x3f70c00000000000L    # -1000.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 321
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->width:I

    goto :goto_0
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 309
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->width:I

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 311
    return-void
.end method

.method public WidthPercent(I)V
    .locals 1
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 327
    rsub-int v0, p1, -0x3e8

    iput v0, p0, Lcom/google/appinventor/components/runtime/Marker;->width:I

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 329
    return-void
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public updateLocation(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 410
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->location:Lorg/osmdroid/util/GeoPoint;

    .line 411
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 412
    return-void
.end method
