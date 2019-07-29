.class public interface abstract Lcom/firebase/client/collection/LLRBNode;
.super Ljava/lang/Object;
.source "LLRBNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/collection/LLRBNode$Color;,
        Lcom/firebase/client/collection/LLRBNode$NodeVisitor;,
        Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode$Color;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract count()I
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getLeft()Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getMax()Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getMin()Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getRight()Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isRed()Z
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method

.method public abstract shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor",
            "<TK;TV;>;)Z"
        }
    .end annotation
.end method
