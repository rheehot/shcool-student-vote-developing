.class public final Lcom/google/appinventor/components/runtime/Switch;
.super Lcom/google/appinventor/components/runtime/ToggleBase;
.source "Switch.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Toggle switch that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/ToggleBase",
        "<",
        "Landroid/widget/CompoundButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final switchView:Landroid/support/v7/widget/SwitchCompat;

.field private thumbColorActive:I

.field private thumbColorInactive:I

.field private trackColorActive:I

.field private trackColorInactive:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ToggleBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->activity:Landroid/app/Activity;

    .line 60
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    .line 62
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Switch;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    .line 68
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Switch;->On(Z)V

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Switch;->ThumbColorActive(I)V

    .line 71
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Switch;->ThumbColorInactive(I)V

    .line 72
    const v0, -0xb350b0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Switch;->TrackColorActive(I)V

    .line 73
    const v0, -0x616162

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Switch;->TrackColorInactive(I)V

    .line 74
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Switch;->initToggle()V

    .line 75
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/support/v7/widget/SwitchCompat;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Switch;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    goto :goto_0
.end method

.method private createSwitchColors(II)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1, "active_color"    # I
    .param p2, "inactive_color"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v4, [I

    aput-object v2, v1, v5

    new-array v2, v6, [I

    aput p1, v2, v4

    aput p2, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method public On(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 204
    return-void
.end method

.method public On()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public ThumbColorActive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 96
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorActive:I

    return v0
.end method

.method public ThumbColorActive(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 108
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorActive:I

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorInactive:I

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 113
    :cond_0
    return-void
.end method

.method public ThumbColorInactive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorInactive:I

    return v0
.end method

.method public ThumbColorInactive(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 135
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorInactive:I

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->thumbColorActive:I

    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 140
    :cond_0
    return-void
.end method

.method public TrackColorActive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .prologue
    .line 149
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorActive:I

    return v0
.end method

.method public TrackColorActive(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF4CAF50"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Color of the toggle track when switched on"
        userVisible = true
    .end annotation

    .prologue
    .line 165
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorActive:I

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorInactive:I

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 170
    :cond_0
    return-void
.end method

.method public TrackColorInactive()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = true
    .end annotation

    .prologue
    .line 153
    iget v0, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorInactive:I

    return v0
.end method

.method public TrackColorInactive(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Color of the toggle track when switched off"
        userVisible = true
    .end annotation

    .prologue
    .line 175
    iput p1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorInactive:I

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->switchView:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Switch;->trackColorActive:I

    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/Switch;->createSwitchColors(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Switch;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 180
    :cond_0
    return-void
.end method
