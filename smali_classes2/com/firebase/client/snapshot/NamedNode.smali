.class public Lcom/firebase/client/snapshot/NamedNode;
.super Ljava/lang/Object;
.source "NamedNode.java"


# static fields
.field private static final MAX_NODE:Lcom/firebase/client/snapshot/NamedNode;

.field private static final MIN_NODE:Lcom/firebase/client/snapshot/NamedNode;


# instance fields
.field private final name:Lcom/firebase/client/snapshot/ChildKey;

.field private final node:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMinName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    sput-object v0, Lcom/firebase/client/snapshot/NamedNode;->MIN_NODE:Lcom/firebase/client/snapshot/NamedNode;

    .line 8
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMaxName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    sget-object v2, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    sput-object v0, Lcom/firebase/client/snapshot/NamedNode;->MAX_NODE:Lcom/firebase/client/snapshot/NamedNode;

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/firebase/client/snapshot/NamedNode;->name:Lcom/firebase/client/snapshot/ChildKey;

    .line 20
    iput-object p2, p0, Lcom/firebase/client/snapshot/NamedNode;->node:Lcom/firebase/client/snapshot/Node;

    .line 21
    return-void
.end method

.method public static getMaxNode()Lcom/firebase/client/snapshot/NamedNode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/firebase/client/snapshot/NamedNode;->MAX_NODE:Lcom/firebase/client/snapshot/NamedNode;

    return-object v0
.end method

.method public static getMinNode()Lcom/firebase/client/snapshot/NamedNode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/firebase/client/snapshot/NamedNode;->MIN_NODE:Lcom/firebase/client/snapshot/NamedNode;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 46
    .local v0, "namedNode":Lcom/firebase/client/snapshot/NamedNode;
    iget-object v3, p0, Lcom/firebase/client/snapshot/NamedNode;->name:Lcom/firebase/client/snapshot/ChildKey;

    iget-object v4, v0, Lcom/firebase/client/snapshot/NamedNode;->name:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v3, v4}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/firebase/client/snapshot/NamedNode;->node:Lcom/firebase/client/snapshot/Node;

    iget-object v4, v0, Lcom/firebase/client/snapshot/NamedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/firebase/client/snapshot/NamedNode;->name:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/firebase/client/snapshot/NamedNode;->node:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/firebase/client/snapshot/NamedNode;->name:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->hashCode()I

    move-result v0

    .line 55
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/snapshot/NamedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 56
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NamedNode{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/NamedNode;->name:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/NamedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
