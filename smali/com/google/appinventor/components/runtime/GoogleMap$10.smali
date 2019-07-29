.class Lcom/google/appinventor/components/runtime/GoogleMap$10;
.super Ljava/lang/Object;
.source "GoogleMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;->OnMapLongClick(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

.field final synthetic val$lat:D

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$10;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$10;->val$lat:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$10;->val$lng:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$10;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    const-string v1, "OnMapLongClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$10;->val$lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$10;->val$lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1566
    return-void
.end method
