.class public abstract Lcom/firebase/client/collection/LLRBNode$NodeVisitor;
.super Ljava/lang/Object;
.source "LLRBNode.java"

# interfaces
.implements Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/LLRBNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NodeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/firebase/client/collection/LLRBNode$NodeVisitor;, "Lcom/firebase/client/collection/LLRBNode$NodeVisitor<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/firebase/client/collection/LLRBNode$NodeVisitor;, "Lcom/firebase/client/collection/LLRBNode$NodeVisitor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public abstract visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method
