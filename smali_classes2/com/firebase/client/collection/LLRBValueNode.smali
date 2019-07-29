.class public abstract Lcom/firebase/client/collection/LLRBValueNode;
.super Ljava/lang/Object;
.source "LLRBValueNode.java"

# interfaces
.implements Lcom/firebase/client/collection/LLRBNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/LLRBNode",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private left:Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final right:Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
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
    .line 21
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "left":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .local p4, "right":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    .line 24
    if-nez p3, :cond_0

    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p3

    .end local p3    # "left":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_0
    iput-object p3, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    .line 25
    if-nez p4, :cond_1

    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p4

    .end local p4    # "right":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_1
    iput-object p4, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    .line 26
    return-void
.end method

.method private colorFlip()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    iget-object v2, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-static {v2}, Lcom/firebase/client/collection/LLRBValueNode;->oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v6

    .line 235
    .local v6, "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    iget-object v2, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-static {v2}, Lcom/firebase/client/collection/LLRBValueNode;->oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v5

    .line 237
    .local v5, "newRight":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    invoke-static {p0}, Lcom/firebase/client/collection/LLRBValueNode;->oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v3

    move-object v0, p0

    move-object v2, v1

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    return-object v0
.end method

.method private fixUp()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    move-object v0, p0

    .line 211
    .local v0, "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 214
    :cond_0
    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v1, v1, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 217
    :cond_1
    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 220
    :cond_2
    return-object v0
.end method

.method private moveRedLeft()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 192
    .local v0, "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {v1}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 194
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 195
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 197
    :cond_0
    return-object v0
.end method

.method private moveRedRight()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 202
    .local v0, "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 204
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method

