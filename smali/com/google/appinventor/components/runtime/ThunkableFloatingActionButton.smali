.class public Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkableFloatingActionButton.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A floating action button (FAB) represents the primary action in an application. Only one FAB is recommended per screen to represent the most common action. It is used for a promoted action."
    docUri = "user-interface/floating-action-button"
    iconName = "images/floatingActionButton.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final matchParentLength:I = -0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private animationDuration:I

.field private backgroundColor:I

.field private buttonLayout:Landroid/widget/LinearLayout;

.field private buttonSize:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private created:Z

.field private drawable:Landroid/graphics/drawable/GradientDrawable;

.field private elevation:F

.field private font:Landroid/graphics/Typeface;

.field private iconColor:I

.field private iconName:Ljava/lang/String;

.field private iconSize:I

.field private iconTextView:Landroid/widget/TextView;

.field private layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private paddingBottom:I

.field private paddingRight:I

.field private relative:Landroid/widget/RelativeLayout;

.field private shadowLayout:Landroid/widget/LinearLayout;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/16 v1, 0x10

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 54
    const v0, -0xde690d

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    .line 60
    const-string v0, "add"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    .line 61
    const/16 v0, 0x18

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconSize:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->created:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    .line 67
    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->activity:Landroid/app/Activity;

    .line 75
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    .line 76
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    .line 77
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    .line 78
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->elevation:F

    .line 80
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->addOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "MaterialIcons-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->font:Landroid/graphics/Typeface;

    .line 84
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->create()V

    .line 85
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private changeIconWithFade(Ljava/lang/String;)V
    .locals 4
    .param p1, "newIconName"    # Ljava/lang/String;

    .prologue
    .line 282
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    .line 284
    .local v0, "fadeDuration":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 285
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 286
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$2;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;Ljava/lang/String;I)V

    .line 287
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 302
    return-void
.end method

.method private convertDpToPixel(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 337
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private create()V
    .locals 10

    .prologue
    const/16 v9, 0x55

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v1, "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v2, "shadowLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    .line 115
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 116
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 123
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 126
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 127
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->elevation:F

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    .line 137
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 138
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 139
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 140
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    .line 143
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    .line 154
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 156
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 157
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->layoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->created:Z

    .line 164
    return-void
.end method

.method private hideFAB()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    .line 308
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    int-to-long v2, v1

    .line 309
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$3;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)V

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 316
    return-void
.end method

.method private showFAB()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->context:Landroid/content/Context;

    .line 322
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    int-to-long v2, v1

    .line 323
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton$4;-><init>(Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    return-void
.end method


# virtual methods
.method public AnimationDuration(I)V
    .locals 0
    .param p1, "animationDuration"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "300"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the duration of the transition animation of the FAB in milliseconds. The shorter the duration is, the faster the animation would be."
    .end annotation

    .prologue
    .line 220
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    .line 221
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Background color for the FAB."
    .end annotation

    .prologue
    .line 169
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "-14575885"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies background color for the FAB."
    .end annotation

    .prologue
    .line 176
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 180
    return-void
.end method

.method public ButtonSize(I)V
    .locals 2
    .param p1, "buttonSize"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "56"
        editorType = "fab_button_size"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->buttonSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 234
    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the FAB is Clicked"
    .end annotation

    .prologue
    .line 278
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method public IconColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for the icon of the FAB."
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    return v0
.end method

.method public IconColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "-1"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies color for the icon of the FAB."
    .end annotation

    .prologue
    .line 192
    iput p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    return-void
.end method

.method public IconName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Name (or code) for the FAB icon. You can find the icon name (or code) here https://material.io/icons/"
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public IconName(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "add"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the name (or code) for the FAB icon. You can find the icon name (or code) here https://material.io/icons/"
    .end annotation

    .prologue
    .line 268
    iget v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->animationDuration:I

    if-lez v0, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->changeIconWithFade(Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->iconName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public PaddingBottom(I)V
    .locals 4
    .param p1, "paddingBottom"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the distance between the bottom edge of the FAB and the bottom edge of the screen. The default value is 16 dp."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 254
    return-void
.end method

.method public PaddingRight(I)V
    .locals 4
    .param p1, "paddingRight"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the distance between the right edge of the FAB and the right edge of the screen. The default value is 16 dp."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->convertDpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    .line 242
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingRight:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->paddingBottom:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->shadowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 244
    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the FAB should be visible on the screen. Value is true if the FAB is showing and false if hidden."
    .end annotation

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->showFAB()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->hideFAB()V

    goto :goto_0
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Visibility of the FAB."
    .end annotation

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    return v0
.end method

.method public onClear()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->relative:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->visible:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->onClear()V

    .line 91
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableFloatingActionButton;->create()V

    .line 93
    :cond_0
    return-void
.end method
