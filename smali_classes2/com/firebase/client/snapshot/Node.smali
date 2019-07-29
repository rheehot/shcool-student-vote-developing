.class public interface abstract Lcom/firebase/client/snapshot/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/snapshot/Node$HashVersion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/firebase/client/snapshot/Node;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/firebase/client/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/firebase/client/snapshot/Node$1;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/Node$1;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    return-void
.end method


# virtual methods
.method public abstract getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getHash()Ljava/lang/String;
.end method

.method public abstract getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
.end method

.method public abstract getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract getPredecessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
.end method

.method public abstract getPriority()Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract getSuccessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract getValue(Z)Ljava/lang/Object;
.end method

.method public abstract hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isLeafNode()Z
.end method

.method public abstract reverseIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
.end method
