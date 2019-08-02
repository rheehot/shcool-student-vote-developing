.class Lcom/google/appinventor/components/runtime/GoogleMap$3;
.super Ljava/lang/Object;
.source "GoogleMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;->prepareFragmentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "dispatchEventNow":Z
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$300(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 758
    const/4 v0, 0x1

    .line 760
    :cond_0
    if-eqz v0, :cond_1

    .line 763
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$200(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 764
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 766
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$400(Lcom/google/appinventor/components/runtime/GoogleMap;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    .line 767
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$300(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$500(Lcom/google/appinventor/components/runtime/GoogleMap;)Ljava/lang/String;

    move-result-object v4

    .line 766
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 768
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 770
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$600(Lcom/google/appinventor/components/runtime/GoogleMap;)V

    .line 775
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$3;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$700(Lcom/google/appinventor/components/runtime/GoogleMap;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
