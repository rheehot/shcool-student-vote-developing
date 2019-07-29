.class final Lcom/firebase/client/snapshot/Node$1;
.super Lcom/firebase/client/snapshot/ChildrenNode;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/Node;)I
    .locals 1
    .param p1, "other"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 59
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lcom/firebase/client/snapshot/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/Node$1;->compareTo(Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 64
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/Node$1;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getPriority()Lcom/firebase/client/snapshot/Node;
    .locals 0

    .prologue
    .line 69
    return-object p0
.end method

.method public hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "<Max Node>"

    return-object v0
.end method
