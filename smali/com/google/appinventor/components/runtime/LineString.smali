.class public Lcom/google/appinventor/components/runtime/LineString;
.super Lcom/google/appinventor/components/runtime/MapFeatureBase;
.source "LineString.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "LineString"
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
.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/appinventor/components/runtime/LineString;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/LineString;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/google/appinventor/components/runtime/LineString$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/LineString$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/LineString;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    .line 98
    sget-object v0, Lcom/google/appinventor/components/runtime/LineString;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 99
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LineString;->StrokeWidth(I)V

    .line 100
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 101
    return-void
.end method


# virtual methods
.method public Points()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A list of latitude and longitude pairs that represent the line segments of the polyline."
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .param p1, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "Points"

    const/16 v3, 0xd49

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 122
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 127
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 128
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineString;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "Points"

    .line 131
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    .line 130
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public PointsFromString(Ljava/lang/String;)V
    .locals 19
    .param p1, "points"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    const-string v4, "PointsFromString"

    .line 148
    .local v4, "functionName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v5, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "array":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_0

    .line 152
    new-instance v13, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v14, 0xd49

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v5    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Lorg/json/JSONException;
    sget-object v13, Lcom/google/appinventor/components/runtime/LineString;->TAG:Ljava/lang/String;

    const-string v14, "Malformed string to LineString.PointsFromString"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v13

    const-string v14, "PointsFromString"

    const/16 v15, 0xd4a

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 184
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    return-void

    .line 154
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v5    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 155
    .local v7, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 156
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v12

    .line 157
    .local v12, "point":Lorg/json/JSONArray;
    if-nez v12, :cond_1

    .line 158
    new-instance v13, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v14, 0xd5c

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 159
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v5    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v12    # "point":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 182
    .local v3, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v13

    const-string v14, "PointsFromString"

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v15

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    .end local v3    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v5    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v6    # "i":I
    .restart local v7    # "length":I
    .restart local v12    # "point":Lorg/json/JSONArray;
    :cond_1
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_2

    .line 161
    new-instance v13, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v14, 0xd4b

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 162
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v13

    .line 164
    :cond_2
    const/4 v13, 0x0

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v12, v13, v14, v15}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    .line 165
    .local v8, "latitude":D
    const/4 v13, 0x1

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v12, v13, v14, v15}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v10

    .line 166
    .local v10, "longitude":D
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v13

    if-nez v13, :cond_3

    .line 167
    new-instance v13, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v14, 0xd5a

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v13

    .line 169
    :cond_3
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v13

    if-nez v13, :cond_4

    .line 170
    new-instance v13, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v14, 0xd5b

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 171
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v13

    .line 173
    :cond_4
    new-instance v13, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v13, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 175
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "point":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/LineString;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v13}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public StrokeWidth(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeWidth(I)V

    .line 191
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of the map feature."
    .end annotation

    .prologue
    .line 107
    const-string v0, "LineString"

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
    .line 200
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    return-object v0
.end method

.method public updatePoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 211
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 212
    return-void
.end method
