.class public abstract Lcom/firebase/client/GenericTypeIndicator;
.super Lcom/shaded/fasterxml/jackson/core/type/TypeReference;
.source "GenericTypeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shaded/fasterxml/jackson/core/type/TypeReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Lcom/firebase/client/GenericTypeIndicator;, "Lcom/firebase/client/GenericTypeIndicator<TT;>;"
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
