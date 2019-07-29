.class public interface abstract Lcom/firebase/client/core/SyncTree$SyncTreeHash;
.super Ljava/lang/Object;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/SyncTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncTreeHash"
.end annotation


# virtual methods
.method public abstract getCompoundHash()Lcom/firebase/client/core/CompoundHash;
.end method

.method public abstract getSimpleHash()Ljava/lang/String;
.end method

.method public abstract shouldIncludeCompoundHash()Z
.end method
