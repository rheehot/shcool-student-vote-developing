.class public Lcom/google/appinventor/components/runtime/FrameLayout;
.super Ljava/lang/Object;
.source "FrameLayout.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# instance fields
.field private final layoutManager:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FrameLayout;->layoutManager:Landroid/widget/FrameLayout;

    .line 31
    return-void
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 43
    const-string v0, "FrameLayout"

    const-string v1, "adding component.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FrameLayout;->layoutManager:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FrameLayout;->layoutManager:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 54
    .local v0, "childcount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 55
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FrameLayout;->layoutManager:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 56
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 35
    const-string v0, "FrameLayout"

    const-string v1, "some one just get my framelayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FrameLayout;->layoutManager:Landroid/widget/FrameLayout;

    return-object v0
.end method
