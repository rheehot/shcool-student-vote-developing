.class public Lcom/firebase/client/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/Transaction$1;,
        Lcom/firebase/client/Transaction$Handler;,
        Lcom/firebase/client/Transaction$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static abort()Lcom/firebase/client/Transaction$Result;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/firebase/client/Transaction$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/firebase/client/Transaction$Result;-><init>(ZLcom/firebase/client/snapshot/Node;Lcom/firebase/client/Transaction$1;)V

    return-object v0
.end method

.method public static success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 4
    .param p0, "resultData"    # Lcom/firebase/client/MutableData;

    .prologue
    .line 102
    new-instance v0, Lcom/firebase/client/Transaction$Result;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/Transaction$Result;-><init>(ZLcom/firebase/client/snapshot/Node;Lcom/firebase/client/Transaction$1;)V

    return-object v0
.end method
