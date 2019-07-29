.class public Lcom/firebase/client/snapshot/ValueIndex;
.super Lcom/firebase/client/snapshot/Index;
.source "ValueIndex.java"


# static fields
.field private static final INSTANCE:Lcom/firebase/client/snapshot/ValueIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/firebase/client/snapshot/ValueIndex;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/ValueIndex;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/ValueIndex;->INSTANCE:Lcom/firebase/client/snapshot/ValueIndex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/firebase/client/snapshot/Index;-><init>()V

    .line 9
    return-void
.end method

.method public static getInstance()Lcom/firebase/client/snapshot/ValueIndex;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/firebase/client/snapshot/ValueIndex;->INSTANCE:Lcom/firebase/client/snapshot/ValueIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I
    .locals 3
    .param p1, "one"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p2, "two"    # Lcom/firebase/client/snapshot/NamedNode;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p2}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 38
    .local v0, "indexCmp":I
    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    .line 41
    .end local v0    # "indexCmp":I
    :cond_0
    return v0
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
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/ValueIndex;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v0, p1, Lcom/firebase/client/snapshot/ValueIndex;

    return v0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, ".value"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x4

    return v0
.end method

.method public isDefinedOn(Lcom/firebase/client/snapshot/Node;)Z
    .locals 1
    .param p1, "a"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public makePost(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 1
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "value"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 22
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v0, p1, p2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method public maxPost()Lcom/firebase/client/snapshot/NamedNode;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getMaxName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    sget-object v2, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "ValueIndex"

    return-object v0
.end method
