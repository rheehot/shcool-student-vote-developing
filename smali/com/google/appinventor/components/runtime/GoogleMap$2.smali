.class Lcom/google/appinventor/components/runtime/GoogleMap$2;
.super Ljava/lang/Object;
.source "GoogleMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;->FinishedDraggingCircle(IDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

.field final synthetic val$centerLat:D

.field final synthetic val$centerLng:D

.field final synthetic val$id:I

.field final synthetic val$radius:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDDD)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    iput p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$id:I

    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$centerLat:D

    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$centerLng:D

    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$radius:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    const-string v1, "FinishedDraggingCircle"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$id:I

    .line 614
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$centerLat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$centerLng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$2;->val$radius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    .line 613
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 615
    return-void
.end method
