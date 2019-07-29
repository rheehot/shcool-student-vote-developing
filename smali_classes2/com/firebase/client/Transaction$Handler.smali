.class public interface abstract Lcom/firebase/client/Transaction$Handler;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract doTransaction(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
.end method

.method public abstract onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V
.end method
