.class public final Lcom/google/appinventor/components/runtime/CheckBox;
.super Lcom/google/appinventor/components/runtime/ToggleBase;
.source "CheckBox.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Checkbox that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    docUri = "user-interface/listpicker-+-listview-+-spinner-+-checkbox#checkbox"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/ToggleBase",
        "<",
        "Landroid/widget/CheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field private outlineColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 45
    new-instance v0, Landroid/widget/CheckBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    .line 46
    const v0, -0x7d333c

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->OutlineColor(I)V

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->Checked(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->initToggle()V

    .line 50
    return-void
.end method


# virtual methods
.method public Checked(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->invalidate()V

    .line 103
    return-void
.end method

.method public Checked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public OutlineColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->outlineColor:I

    return v0
.end method

.method public OutlineColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF82CCC4"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 74
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->outlineColor:I

    .line 76
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->outlineColor:I

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/LollipopUtil;->setCheckBoxButtonTintList(Landroid/widget/CheckBox;I)V

    .line 79
    :cond_0
    return-void
.end method
