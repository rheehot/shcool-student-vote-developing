.class Lcom/google/appinventor/components/runtime/FirebaseDB$6;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->GetTagList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 756
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 6
    .param p1, "data"    # Lcom/firebase/client/DataSnapshot;

    .prologue
    .line 727
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 728
    .local v3, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 729
    .local v2, "listValue":Ljava/util/ArrayList;
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 730
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "listValue":Ljava/util/ArrayList;
    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    .restart local v2    # "listValue":Ljava/util/ArrayList;
    :cond_0
    if-eqz v2, :cond_1

    .line 744
    move-object v0, v2

    .line 745
    .local v0, "finalListValue":Ljava/util/List;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;

    invoke-direct {v5, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$6;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    .end local v0    # "finalListValue":Ljava/util/List;
    :cond_1
    return-void

    .line 731
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 736
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "listValue":Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .restart local v2    # "listValue":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    move-object v4, v3

    .line 738
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 739
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
