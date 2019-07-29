.class public final Lcom/google/appinventor/components/runtime/util/LollipopUtil;
.super Ljava/lang/Object;
.source "LollipopUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCheckBoxButtonTintList(Landroid/widget/CheckBox;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/CheckBox;
    .param p1, "colorCode"    # I

    .prologue
    .line 40
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    return-void
.end method

.method public static setTextBoxBackgroundTintList(Landroid/widget/EditText;I)V
    .locals 2
    .param p0, "view"    # Landroid/widget/EditText;
    .param p1, "colorCode"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    return-void
.end method
