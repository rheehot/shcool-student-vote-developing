.class public Lcom/firebase/client/collection/LLRBRedValueNode;
.super Lcom/firebase/client/collection/LLRBValueNode;
.source "LLRBRedValueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/client/collection/LLRBValueNode",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/firebase/client/collection/LLRBRedValueNode;, "Lcom/firebase/client/collection/LLRBRedValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 9
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/firebase/client/collection/LLRBRedValueNode;, "Lcom/firebase/client/collection/LLRBRedValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "left":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .local p4, "right":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/firebase/client/collection/LLRBRedValueNode;, "Lcom/firebase/client/collection/LLRBRedValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "left":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .local p4, "right":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "newKey":Ljava/lang/Object;, "TK;"
    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "newValue":Ljava/lang/Object;, "TV;"
    :goto_1
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    .line 30
    .local v1, "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :goto_2
    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    .line 31
    .local v2, "newRight":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :goto_3
    new-instance v4, Lcom/firebase/client/collection/LLRBRedValueNode;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/firebase/client/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    return-object v4

    .end local v0    # "newKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .end local v2    # "newRight":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v0, p1

    .line 27
    goto :goto_0

    .restart local v0    # "newKey":Ljava/lang/Object;, "TK;"
    :cond_1
    move-object v3, p2

    .line 28
    goto :goto_1

    .restart local v3    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_2
    move-object v1, p3

    .line 29
    goto :goto_2

    .restart local v1    # "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_3
    move-object v2, p4

    .line 30
    goto :goto_3
.end method

.method protected getColor()Lcom/firebase/client/collection/LLRBNode$Color;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/firebase/client/collection/LLRBRedValueNode;, "Lcom/firebase/client/collection/LLRBRedValueNode<TK;TV;>;"
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    return-object v0
.end method

.method public isRed()Z
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/firebase/client/collection/LLRBRedValueNode;, "Lcom/firebase/client/collection/LLRBRedValueNode<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method
