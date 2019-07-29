.class public Lcom/google/appinventor/components/runtime/Polygon;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "Polygon.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Polygon"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

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
.field private holePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private multipolygon:Z

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/google/appinventor/components/runtime/Polygon$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Polygon$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    .line 98
    sget-object v0, Lcom/google/appinventor/components/runtime/Polygon;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 99
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 100
    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the centroid of the Polygon as a (latitude, longitude) pair."
    .end annotation

    .prologue
    .line 249
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/PolygonBase;->Centroid()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public HolePoints()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 183
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 192
    :goto_0
    return-object v2

    .line 185
    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    if-eqz v2, :cond_2

    .line 186
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 187
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    .local v0, "polyholes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v0    # "polyholes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    :cond_1
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_0

    .line 192
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_0
.end method

.method public HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .param p1, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 213
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 218
    :goto_1
    return-void

    .line 202
    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    if-eqz v2, :cond_1

    .line 203
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "HolePoints"

    .line 216
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v5

    .line 215
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 204
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    goto :goto_0

    .line 209
    .end local v1    # "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :cond_2
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v3, 0xd4c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Unable to determine the structure of the points argument."

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public HolePointsFromString(Ljava/lang/String;)V
    .locals 8
    .param p1, "pointString"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Constructs holes in a polygon from a given list of coordinates per hole."
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 226
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 244
    :goto_0
    return-void

    .line 230
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "content":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 233
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v0    # "content":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse point string"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "HolePointsFromString"

    const/16 v4, 0xd4c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 242
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 241
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "content":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 237
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 238
    sget-object v2, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Points: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public Points()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the sequence of points used to draw the polygon."
    .end annotation

    .prologue
    .line 113
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 124
    :goto_0
    return-object v2

    .line 115
    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    if-eqz v2, :cond_2

    .line 117
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 118
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    .local v0, "part":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v0    # "part":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_1
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_0

    .line 124
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_0
.end method

.method public Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6
    .param p1, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 134
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 135
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 144
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 148
    :goto_1
    return-void

    .line 136
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 138
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "Points"

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 140
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v2, 0xd4c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Unable to determine the structure of the points argument."

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public PointsFromString(Ljava/lang/String;)V
    .locals 8
    .param p1, "pointString"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Constructs a polygon from the given list of coordinates."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 156
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 178
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "content":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 163
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 164
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 171
    .end local v0    # "content":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v5, "PointsFromString"

    const/16 v6, 0xd4c

    new-array v3, v3, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 172
    invoke-virtual {v2, p0, v5, v6, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "content":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 168
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 169
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 170
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 174
    .end local v0    # "content":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v2

    const-string v3, "PointsFromString"

    .line 176
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v5

    .line 175
    invoke-interface {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    .restart local v0    # "content":Lorg/json/JSONArray;
    :cond_2
    move v2, v4

    .line 168
    goto :goto_1
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of the feature. For polygons, this returns the text \"Polygon\"."
    .end annotation

    .prologue
    .line 106
    const-string v0, "Polygon"

    return-object v0
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
    .line 264
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getHolePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    return-object v0
.end method

.method public updateHolePoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 284
    return-void
.end method

.method public updatePoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 277
    return-void
.end method
