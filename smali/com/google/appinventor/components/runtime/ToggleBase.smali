.class public abstract Lcom/google/appinventor/components/runtime/ToggleBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ToggleBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Checkbox that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/CompoundButton;",
        ">",
        "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private italic:Z

.field private textColor:I

.field protected view:Landroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 63
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 64
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->backgroundColor:I

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public Changed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "Changed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 163
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 192
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 221
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 244
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 278
    return-void
.end method

.method public FontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    if-nez p1, :cond_0

    const-string p1, ""

    .line 346
    :cond_0
    const-string v0, ""

    if-eq p1, v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_1
    const-string v0, "Label"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->textColor:I

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected initToggle()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 73
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->BackgroundColor(I)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Enabled(Z)V

    .line 75
    iput v4, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 77
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->FontSize(F)V

    .line 78
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Text(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ToggleBase;->TextColor(I)V

    .line 81
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 356
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Changed()V

    .line 357
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 362
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    if-eqz p2, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->GotFocus()V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->LostFocus()V

    goto :goto_0
.end method
