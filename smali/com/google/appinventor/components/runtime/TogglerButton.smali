.class public final Lcom/google/appinventor/components/runtime/TogglerButton;
.super Lcom/google/appinventor/components/runtime/ButtonBaseNoText;
.source "TogglerButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Toggle Button with the ability to detect clicks.  Many aspects of its appearance can be changed, as well as whether it is clickable (<code>Enabled</code>), can be changed in the Designer or in the Blocks Editor."
    docUri = "user-interface/switch-+-toggle"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "TogglerButton"


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 44
    const-string v0, "TogglerButton"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User tapped and released the button."
    .end annotation

    .prologue
    .line 65
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public LongClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User held the button down."
    .end annotation

    .prologue
    .line 80
    const-string v0, "LongClick"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public TextOff()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on Toggle Button when turned off."
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 120
    .local v0, "view2":Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public TextOff(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Off"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 133
    .local v0, "view2":Landroid/widget/ToggleButton;
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->requestLayout()V

    .line 136
    return-void
.end method

.method public TextOn()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on Toggle Button when turned on."
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 93
    .local v0, "view2":Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public TextOn(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "On"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 106
    .local v0, "view2":Landroid/widget/ToggleButton;
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->requestLayout()V

    .line 108
    return-void
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
    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 162
    .local v0, "view2":Landroid/widget/ToggleButton;
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 163
    return-void
.end method

.method public TurnedOn()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If turned on, users can press the Toggle Button."
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TogglerButton;->view:Landroid/widget/Button;

    check-cast v0, Landroid/widget/ToggleButton;

    .line 149
    .local v0, "view2":Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    return v1
.end method

.method public click()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TogglerButton;->Click()V

    .line 58
    return-void
.end method

.method public longClick()Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TogglerButton;->LongClick()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TogglerButton;->Click()V

    .line 54
    return-void
.end method
