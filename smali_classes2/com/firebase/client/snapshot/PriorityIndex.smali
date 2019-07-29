.class public Lcom/firebase/client/snapshot/PriorityIndex;
.super Lcom/firebase/client/snapshot/Index;
.source "PriorityIndex.java"


# static fields
.field private static final INSTANCE:Lcom/firebase/client/snapshot/PriorityIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/firebase/client/snapshot/PriorityIndex;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/PriorityIndex;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/PriorityIndex;->INSTANCE:Lcom/firebase/client/snapshot/PriorityIndex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/firebase/client/snapshot/Index;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/firebase/client/snapshot/PriorityIndex;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/firebase/client/snapshot/PriorityIndex;->INSTANCE:Lcom/firebase/client/snapshot/PriorityIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I
    .locals 4
    .param p1, "a"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p2, "b"    # Lcom/firebase/client/snapshot/NamedNode;

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 18
    .local v0, "aPrio":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 19
    .local v1, "bPrio":Lcom/firebase/client/snapshot/Node;
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/firebase/client/snapshot/NodeUtilities;->nameAndPriorityCompare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3
    check-cast p1, Lcom/firebase/client/snapshot/NamedNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/firebase/client/snapshot/NamedNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/PriorityIndex;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v0, p1, Lcom/firebase/client/snapshot/PriorityIndex;

    return v0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x302679

    return v0
.end method

.method public isDefinedOn(Lcom/firebase/client/snapshot/Node;)Z
    .locals 1
    .param p1, "a"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 24
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makePost(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 3
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "value"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 29
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    new-instance v1, Lcom/firebase/client/snapshot/StringNode;

    const-string v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lcom/firebase/client/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V

    invoke-direct {v0, p1, v1}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method public maxPost()Lcom/firebase/client/snapshot/NamedNode;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMaxName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    sget-object v1, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/snapshot/PriorityIndex;->makePost(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "PriorityIndex"

    return-object v0
.end method
