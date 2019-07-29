.class Lcom/firebase/client/core/view/EventGenerator$1;
.super Ljava/lang/Object;
.source "EventGenerator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/firebase/client/core/view/Change;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/view/EventGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/firebase/client/core/view/EventGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/EventGenerator$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/core/view/EventGenerator;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/firebase/client/core/view/EventGenerator$1;->this$0:Lcom/firebase/client/core/view/EventGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/Change;)I
    .locals 4
    .param p1, "a"    # Lcom/firebase/client/core/view/Change;
    .param p2, "b"    # Lcom/firebase/client/core/view/Change;

    .prologue
    .line 74
    sget-boolean v2, Lcom/firebase/client/core/view/EventGenerator$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 75
    :cond_1
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 76
    .local v0, "namedNodeA":Lcom/firebase/client/snapshot/NamedNode;
    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-virtual {p2}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p2}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 77
    .local v1, "namedNodeB":Lcom/firebase/client/snapshot/NamedNode;
    iget-object v2, p0, Lcom/firebase/client/core/view/EventGenerator$1;->this$0:Lcom/firebase/client/core/view/EventGenerator;

    invoke-static {v2}, Lcom/firebase/client/core/view/EventGenerator;->access$000(Lcom/firebase/client/core/view/EventGenerator;)Lcom/firebase/client/snapshot/Index;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Lcom/firebase/client/core/view/Change;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/firebase/client/core/view/Change;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/core/view/EventGenerator$1;->compare(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/Change;)I

    move-result v0

    return v0
.end method
