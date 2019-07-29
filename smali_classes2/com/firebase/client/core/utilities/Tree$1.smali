.class Lcom/firebase/client/core/utilities/Tree$1;
.super Ljava/lang/Object;
.source "Tree.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeVisitor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/utilities/Tree;

.field final synthetic val$childrenFirst:Z

.field final synthetic val$visitor:Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/Tree$TreeVisitor;Z)V
    .locals 0

    .prologue
    .line 111
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree$1;, "Lcom/firebase/client/core/utilities/Tree.1;"
    iput-object p1, p0, Lcom/firebase/client/core/utilities/Tree$1;->this$0:Lcom/firebase/client/core/utilities/Tree;

    iput-object p2, p0, Lcom/firebase/client/core/utilities/Tree$1;->val$visitor:Lcom/firebase/client/core/utilities/Tree$TreeVisitor;

    iput-boolean p3, p0, Lcom/firebase/client/core/utilities/Tree$1;->val$childrenFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/firebase/client/core/utilities/Tree$1;, "Lcom/firebase/client/core/utilities/Tree.1;"
    .local p1, "tree":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree$1;->val$visitor:Lcom/firebase/client/core/utilities/Tree$TreeVisitor;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/firebase/client/core/utilities/Tree$1;->val$childrenFirst:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V

    .line 115
    return-void
.end method
