.class public Lcom/firebase/client/snapshot/EmptyNode;
.super Lcom/firebase/client/snapshot/ChildrenNode;
.source "EmptyNode.java"

# interfaces
.implements Lcom/firebase/client/snapshot/Node;


# static fields
.field private static final empty:Lcom/firebase/client/snapshot/EmptyNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/firebase/client/snapshot/EmptyNode;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/EmptyNode;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/EmptyNode;->empty:Lcom/firebase/client/snapshot/EmptyNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>()V

    .line 15
    return-void
.end method

.method public static Empty()Lcom/firebase/client/snapshot/EmptyNode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/firebase/client/snapshot/EmptyNode;->empty:Lcom/firebase/client/snapshot/EmptyNode;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/Node;)I
    .locals 1
    .param p1, "o"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 127
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Lcom/firebase/client/snapshot/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/EmptyNode;->compareTo(Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 132
    instance-of v0, p1, Lcom/firebase/client/snapshot/EmptyNode;

    if-eqz v0, :cond_0

    .line 137
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/EmptyNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    check-cast p1, Lcom/firebase/client/snapshot/Node;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 33
    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, ""

    return-object v0
.end method

.method public getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 1
    .param p1, "version"    # Lcom/firebase/client/snapshot/Node$HashVersion;

    .prologue
    .line 112
    const-string v0, ""

    return-object v0
.end method

.method public getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 0
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 38
    return-object p0
.end method

.method public getPredecessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/firebase/client/snapshot/Node;
    .locals 0

    .prologue
    .line 28
    return-object p0
.end method

.method public getSuccessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 1
    .param p1, "useExportFormat"    # Z

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "<Empty Node>"

    return-object v0
.end method

.method public updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 4
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    .end local p2    # "node":Lcom/firebase/client/snapshot/Node;
    :goto_0
    return-object p2

    .line 58
    .restart local p2    # "node":Lcom/firebase/client/snapshot/Node;
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 59
    .local v0, "name":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/EmptyNode;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 60
    .local v1, "newImmediateChild":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/snapshot/EmptyNode;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0
.end method

.method public updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 43
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    .end local p0    # "this":Lcom/firebase/client/snapshot/EmptyNode;
    :cond_0
    :goto_0
    return-object p0

    .line 45
    .restart local p0    # "this":Lcom/firebase/client/snapshot/EmptyNode;
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/EmptyNode;
    .locals 0
    .param p1, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 67
    return-object p0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/EmptyNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    return-object v0
.end method
