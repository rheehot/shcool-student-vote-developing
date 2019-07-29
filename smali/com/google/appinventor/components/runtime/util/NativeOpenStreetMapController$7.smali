.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polygon$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 647
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 648
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 650
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    return-void
.end method

.method public onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 30
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    if-eqz v5, :cond_2

    .line 655
    const-wide/16 v18, 0x0

    .local v18, "latitude":D
    const-wide/16 v22, 0x0

    .line 656
    .local v22, "longitude":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 658
    .local v4, "count":I
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/osmdroid/util/GeoPoint;

    .line 659
    .local v24, "p":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual/range {v24 .. v24}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v26

    add-double v18, v18, v26

    .line 660
    invoke-virtual/range {v24 .. v24}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v26

    add-double v22, v22, v26

    .line 661
    goto :goto_0

    .line 662
    .end local v24    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    if-lez v4, :cond_1

    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    int-to-double v0, v4

    move-wide/from16 v26, v0

    div-double v26, v18, v26

    int-to-double v0, v4

    move-wide/from16 v28, v0

    div-double v28, v22, v28

    move-wide/from16 v0, v26

    move-wide/from16 v2, v28

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    .line 684
    .end local v4    # "count":I
    .end local v18    # "latitude":D
    .end local v22    # "longitude":D
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 685
    .local v15, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_2

    .line 665
    .end local v15    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    .restart local v4    # "count":I
    .restart local v18    # "latitude":D
    .restart local v22    # "longitude":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v28

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    goto :goto_1

    .line 667
    .end local v4    # "count":I
    .end local v18    # "latitude":D
    .end local v22    # "longitude":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    if-eqz v5, :cond_4

    .line 668
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .local v6, "north":D
    const-wide v12, -0x3f99800000000000L    # -180.0

    .local v12, "east":D
    const-wide v8, 0x4066800000000000L    # 180.0

    .local v8, "west":D
    const-wide v10, 0x4056800000000000L    # 90.0

    .line 669
    .local v10, "south":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/osmdroid/util/GeoPoint;

    .line 670
    .restart local v24    # "p":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual/range {v24 .. v24}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v16

    .line 671
    .local v16, "lat":D
    invoke-virtual/range {v24 .. v24}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    .line 672
    .local v20, "lng":D
    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 673
    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 674
    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 675
    move-wide/from16 v0, v20

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 676
    goto :goto_3

    .line 677
    .end local v16    # "lat":D
    .end local v20    # "lng":D
    .end local v24    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    invoke-interface/range {v5 .. v13}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->updateBounds(DDDD)V

    goto/16 :goto_1

    .line 679
    .end local v6    # "north":D
    .end local v8    # "west":D
    .end local v10    # "south":D
    .end local v12    # "east":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updatePoints(Ljava/util/List;)V

    .line 680
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v14, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getHoles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 682
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updateHolePoints(Ljava/util/List;)V

    goto/16 :goto_1

    .line 687
    .end local v14    # "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    :cond_5
    return-void
.end method

.method public onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 640
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 641
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 643
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    return-void
.end method
