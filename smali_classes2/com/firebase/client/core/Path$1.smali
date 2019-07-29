.class Lcom/firebase/client/core/Path$1;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Path;->iterator()Ljava/util/Iterator;
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
        "Lcom/firebase/client/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lcom/firebase/client/core/Path;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Path;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcom/firebase/client/core/Path$1;->this$0:Lcom/firebase/client/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/firebase/client/core/Path$1;->this$0:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/core/Path;->access$000(Lcom/firebase/client/core/Path;)I

    move-result v0

    iput v0, p0, Lcom/firebase/client/core/Path$1;->offset:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/firebase/client/core/Path$1;->offset:I

    iget-object v1, p0, Lcom/firebase/client/core/Path$1;->this$0:Lcom/firebase/client/core/Path;

    invoke-static {v1}, Lcom/firebase/client/core/Path;->access$100(Lcom/firebase/client/core/Path;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/firebase/client/snapshot/ChildKey;
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/firebase/client/core/Path$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more elements."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/Path$1;->this$0:Lcom/firebase/client/core/Path;

    invoke-static {v1}, Lcom/firebase/client/core/Path;->access$200(Lcom/firebase/client/core/Path;)[Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    iget v2, p0, Lcom/firebase/client/core/Path$1;->offset:I

    aget-object v0, v1, v2

    .line 167
    .local v0, "child":Lcom/firebase/client/snapshot/ChildKey;
    iget v1, p0, Lcom/firebase/client/core/Path$1;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/firebase/client/core/Path$1;->offset:I

    .line 168
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/firebase/client/core/Path$1;->next()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove component from immutable Path!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
