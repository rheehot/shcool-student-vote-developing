.class public final Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final _next:Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field final _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->_value:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->_next:Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;

    .line 19
    return-void
.end method

.method public static contains(Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode",
            "<TST;>;TST;)Z"
        }
    .end annotation

    .prologue
    .line 37
    :goto_0
    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 43
    :goto_1
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object p0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public next()Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->_next:Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/util/LinkedNode;->_value:Ljava/lang/Object;

    return-object v0
.end method
