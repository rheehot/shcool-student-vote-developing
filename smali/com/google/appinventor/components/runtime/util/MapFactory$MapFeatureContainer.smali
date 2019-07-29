.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
.super Ljava/lang/Object;
.source "MapFactory.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapFeatureContainer"
.end annotation


# virtual methods
.method public abstract FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract Features()Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract Features(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public abstract addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method

.method public abstract getMap()Lcom/google/appinventor/components/runtime/Map;
.end method

.method public abstract removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end method
