.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;
.super Lcom/google/appinventor/components/runtime/MapFeatureBase;
.source "MapFeatureBaseWithFill.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private fillColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V
    .locals 1
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
    .line 24
    .local p2, "distanceComputation":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 20
    const v0, -0xbbcca

    iput v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    .line 25
    const/high16 v0, -0x10000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->FillColor(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public FillColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The paint color used to fill in the map feature."
    .end annotation

    .prologue
    .line 41
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    return v0
.end method

.method public FillColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFF44336"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 33
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 35
    return-void
.end method
