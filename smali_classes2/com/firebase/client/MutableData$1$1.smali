.class Lcom/firebase/client/MutableData$1$1;
.super Ljava/lang/Object;
.source "MutableData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/MutableData$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/firebase/client/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/MutableData$1;


# direct methods
.method constructor <init>(Lcom/firebase/client/MutableData$1;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/firebase/client/MutableData$1$1;->this$1:Lcom/firebase/client/MutableData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/firebase/client/MutableData;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/firebase/client/MutableData$1$1;->next()Lcom/firebase/client/MutableData;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
