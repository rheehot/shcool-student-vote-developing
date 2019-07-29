.class public Lcom/firebase/client/core/view/View$OperationResult;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationResult"
.end annotation


# instance fields
.field public final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation
.end field

.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/DataEvent;>;"
    .local p2, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/firebase/client/core/view/View$OperationResult;->events:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/firebase/client/core/view/View$OperationResult;->changes:Ljava/util/List;

    .line 51
    return-void
.end method
