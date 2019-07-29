.class public abstract Lcom/google/appinventor/components/runtime/ButtonBaseNoText;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ButtonBaseNoText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonBaseNoText"

.field private static final ROUNDED_CORNERS_ARRAY:[F

.field private static final ROUNDED_CORNERS_RADIUS:F = 10.0f

.field private static final SHAPED_DEFAULT_BACKGROUND_COLOR:I = -0x333334

.field private static defaultButtonMinHeight:I

.field private static defaultButtonMinWidth:I


# instance fields
.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected bold:Z

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private fontTypeface:I

.field private imagePath:Ljava/lang/String;

.field protected italic:Z

.field private shape:I

.field private showFeedback:Z

.field private textAlignment:I

.field private textColor:I

.field protected view:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->ROUNDED_CORNERS_ARRAY:[F

    .line 113
    sput v1, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonMinWidth:I

    .line 120
    sput v1, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonMinHeight:I

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 83
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->showFeedback:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    .line 129
    new-instance v0, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 136
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->TextAlignment(I)V

    .line 150
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->BackgroundColor(I)V

    .line 151
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->Image(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->Enabled(Z)V

    .line 153
    iput v4, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    .line 154
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 156
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->FontSize(F)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->TextColor(I)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->Shape(I)V

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "togglerButtonOrSwitch"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 83
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->showFeedback:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    .line 165
    const-string v0, "TogglerButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroid/widget/ToggleButton;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonMinWidth:I

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonMinHeight:I

    .line 177
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->BackgroundColor(I)V

    .line 184
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->Image(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->Enabled(Z)V

    .line 186
    iput v4, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    .line 187
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 189
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->FontSize(F)V

    .line 190
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->TextColor(I)V

    .line 191
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->Shape(I)V

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 193
    return-void

    .line 167
    :cond_0
    const-string v0, "ThunkableSwitch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Landroid/widget/Switch;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component is not allowed to call this constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createRippleState()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const v6, 0x101009e

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 454
    new-array v2, v5, [[I

    new-array v3, v5, [I

    aput v6, v3, v7

    aput-object v3, v2, v7

    .line 455
    .local v2, "states":[[I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultColorStateList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 456
    .local v1, "enabled_color":I
    new-array v0, v5, [I

    const/16 v3, 0x46

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 457
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 456
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v0, v7

    .line 459
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .prologue
    .line 397
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the button\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 413
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    .line 414
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->updateAppearance()V

    .line 415
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
    .line 520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 521
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap check box to cause action."
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

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
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->bold:Z

    .line 549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 550
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, button text is displayed in bold."
    .end annotation

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->bold:Z

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
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->italic:Z

    .line 609
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 610
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, button text is displayed in italics."
    .end annotation

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for button text."
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 635
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for button text."
        userVisible = false
    .end annotation

    .prologue
    .line 651
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

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
    .line 668
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    .line 669
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 670
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
    .line 752
    if-nez p1, :cond_0

    const-string p1, ""

    .line 753
    :cond_0
    const-string v0, ""

    if-eq p1, v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->italic:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 758
    :goto_0
    return-void

    .line 756
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
        description = "Indicates the cursor moved over the button so it is now possible to click it."
    .end annotation

    .prologue
    .line 253
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the button\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 385
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 367
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    .line 370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 373
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->updateAppearance()V

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "ButtonBaseNoText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the button so it is now no longer possible to click it."
    .end annotation

    .prologue
    .line 263
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public Shape()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 312
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->shape:I

    return v0
.end method

.method public Shape(I)V
    .locals 0
    .param p1, "shape"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the button\'s shape (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .prologue
    .line 331
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->shape:I

    .line 332
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->updateAppearance()V

    .line 333
    return-void
.end method

.method public ShowFeedback(Z)V
    .locals 0
    .param p1, "showFeedback"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown  for a button that as an image as background."
    .end annotation

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->showFeedback:Z

    .line 566
    return-void
.end method

.method public ShowFeedback()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s visual feedback state"
    .end annotation

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->showFeedback:Z

    return v0
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .prologue
    .line 280
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 296
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->textAlignment:I

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 298
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .prologue
    .line 682
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 696
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->textColor:I

    .line 697
    if-eqz p1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the button was pressed down."
    .end annotation

    .prologue
    .line 235
    const-string v0, "TouchDown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a button has been released."
    .end annotation

    .prologue
    .line 243
    const-string v0, "TouchUp"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public abstract click()V
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    return-object v0
.end method

.method public longClick()Z
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->click()V

    .line 719
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 725
    if-eqz p2, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->GotFocus()V

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->LostFocus()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->longClick()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->TouchDown()V

    .line 222
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 220
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->TouchUp()V

    goto :goto_0
.end method

.method protected setShape()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 464
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 467
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->shape:I

    packed-switch v1, :pswitch_data_0

    .line 478
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 469
    :pswitch_0
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->ROUNDED_CORNERS_ARRAY:[F

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 481
    :goto_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->createRippleState()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 487
    :goto_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    const v2, 0xffffff

    if-ne v1, v2, :cond_1

    .line 488
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 496
    :goto_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 497
    return-void

    .line 472
    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 475
    :pswitch_2
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 490
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    if-nez v1, :cond_2

    .line 491
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x333334

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateAppearance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 423
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->shape:I

    if-nez v0, :cond_2

    .line 424
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonMinWidth:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonMinHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    .line 450
    :goto_1
    return-void

    .line 428
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    const v1, 0xffffff

    if-ne v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 435
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->setShape()V

    goto :goto_0

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBaseNoText;->view:Landroid/widget/Button;

    invoke-static {v0, v2, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    goto :goto_1
.end method
