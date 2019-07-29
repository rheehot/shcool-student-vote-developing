.class public Lcom/firebase/client/Transaction$Result;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private data:Lcom/firebase/client/snapshot/Node;

.field private success:Z


# direct methods
.method private constructor <init>(ZLcom/firebase/client/snapshot/Node;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "data"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/firebase/client/Transaction$Result;->success:Z

    .line 40
    iput-object p2, p0, Lcom/firebase/client/Transaction$Result;->data:Lcom/firebase/client/snapshot/Node;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(ZLcom/firebase/client/snapshot/Node;Lcom/firebase/client/Transaction$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "x2"    # Lcom/firebase/client/Transaction$1;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/Transaction$Result;-><init>(ZLcom/firebase/client/snapshot/Node;)V

    return-void
.end method


# virtual methods
.method public getNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/firebase/client/Transaction$Result;->data:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/firebase/client/Transaction$Result;->success:Z

    return v0
.end method
