.class public Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppInventorCompatActivity.java"

# interfaces
.implements Landroid/support/v7/app/AppCompatCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
    }
.end annotation


# static fields
.field static final DEFAULT_PRIMARY_COLOR:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static actionBarEnabled:Z

.field private static classicMode:Z

.field private static currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field private static didSetClassicModeFromYail:Z

.field private static primaryColor:I


# instance fields
.field private appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

.field frameWithTitle:Landroid/widget/LinearLayout;

.field protected themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

.field titleBar:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 56
    const-class v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    .line 57
    const-string v0, "&HFF3F51B5"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->DEFAULT_PRIMARY_COLOR:I

    .line 58
    sput-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 65
    sput-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->didSetClassicModeFromYail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private applyTheme()V
    .locals 3

    .prologue
    .line 326
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyTheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setClassicMode(Z)V

    .line 328
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$1;->$SwitchMap$com$google$appinventor$components$runtime$AppInventorCompatActivity$Theme:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    :goto_0
    return-void

    .line 330
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setClassicMode(Z)V

    .line 331
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 335
    :pswitch_1
    const v0, 0x103012c

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 338
    :pswitch_2
    const v0, 0x1030129

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static getPrimaryColor()I
    .locals 1

    .prologue
    .line 254
    sget v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    return v0
.end method

.method protected static isActionBarEnabled()Z
    .locals 1

    .prologue
    .line 233
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    return v0
.end method

.method public static isClassicMode()Z
    .locals 1

    .prologue
    .line 243
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    return v0
.end method

.method public static isEmulator()Z
    .locals 2

    .prologue
    .line 226
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk_gphone"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setClassicModeFromYail(Z)V
    .locals 3
    .param p0, "newClassicMode"    # Z

    .prologue
    .line 354
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->didSetClassicModeFromYail:Z

    if-nez v0, :cond_0

    .line 355
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting classic mode from YAIL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sput-boolean p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 357
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->didSetClassicModeFromYail:Z

    .line 359
    :cond_0
    return-void
.end method

.method private shouldCreateTitleBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isAppCompatMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isActionBarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    if-nez v1, :cond_0

    .line 349
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 215
    .local v0, "classicCallback":Landroid/view/Window$Callback;
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v3, :cond_0

    .line 221
    :goto_0
    return-object v2

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/IllegalStateException;
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 219
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 220
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0
.end method

.method protected hideTitleBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final isAppCompatMode()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRepl()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method protected maybeShowTitleBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "titleBar visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_0

    .line 290
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Setting parent visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 71
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-ge v0, v4, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 72
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    if-eqz v0, :cond_4

    .line 73
    new-instance v0, Lcom/google/appinventor/components/runtime/util/theme/ClassicThemeHelper;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/theme/ClassicThemeHelper;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    .line 91
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setContentView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    .line 99
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    .line 100
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->shouldCreateTitleBar()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const v1, 0x1080095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const v1, 0x1030053

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 107
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :cond_2
    :goto_2
    return-void

    .line 71
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 74
    :cond_4
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_5

    .line 76
    new-instance v0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;-><init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->requestActionBar()V

    .line 78
    sput-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    goto/16 :goto_1

    .line 83
    :cond_5
    new-instance v0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;-><init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    .line 84
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    sget-object v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    if-eq v0, v2, :cond_6

    .line 85
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->applyTheme()V

    .line 87
    :cond_6
    invoke-static {p0, p0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 119
    :cond_7
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already have a title bar (classic mode): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 158
    :cond_0
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .param p1, "actionMode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 186
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .param p1, "actionMode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 181
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setActionBarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 238
    sput-boolean p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    .line 239
    return-void
.end method

.method protected setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .prologue
    .line 317
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    if-eq p1, v0, :cond_0

    .line 321
    sput-object p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 322
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->applyTheme()V

    goto :goto_0
.end method

.method protected setClassicMode(Z)V
    .locals 2
    .param p1, "classic"    # Z

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 249
    sput-boolean p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 251
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setPrimaryColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 260
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez p1, :cond_1

    sget v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->DEFAULT_PRIMARY_COLOR:I

    .line 261
    .local v1, "newColor":I
    :goto_0
    if-eqz v0, :cond_0

    sget v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    if-eq v1, v2, :cond_0

    .line 263
    sput v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    .line 264
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :cond_0
    return-void

    .end local v1    # "newColor":I
    :cond_1
    move v1, p1

    .line 260
    goto :goto_0
.end method

.method protected styleTitleBar()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 299
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionBarEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!classicMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionBar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-eqz v0, :cond_2

    .line 303
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getPrimaryColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    sget-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->hideTitleBar()V

    .line 313
    :goto_1
    return-void

    .line 300
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->maybeShowTitleBar()V

    goto :goto_1
.end method
