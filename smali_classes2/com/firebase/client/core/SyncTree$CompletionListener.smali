.class public interface abstract Lcom/firebase/client/core/SyncTree$CompletionListener;
.super Ljava/lang/Object;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/SyncTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompletionListener"
.end annotation


# virtual methods
.method public abstract onListenComplete(Lcom/firebase/client/FirebaseError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/FirebaseError;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation
.end method
