.class public Lcom/firebase/client/utilities/tuple/NameAndPriority;
.super Ljava/lang/Object;
.source "NameAndPriority.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Lcom/firebase/client/snapshot/ChildKey;

.field private priority:Lcom/firebase/client/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "name"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "priority"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Lcom/firebase/client/snapshot/ChildKey;

    .line 20
    iput-object p2, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/Node;

    .line 21
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/utilities/tuple/NameAndPriority;)I
    .locals 4
    .param p1, "o"    # Lcom/firebase/client/utilities/tuple/NameAndPriority;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Lcom/firebase/client/snapshot/ChildKey;

    iget-object v1, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/Node;

    iget-object v2, p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Lcom/firebase/client/snapshot/ChildKey;

    iget-object v3, p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-static {v0, v1, v2, v3}, Lcom/firebase/client/snapshot/NodeUtilities;->nameAndPriorityCompare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->compareTo(Lcom/firebase/client/utilities/tuple/NameAndPriority;)I

    move-result v0

    return v0
.end method

.method public getName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getPriority()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method