.method private static oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;
    .locals 1
    .param p0, "node"    # Lcom/firebase/client/collection/LLRBNode;

    .prologue
    .line 13
    invoke-interface {p0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    goto :goto_0
.end method

.method private removeMin()Lcom/firebase/client/collection/LLRBNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 177
    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 180
    :cond_0
    move-object v0, p0

    .line 181
    .local v0, "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->moveRedLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 185
    :cond_1
    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {v1}, Lcom/firebase/client/collection/LLRBValueNode;->removeMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 186
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->fixUp()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v1

    goto :goto_0
.end method

.method private rotateLeft()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    const/4 v1, 0x0

    .line 224
    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v5, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v4

    .line 225
    .local v4, "newLeft":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBValueNode;->getColor()Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v3

    move-object v2, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    return-object v0
.end method

.method private rotateRight()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    const/4 v1, 0x0

    .line 229
    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v4, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    move-object v0, p0

    move-object v2, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v5

    .line 230
    .local v5, "newRight":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBValueNode;->getColor()Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/firebase/client/collection/LLRBNode$Color;
    .param p4, "x3"    # Lcom/firebase/client/collection/LLRBNode;
    .param p5, "x4"    # Lcom/firebase/client/collection/LLRBNode;

    .prologue
    .line 10
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    return-object v0
.end method

.method public copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;
    .locals 5
    .param p3, "color"    # Lcom/firebase/client/collection/LLRBNode$Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode$Color;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "left":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .local p5, "right":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    .line 55
    .local v0, "newKey":Ljava/lang/Object;, "TK;"
    :goto_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    .line 56
    .local v3, "newValue":Ljava/lang/Object;, "TV;"
    :goto_1
    if-nez p4, :cond_2

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    .line 57
    .local v1, "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :goto_2
    if-nez p5, :cond_3

    iget-object v2, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    .line 58
    .local v2, "newRight":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :goto_3
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    if-ne p3, v4, :cond_4

    .line 59
    new-instance v4, Lcom/firebase/client/collection/LLRBRedValueNode;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/firebase/client/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 61
    :goto_4
    return-object v4

    .end local v0    # "newKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .end local v2    # "newRight":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .end local v3    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v0, p1

    .line 54
    goto :goto_0

    .restart local v0    # "newKey":Ljava/lang/Object;, "TK;"
    :cond_1
    move-object v3, p2

    .line 55
    goto :goto_1

    .restart local v3    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_2
    move-object v1, p4

    .line 56
    goto :goto_2

    .restart local v1    # "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_3
    move-object v2, p5

    .line 57
    goto :goto_3

    .line 61
    .restart local v2    # "newRight":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_4
    new-instance v4, Lcom/firebase/client/collection/LLRBBlackValueNode;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/firebase/client/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    goto :goto_4
.end method

.method protected abstract copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;
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
.end method

.method public count()I
    .locals 2

    .prologue
    .line 141
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->count()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->count()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected abstract getColor()Lcom/firebase/client/collection/LLRBNode$Color;
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getLeft()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    return-object v0
.end method

.method public getMax()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    .end local p0    # "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getMax()Lcom/firebase/client/collection/LLRBNode;

    move-result-object p0

    goto :goto_0
.end method

.method public getMin()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    .end local p0    # "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object p0

    goto :goto_0
.end method

.method public getRight()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "visitor":Lcom/firebase/client/collection/LLRBNode$NodeVisitor;, "Lcom/firebase/client/collection/LLRBNode$NodeVisitor<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    .line 147
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    .line 149
    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    const/4 v5, 0x0

    .line 67
    iget-object v4, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    invoke-interface {p3, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 69
    .local v0, "cmp":I
    if-gez v0, :cond_0

    .line 71
    iget-object v4, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v4, p1, p2, p3}, Lcom/firebase/client/collection/LLRBNode;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    .line 72
    .local v2, "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    invoke-virtual {p0, v5, v5, v2, v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v1

    .line 81
    .end local v2    # "newLeft":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    .local v1, "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :goto_0
    invoke-direct {v1}, Lcom/firebase/client/collection/LLRBValueNode;->fixUp()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v4

    return-object v4

    .line 73
    .end local v1    # "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0, p1, p2, v5, v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v1

    .restart local v1    # "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    goto :goto_0

    .line 78
    .end local v1    # "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    :cond_1
    iget-object v4, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v4, p1, p2, p3}, Lcom/firebase/client/collection/LLRBNode;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v3

    .line 79
    .local v3, "newRight":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    invoke-virtual {p0, v5, v5, v5, v3}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v1

    .restart local v1    # "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    const/4 v5, 0x0

    .line 86
    move-object v0, p0

    .line 88
    .local v0, "n":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    invoke-interface {p2, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 89
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v2, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v2, v2, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->moveRedLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 92
    :cond_0
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2, p1, p2}, Lcom/firebase/client/collection/LLRBNode;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    invoke-virtual {v0, v5, v5, v2, v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 113
    :goto_0
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->fixUp()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v2

    :goto_1
    return-object v2

    .line 94
    :cond_1
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 98
    :cond_2
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    check-cast v2, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v2, v2, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->moveRedRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 102
    :cond_3
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    invoke-interface {p2, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_5

    .line 103
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v2

    goto :goto_1

    .line 106
    :cond_4
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2}, Lcom/firebase/client/collection/LLRBNode;->getMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    .line 107
    .local v1, "smallest":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    check-cast v2, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {v2}, Lcom/firebase/client/collection/LLRBValueNode;->removeMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 111
    .end local v1    # "smallest":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    :cond_5
    iget-object v2, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v2, p1, p2}, Lcom/firebase/client/collection/LLRBNode;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    invoke-virtual {v0, v5, v5, v5, v2}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    goto :goto_0
.end method

.method setLeft(Lcom/firebase/client/collection/LLRBNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "left":Lcom/firebase/client/collection/LLRBNode;, "Lcom/firebase/client/collection/LLRBNode<TK;TV;>;"
    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    .line 174
    return-void
.end method

.method public shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "visitor":Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;, "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;->shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/firebase/client/collection/LLRBValueNode;, "Lcom/firebase/client/collection/LLRBValueNode<TK;TV;>;"
    .local p1, "visitor":Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;, "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor<TK;TV;>;"
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;->shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
