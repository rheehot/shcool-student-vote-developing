.class public final Lcom/google/appinventor/components/runtime/CheckBox;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "CheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Checkbox that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    docUri = "user-interface/listpicker-+-listview-+-spinner-+-checkbox#checkbox"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private italic:Z

.field private outlineColor:I

.field private textColor:I

.field private final view:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 70
    new-instance v0, Landroid/widget/CheckBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    const v0, -0x7d333c

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->OutlineColor(I)V

    .line 77
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 78
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->BackgroundColor(I)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->Enabled(Z)V

    .line 80
    iput v4, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    .line 81
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 83
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->FontSize(F)V

    .line 84
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CheckBox;->Text(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/CheckBox;->TextColor(I)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/CheckBox;->Checked(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->backgroundColor:I

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
    .line 140
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->backgroundColor:I

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public Changed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 99
    const-string v0, "Changed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

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
    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->invalidate()V

    .line 390
    return-void
.end method

.method public Checked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
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
    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 198
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

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
    .line 225
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 227
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

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
    .line 254
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 256
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 279
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 294
    iget v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

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
    .line 311
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 313
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
    .line 404
    if-nez p1, :cond_0

    const-string p1, ""

    .line 405
    :cond_0
    const-string v0, ""

    if-eq p1, v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/CheckBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/CheckBox;->italic:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 410
    :goto_0
    return-void

    .line 408
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
    .line 107
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 115
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public OutlineColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 157
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
    .line 170
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->outlineColor:I

    .line 172
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->outlineColor:I

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/LollipopUtil;->setCheckBoxButtonTintList(Landroid/widget/CheckBox;I)V

    .line 175
    :cond_0
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

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
    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 347
    iget v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->textColor:I

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
    .line 360
    iput p1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->textColor:I

    .line 361
    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CheckBox;->view:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->Changed()V

    .line 416
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 421
    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->GotFocus()V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CheckBox;->LostFocus()V

    goto :goto_0
.end method
