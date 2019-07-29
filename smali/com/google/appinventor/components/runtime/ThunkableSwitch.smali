.class public final Lcom/google/appinventor/components/runtime/ThunkableSwitch;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "ThunkableSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Switch with the ability to detect clicks.  Many aspects of its appearance can be changed, as well as whether it is clickable (<code>Enabled</code>), can be changed in the Designer or in the Blocks Editor."
    docUri = "user-interface/switch-+-toggle"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "Switch"


# instance fields
.field private final defaultThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final defaultTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private thumbColor:I

.field private trackColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 54
    const-string v1, "ThunkableSwitch"

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/Switch;

    .line 56
    .local v0, "view2":Landroid/widget/Switch;
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->defaultThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->defaultTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->TextColor(I)V

    .line 61
    const v1, -0x7f7f80

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->TrackColor(I)V

    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User tapped and released the button."
    .end annotation

    .prologue
    .line 79
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public LongClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User held the button down."
    .end annotation

    .prologue
    .line 94
    const-string v0, "LongClick"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ThumbColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the Thumb, the moving piece that slides."
    .end annotation

    .prologue
    .line 106
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->thumbColor:I

    return v0
.end method

.method public ThumbColor(I)V
    .locals 3
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Color of the Thumb, the moving piece that slides."
    .end annotation

    .prologue
    .line 112
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->thumbColor:I

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/Switch;

    .line 114
    .local v0, "switchView":Landroid/widget/Switch;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->thumbColor:I

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->defaultThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public TrackColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the Track that the thumb slides on"
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->trackColor:I

    return v0
.end method

.method public TrackColor(I)V
    .locals 3
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color of the Track that the Thumb slides on."
    .end annotation

    .prologue
    .line 137
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->trackColor:I

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/Switch;

    .line 139
    .local v0, "switchView":Landroid/widget/Switch;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->trackColor:I

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->defaultTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public TurnedOn(Z)V
    .locals 1
    .param p1, "bool"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/Switch;

    .line 170
    .local v0, "view2":Landroid/widget/Switch;
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 171
    return-void
.end method

.method public TurnedOn()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates if the Toggle Button is actively turned on."
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/Switch;

    .line 157
    .local v0, "view2":Landroid/widget/Switch;
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    return v1
.end method

.method public click()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public longClick()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->LongClick()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkableSwitch;->Click()V

    .line 72
    return-void
.end method
