.class final Lcom/firebase/client/core/view/ViewProcessor$1;
.super Ljava/lang/Object;
.source "ViewProcessor.java"

# interfaces
.implements Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/ViewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;
    .locals 1
    .param p1, "index"    # Lcom/firebase/client/snapshot/Index;
    .param p2, "child"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p3, "reverse"    # Z

    .prologue
    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method
