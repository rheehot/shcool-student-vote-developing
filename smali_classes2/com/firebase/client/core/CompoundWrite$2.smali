.class Lcom/firebase/client/core/CompoundWrite$2;
.super Ljava/lang/Object;
.source "CompoundWrite.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
        "<",
        "Lcom/firebase/client/snapshot/Node;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/CompoundWrite;

.field final synthetic val$exportFormat:Z

.field final synthetic val$writes:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;Z)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/firebase/client/core/CompoundWrite$2;->this$0:Lcom/firebase/client/core/CompoundWrite;

    iput-object p2, p0, Lcom/firebase/client/core/CompoundWrite$2;->val$writes:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/firebase/client/core/CompoundWrite$2;->val$exportFormat:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/firebase/client/core/Path;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 234
    check-cast p2, Lcom/firebase/client/snapshot/Node;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Void;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/CompoundWrite$2;->onNodeValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "relativePath"    # Lcom/firebase/client/core/Path;
    .param p2, "value"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "accum"    # Ljava/lang/Void;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite$2;->val$writes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->wireFormat()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/firebase/client/core/CompoundWrite$2;->val$exportFormat:Z

    invoke-interface {p2, v2}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method
