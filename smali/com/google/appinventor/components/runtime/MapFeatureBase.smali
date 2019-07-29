.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureBase;
.super Ljava/lang/Object;
.source "MapFeatureBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private centroid:Lorg/osmdroid/util/GeoPoint;

.field protected container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

.field private description:Ljava/lang/String;

.field private final distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private distanceToPoint:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private draggable:Z

.field private geometry:Lorg/locationtech/jts/geom/Geometry;

.field private infobox:Z

.field protected map:Lcom/google/appinventor/components/runtime/Map;

.field private strokeColor:I

.field private strokeWidth:I

.field private title:Ljava/lang/String;

.field private visible:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "distanceComputation":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<Ljava/lang/Double;>;"
    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 33
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 34
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    .line 35
    iput v4, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    .line 36
    iput v2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeWidth:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->title:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->description:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->draggable:Z

    .line 40
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->infobox:Z

    .line 41
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    .line 43
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureBase;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceToPoint:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 90
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 97
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 98
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Description(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Draggable(Z)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->EnableInfobox(Z)V

    .line 101
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeColor(I)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeWidth(I)V

    .line 103
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Title(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Visible(Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on the feature."
    .end annotation

    .prologue
    .line 272
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 274
    return-void
.end method

.method public Description()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The description displayed in the info window that appears when the user clicks on the map feature."
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->description:Ljava/lang/String;

    return-object v0
.end method

.method public Description(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->description:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 210
    return-void
.end method

.method public DistanceToFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Z)D
    .locals 4
    .param p1, "mapFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "centroids"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between two map features."
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

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

.method public DistanceToPoint(DDZ)D
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "centroid"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between a map feature and a latitude, longitude point."
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceToPoint:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public Drag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged the map feature."
    .end annotation

    .prologue
    .line 294
    const-string v0, "Drag"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 296
    return-void
.end method

.method public Draggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->draggable:Z

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 179
    return-void
.end method

.method public Draggable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The Draggable property is used to set whether or not the user can drag the Marker by long-pressing and then dragging the marker to a new location."
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->draggable:Z

    return v0
.end method

.method public EnableInfobox(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->infobox:Z

    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 227
    return-void
.end method

.method public EnableInfobox()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or disable the infobox window display when the user taps the feature."
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->infobox:Z

    return v0
.end method

.method public HideInfobox()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the infobox if it is shown. If the infobox is not visible this function has no effect."
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 248
    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on the feature. This event will only trigger if Draggable is false."
    .end annotation

    .prologue
    .line 280
    const-string v0, "LongClick"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 282
    return-void
.end method

.method public ShowInfobox()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the infobox for the feature. This will show the infobox even if {@link #EnableInfobox} is set to false."
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 241
    return-void
.end method

.method public StartDrag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started a drag operation."
    .end annotation

    .prologue
    .line 287
    const-string v0, "StartDrag"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 289
    return-void
.end method

.method public StopDrag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped a drag operation."
    .end annotation

    .prologue
    .line 301
    const-string v0, "StopDrag"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 303
    return-void
.end method

.method public StrokeColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The paint color used to outline the map feature."
    .end annotation

    .prologue
    .line 153
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    return v0
.end method

.method public StrokeColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 145
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 147
    return-void
.end method

.method public StrokeWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of the stroke used to outline the map feature."
    .end annotation

    .prologue
    .line 169
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeWidth:I

    return v0
.end method

.method public StrokeWidth(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 161
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeWidth:I

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 163
    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title displayed in the info window that appears when the user clicks on the map feature."
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->title:Ljava/lang/String;

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->title:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 194
    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .param p1, "visibility"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    if-ne v0, p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    .line 125
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    return v0
.end method

.method protected final declared-synchronized clearGeometry()V
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract computeGeometry()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public final declared-synchronized getCentroid()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->computeGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromMap()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 114
    return-void
.end method

.method public setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    .line 108
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 109
    return-void
.end method
