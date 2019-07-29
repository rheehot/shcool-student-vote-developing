.class final Lcom/firebase/client/snapshot/ChildrenNode$1;
.super Ljava/lang/Object;
.source "ChildrenNode.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/snapshot/ChildrenNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/firebase/client/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;)I
    .locals 1
    .param p1, "o1"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "o2"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 20
    invoke-virtual {p1, p2}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/firebase/client/snapshot/ChildKey;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$1;->compare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    return v0
.end method
