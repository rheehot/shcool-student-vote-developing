.class Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;
.super Ljava/lang/Object;
.source "RBTreeSortedMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/RBTreeSortedMap$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Base1_2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final length:I

.field private value:J


# direct methods
.method public constructor <init>(I)V
    .locals 10
    .param p1, "size"    # I

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    add-int/lit8 v2, p1, 0x1

    .line 205
    .local v2, "toCalc":I
    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->length:I

    .line 206
    iget v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->length:I

    int-to-double v4, v3

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x1

    sub-long v0, v4, v6

    .line 207
    .local v0, "mask":J
    int-to-long v4, v2

    and-long/2addr v4, v0

    iput-wide v4, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->value:J

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;)I
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;

    .prologue
    .line 197
    iget v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->length:I

    return v0
.end method

.method static synthetic access$100(Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;)J
    .locals 2
    .param p0, "x0"    # Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->value:J

    return-wide v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2$1;-><init>(Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;)V

    return-object v0
.end method
