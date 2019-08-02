.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final out:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    .line 420
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/PrintStream;Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/PrintStream;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 4
    .param p0, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 644
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeColorProperty(Ljava/lang/String;I)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 449
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "\":\"&H"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 452
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "unpadded":Ljava/lang/String;
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 453
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"LineString\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 512
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 513
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 7
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 517
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "\"geometry\":{\"type\":\"MultiPolygon\",\"coordinates\":["

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 518
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 519
    .local v3, "pointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 520
    .local v1, "holePointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    const/4 v0, 0x1

    .line 521
    .local v0, "first":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 522
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 523
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 524
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 527
    .local v2, "holePoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    goto :goto_1

    .line 531
    .end local v2    # "holePoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "]}"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V
    .locals 4
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Point\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 465
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private writePoints(Ljava/util/List;)V
    .locals 6
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
    .line 494
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v0, 0x1

    .line 495
    .local v0, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 496
    .local v1, "p":Lorg/osmdroid/util/GeoPoint;
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(C)V

    .line 497
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 499
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 501
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x0

    .line 507
    goto :goto_0

    .line 508
    .end local v1    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_2
    return-void
.end method

.method private writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 550
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 551
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    goto :goto_0
.end method

.method private writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 4
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    const/4 v3, 0x0

    .line 538
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 539
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 540
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 542
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    goto :goto_0

    .line 546
    .end local v0    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .prologue
    .line 490
    const-string v0, "fill"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 491
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    .prologue
    .line 485
    const-string v0, "stroke"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 486
    const-string v0, "stroke-width"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 477
    const-string v0, "description"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "draggable"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    const-string v0, "infobox"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->EnableInfobox()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const-string v0, "title"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "visible"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method private writePropertiesHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "runtimeType"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",\"properties\":{\"$Type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 430
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "GeoJSONUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize the value of \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" as JSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 441
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"type\":\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 426
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 606
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 608
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 609
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 611
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 612
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 579
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 581
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 584
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 560
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 562
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 567
    const-string v0, "anchorHorizontal"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    const-string v0, "anchorVertical"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    const-string v0, "height"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    const-string v0, "image"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v0, "width"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 592
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 594
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 595
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 597
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 598
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 4
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 620
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 628
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 630
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 631
    const-string v0, "NorthLatitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    const-string v0, "WestLongitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    const-string v0, "SouthLatitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    const-string v0, "EastLongitude"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 636
    const/4 v0, 0x0

    return-object v0
.end method
