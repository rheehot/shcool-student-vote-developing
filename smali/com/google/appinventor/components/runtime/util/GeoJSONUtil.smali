.class public final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;,
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    }
.end annotation


# static fields
.field private static final GEOJSON_COORDINATES:Ljava/lang/String; = "coordinates"

.field private static final GEOJSON_FEATURE:Ljava/lang/String; = "Feature"

.field private static final GEOJSON_GEOMETRY:Ljava/lang/String; = "geometry"

.field private static final GEOJSON_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final GEOJSON_TYPE:Ljava/lang/String; = "type"

.field private static final KEY:I = 0x1

.field private static final LATITUDE:I = 0x2

.field private static final LONGITUDE:I = 0x1

.field private static final PROPERTY_ANCHOR_HORIZONTAL:Ljava/lang/String; = "anchorHorizontal"

.field private static final PROPERTY_ANCHOR_VERTICAL:Ljava/lang/String; = "anchorVertical"

.field private static final PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PROPERTY_DRAGGABLE:Ljava/lang/String; = "draggable"

.field private static final PROPERTY_FILL:Ljava/lang/String; = "fill"

.field private static final PROPERTY_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROPERTY_IMAGE:Ljava/lang/String; = "image"

.field private static final PROPERTY_INFOBOX:Ljava/lang/String; = "infobox"

.field private static final PROPERTY_STROKE:Ljava/lang/String; = "stroke"

.field private static final PROPERTY_STROKE_WIDTH:Ljava/lang/String; = "stroke-width"

.field private static final PROPERTY_TITLE:Ljava/lang/String; = "title"

.field private static final PROPERTY_VISIBLE:Ljava/lang/String; = "visible"

.field private static final PROPERTY_WIDTH:Ljava/lang/String; = "width"

.field private static final SUPPORTED_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE:I = 0x2

.field private static final colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    .line 77
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "black"

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "blue"

    const v2, -0xde690d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "cyan"

    const v2, -0xff432c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "darkgray"

    const v2, -0xbbbbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "gray"

    const v2, -0x616162

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "green"

    const v2, -0xb350b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "lightgray"

    const v2, -0x333334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "magenta"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "orange"

    const/16 v2, -0x6800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "pink"

    const v2, -0x16e19d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "red"

    const v2, -0xbbcca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "white"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "yellow"

    const/16 v2, -0x14c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    .line 92
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "anchorHorizontal"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "anchorVertical"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "description"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "draggable"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "fill"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "height"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "image"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "infobox"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "stroke"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "stroke-width"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "title"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "width"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "visible"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charToHex(C)I
    .locals 2
    .param p0, "c"    # C
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 241
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 242
    add-int/lit8 v0, p0, -0x30

    .line 246
    :goto_0
    return v0

    .line 243
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 244
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 245
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 246
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid hex character. Expected [0-9A-Fa-f]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lineStringFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .locals 3
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too few coordinates supplied in GeoJSON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/LineString;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/LineString;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 337
    .local v0, "lineString":Lcom/google/appinventor/components/runtime/LineString;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LineString;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 338
    return-object v0
.end method

.method private static markerFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .locals 4
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid coordinate supplied in GeoJSON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 326
    .local v0, "marker":Lcom/google/appinventor/components/runtime/Marker;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 327
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    .line 328
    return-object v0
.end method

.method private static multipolygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .locals 6
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 356
    new-instance v4, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 357
    .local v4, "polygon":Lcom/google/appinventor/components/runtime/Polygon;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v0, "holePoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 360
    .local v1, "i":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 363
    .local v2, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/LList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    .end local v2    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 367
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 368
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 369
    return-object v4
.end method

