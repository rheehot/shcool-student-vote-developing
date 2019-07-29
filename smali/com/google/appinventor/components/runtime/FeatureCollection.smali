.class public Lcom/google/appinventor/components/runtime/FeatureCollection;
.super Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.source "FeatureCollection.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A FeatureColletion contains one or more map features as a group. Any events fired on a feature in the collection will also trigger the corresponding event on the collection object. FeatureCollections can be loaded from external resources as a means of populating a Map with content."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private map:Lcom/google/appinventor/components/runtime/Map;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public FeaturesFromGeoJSON(Ljava/lang/String;)V
    .locals 7
    .param p1, "geojson"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Loads a collection of features from the given string. If the string is not valid GeoJSON, the ErrorLoadingFeatureCollection error will be run with url = <string>."
    .end annotation

    .prologue
    .line 48
    :try_start_0
    const-string v1, "<string>"

    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/FeatureCollection;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FeatureCollection;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "FeaturesFromGeoJSON"

    const/16 v3, 0xd53

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 50
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 61
    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the source URL used to populate the feature collection. If the feature collection was not loaded from a URL, this will be the empty string."
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "geojson_type"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public getMap()Lcom/google/appinventor/components/runtime/Map;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->map:Lcom/google/appinventor/components/runtime/Map;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method
