.class public Lcom/firebase/client/snapshot/KeyIndex;
.super Lcom/firebase/client/snapshot/Index;
.source "KeyIndex.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INSTANCE:Lcom/firebase/client/snapshot/KeyIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/firebase/client/snapshot/KeyIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/snapshot/KeyIndex;->$assertionsDisabled:Z

    .line 5
    new-instance v0, Lcom/firebase/client/snapshot/KeyIndex;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/KeyIndex;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/KeyIndex;->INSTANCE:Lcom/firebase/client/snapshot/KeyIndex;

    return-void

    .line 3
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/firebase/client/snapshot/Index;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/firebase/client/snapshot/KeyIndex;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/firebase/client/snapshot/KeyIndex;->INSTANCE:Lcom/firebase/client/snapshot/KeyIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I
    .locals 2
    .param p1, "o1"    # Lcom/firebase/client/snapshot/NamedNode;
    .param p2, "o2"    # Lcom/firebase/client/snapshot/NamedNode;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

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
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/KeyIndex;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v0, p1, Lcom/firebase/client/snapshot/KeyIndex;

    return v0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, ".key"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x25

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
    .locals 3
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "value"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 22
    sget-boolean v0, Lcom/firebase/client/snapshot/KeyIndex;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/firebase/client/snapshot/StringNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-object v1
.end method

.method public maxPost()Lcom/firebase/client/snapshot/NamedNode;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/firebase/client/snapshot/NamedNode;->getMaxNode()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "KeyIndex"

    return-object v0
.end method
