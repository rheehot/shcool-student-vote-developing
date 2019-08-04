.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
.super Lorg/osmdroid/views/overlay/Polygon;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPolygon"
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

.field private dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

.field private draggable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1279
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1420
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1421
    const/4 v1, 0x1

    .line 1424
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "b"    # Z

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1296
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_0

    .line 1298
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "start"    # Landroid/view/MotionEvent;
    .param p2, "end"    # Landroid/view/MotionEvent;
    .param p3, "view"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1459
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 1461
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "start"    # Landroid/view/MotionEvent;
    .param p3, "view"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1452
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 1454
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1430
    .local v0, "touched":Z
    if-eqz v0, :cond_1

    .line 1431
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDraggable:Z

    if-eqz v1, :cond_2

    .line 1432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    .line 1433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->closeInfoWindow()V

    .line 1434
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 1435
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1438
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1445
    :cond_1
    :goto_0
    return v0

    .line 1439
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-eqz v1, :cond_1

    .line 1440
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1441
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1441
    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 1440
    invoke-interface {v2, p0, p2, v1}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1410
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1411
    const/4 v1, 0x1

    .line 1414
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1465
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDraggable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    if-eqz v2, :cond_2

    .line 1466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1467
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    .line 1468
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1469
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 1470
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1481
    :cond_0
    :goto_0
    return v0

    .line 1473
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1474
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1475
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 1476
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polygon;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1481
    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 3
    .param p1, "draggable"    # Z

    .prologue
    .line 1342
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1343
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->draggable:Z

    .line 1344
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1345
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    goto :goto_0

    .line 1347
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 3
    .param p1, "fillColor"    # I

    .prologue
    .line 1385
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1386
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1387
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    goto :goto_0

    .line 1389
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public setMultiHoles(Ljava/util/List;)V
    .locals 5
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
    .line 1325
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1326
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1327
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_0

    .line 1329
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1330
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Holes and points are not of the same arity."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1332
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1333
    .local v2, "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1334
    .local v1, "holeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_1

    .line 1338
    .end local v1    # "holeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    .end local v2    # "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    :cond_3
    return-void
.end method

.method public setMultiPoints(Ljava/util/List;)V
    .locals 5
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
    .line 1301
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1302
    .local v2, "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1303
    .local v1, "pointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    goto :goto_0

    .line 1306
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1307
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1308
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1310
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1311
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1312
    .local v0, "p":Lorg/osmdroid/views/overlay/Polygon;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1313
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getStrokeColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1314
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getFillColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1315
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1316
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1317
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->draggable:Z

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1318
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1319
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1320
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1322
    .end local v0    # "p":Lorg/osmdroid/views/overlay/Polygon;
    :cond_2
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .prologue
    .line 1351
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1352
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1353
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1354
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    goto :goto_0

    .line 1356
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .prologue
    .line 1360
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1361
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1362
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1363
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    goto :goto_0

    .line 1365
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    .line 1401
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1403
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    .line 1405
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 3
    .param p1, "strokeColor"    # I

    .prologue
    .line 1377
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1378
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1379
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    goto :goto_0

    .line 1381
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 3
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1369
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1370
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1371
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    goto :goto_0

    .line 1373
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1393
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1394
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 1395
    .local v0, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1397
    .end local v0    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    return-void
.end method

.method public showInfoWindow()V
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow()V

    .line 1291
    :cond_0
    return-void
.end method