.method static parseBooleanOrString(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 390
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 391
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 395
    .restart local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 392
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 393
    const-string v1, "false"

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_3

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseBooleanOrString(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 397
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static parseColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "lcValue":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 196
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    :goto_0
    return v2

    .line 198
    :cond_0
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColorHex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 200
    :cond_1
    const-string v2, "&h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColorHex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 203
    :cond_2
    const v2, -0xbbcca

    goto :goto_0
.end method

.method static parseColorHex(Ljava/lang/String;)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "argb":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 212
    const/high16 v0, -0x1000000

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v1

    .line 216
    .local v1, "hex":I
    shl-int/lit8 v3, v1, 0x4

    or-int/2addr v3, v1

    rsub-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "hex":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 220
    const/high16 v0, -0x1000000

    .line 222
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 223
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v4

    or-int v1, v3, v4

    .line 224
    .restart local v1    # "hex":I
    rsub-int/lit8 v3, v2, 0x2

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    or-int/2addr v0, v3

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    .end local v1    # "hex":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 229
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 230
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v4

    or-int v1, v3, v4

    .line 231
    .restart local v1    # "hex":I
    rsub-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    or-int/2addr v0, v3

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 234
    .end local v1    # "hex":I
    .end local v2    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 236
    .restart local v2    # "i":I
    :cond_3
    return v0
.end method

.method static parseIntegerOrString(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 403
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 404
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 408
    .restart local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 405
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 406
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 407
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static polygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .locals 3
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 343
    new-instance v1, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 344
    .local v1, "polygon":Lcom/google/appinventor/components/runtime/Polygon;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 345
    .local v0, "i":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 350
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 351
    return-object v1
.end method

.method private static processCoordinates(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 1
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 308
    const-string v0, "Point"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->markerFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 310
    :cond_0
    const-string v0, "LineString"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->lineStringFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_1
    const-string v0, "Polygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->polygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_2
    const-string v0, "MultiPolygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->multipolygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 13
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p2, "descriptions"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 254
    const/4 v6, 0x0

    .line 255
    .local v6, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 256
    .local v1, "geometry":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x0

    .line 257
    .local v5, "properties":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/LList;

    invoke-virtual {v8}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "o":Ljava/lang/Object;
    move-object v3, v4

    .line 258
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 259
    .local v3, "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 261
    .local v7, "value":Ljava/lang/Object;
    const-string v9, "type"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v6, v7

    .line 262
    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_0
    const-string v9, "geometry"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v1, v7

    .line 264
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    .line 265
    :cond_1
    const-string v9, "properties"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v5, v7

    .line 266
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    .line 268
    :cond_2
    const-string v9, "Unsupported field \"%s\" in JSON format"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    const-string v8, "Feature"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 272
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown type \"%s\""

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 274
    :cond_4
    if-nez v1, :cond_5

    .line 275
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No geometry defined for feature."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 277
    :cond_5
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeometry(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v0

    .line 278
    .local v0, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    if-eqz v5, :cond_6

    .line 279
    invoke-static {p0, v0, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processProperties(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 281
    :cond_6
    return-object v0
.end method

.method private static processGeometry(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 11
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p2, "geometry"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 288
    .local v0, "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/LList;

    invoke-virtual {v6}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "o":Ljava/lang/Object;
    move-object v2, v3

    .line 289
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 290
    .local v2, "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v2, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 292
    .local v5, "value":Ljava/lang/Object;
    const-string v7, "type"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v5

    .line 293
    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_0
    const-string v7, "coordinates"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v5

    .line 295
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    .line 297
    :cond_1
    const-string v7, "Unsupported field \"%s\" in JSON format"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    .line 301
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No coordinates found in GeoJSON Feature"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    :cond_3
    invoke-static {p1, v4, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processCoordinates(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v6

    return-object v6
.end method

.method private static processProperties(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 9
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "properties"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v8, 0x1

    .line 374
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 375
    .local v2, "o":Ljava/lang/Object;
    instance-of v5, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 376
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 377
    .local v3, "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "key":Ljava/lang/String;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    .line 379
    .local v0, "application":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    if-eqz v0, :cond_1

    .line 380
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, p1, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_1
    const-string v5, "Ignoring GeoJSON property \"%s\""

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v0    # "application":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_2
    return-void
.end method

.method public static swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5
    .param p0, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 679
    .local v1, "i":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 681
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 682
    .local v0, "coordinate":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 683
    .local v3, "temp":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 684
    .local v2, "p":Lgnu/lists/Pair;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 685
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "p":Lgnu/lists/Pair;
    check-cast v2, Lgnu/lists/Pair;

    .line 686
    .restart local v2    # "p":Lgnu/lists/Pair;
    invoke-virtual {v2, v3}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    goto :goto_0

    .line 688
    .end local v0    # "coordinate":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v2    # "p":Lgnu/lists/Pair;
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public static swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;
    .locals 2
    .param p0, "coordinates"    # Lgnu/lists/LList;

    .prologue
    .line 692
    move-object v0, p0

    .line 693
    .local v0, "it":Lgnu/lists/LList;
    :goto_0
    invoke-virtual {v0}, Lgnu/lists/LList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    .line 695
    check-cast v0, Lgnu/lists/Pair;

    .end local v0    # "it":Lgnu/lists/LList;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    .restart local v0    # "it":Lgnu/lists/LList;
    goto :goto_0

    .line 697
    :cond_0
    return-object p0
.end method

.method public static writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    .local p0, "featuresToSave":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    const/4 v2, 0x0

    .line 651
    .local v2, "out":Ljava/io/PrintStream;
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    .end local v2    # "out":Ljava/io/PrintStream;
    .local v3, "out":Ljava/io/PrintStream;
    :try_start_1
    new-instance v4, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;-><init>(Ljava/io/PrintStream;Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;)V

    .line 653
    .local v4, "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    const-string v5, "{\"type\": \"FeatureCollection\", \"features\":["

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 655
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 656
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 658
    .local v0, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 661
    .restart local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(C)V

    .line 662
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 667
    .end local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    .end local v4    # "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/PrintStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :goto_1
    const-string v6, "GeoJSONUtil"

    invoke-static {v6, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 668
    throw v5

    .line 665
    .end local v2    # "out":Ljava/io/PrintStream;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    .restart local v3    # "out":Ljava/io/PrintStream;
    .restart local v4    # "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    :cond_0
    :try_start_2
    const-string v5, "]}"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    const-string v5, "GeoJSONUtil"

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 669
    return-void

    .line 667
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    .end local v3    # "out":Ljava/io/PrintStream;
    .end local v4    # "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method
