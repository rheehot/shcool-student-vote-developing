.class public interface abstract Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;
.super Ljava/lang/Object;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/filter/NodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompleteChildSource"
.end annotation


# virtual methods
.method public abstract getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;
.end method

.method public abstract getCompleteChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
.end method
