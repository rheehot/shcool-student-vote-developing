.class public Lcom/google/appinventor/components/runtime/util/TextViewUtil;
.super Ljava/lang/Object;
.source "TextViewUtil.java"


# static fields
.field private static ct:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F
    .locals 2
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 111
    .local v0, "scaledDensity":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static setAlignment(Landroid/widget/TextView;IZ)V
    .locals 3
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "alignment"    # I
    .param p2, "centerVertically"    # Z

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 52
    :pswitch_0
    const/4 v0, 0x3

    .line 63
    .local v0, "horizontalGravity":I
    :goto_0
    if-eqz p2, :cond_0

    const/16 v1, 0x10

    .line 64
    .local v1, "verticalGravity":I
    :goto_1
    or-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 66
    return-void

    .line 56
    .end local v0    # "horizontalGravity":I
    .end local v1    # "verticalGravity":I
    :pswitch_1
    const/4 v0, 0x1

    .line 57
    .restart local v0    # "horizontalGravity":I
    goto :goto_0

    .line 60
    .end local v0    # "horizontalGravity":I
    :pswitch_2
    const/4 v0, 0x5

    .restart local v0    # "horizontalGravity":I
    goto :goto_0

    .line 63
    :cond_0
    const/16 v1, 0x30

    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setBackgroundColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "argb"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 79
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sput-object p0, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->ct:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static setCursorColor(Landroid/widget/TextView;I)V
    .locals 11
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "argb"    # I

    .prologue
    .line 273
    :try_start_0
    const-class v9, Landroid/widget/TextView;

    const-string v10, "mCursorDrawableRes"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 274
    .local v5, "fCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 275
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 276
    .local v7, "mCursorDrawableRes":I
    const-class v9, Landroid/widget/TextView;

    const-string v10, "mEditor"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 277
    .local v6, "fEditor":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 278
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 279
    .local v3, "editor":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 280
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "mCursorDrawable"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 281
    .local v4, "fCursorDrawable":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 283
    if-gtz v7, :cond_1

    .line 297
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "editor":Ljava/lang/Object;
    .end local v4    # "fCursorDrawable":Ljava/lang/reflect/Field;
    .end local v5    # "fCursorDrawableRes":Ljava/lang/reflect/Field;
    .end local v6    # "fEditor":Ljava/lang/reflect/Field;
    .end local v7    # "mCursorDrawableRes":I
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "editor":Ljava/lang/Object;
    .restart local v4    # "fCursorDrawable":Ljava/lang/reflect/Field;
    .restart local v5    # "fCursorDrawableRes":Ljava/lang/reflect/Field;
    .restart local v6    # "fEditor":Ljava/lang/reflect/Field;
    .restart local v7    # "mCursorDrawableRes":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 288
    .local v1, "cursorDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 292
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 293
    .local v8, "tintDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x2

    new-array v2, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v8, v2, v9

    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 294
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cursorDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "editor":Ljava/lang/Object;
    .end local v4    # "fCursorDrawable":Ljava/lang/reflect/Field;
    .end local v5    # "fCursorDrawableRes":Ljava/lang/reflect/Field;
    .end local v6    # "fEditor":Ljava/lang/reflect/Field;
    .end local v7    # "mCursorDrawableRes":I
    .end local v8    # "tintDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public static setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "typefaceName"    # Ljava/lang/String;
    .param p3, "bold"    # Z
    .param p4, "italic"    # Z

    .prologue
    .line 193
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "typefacePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 200
    .local v1, "tf":Landroid/graphics/Typeface;
    :goto_0
    const/4 v0, 0x0

    .line 201
    .local v0, "style":I
    if-eqz p3, :cond_0

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_0
    if-eqz p4, :cond_1

    .line 205
    or-int/lit8 v0, v0, 0x2

    .line 207
    :cond_1
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 209
    return-void

    .line 197
    .end local v0    # "style":I
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :cond_2
    sget-object v3, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->ct:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0
.end method

.method public static setEnabled(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 100
    return-void
.end method

.method public static setFontSize(Landroid/widget/TextView;F)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "size"    # F

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 123
    return-void
.end method

.method public static setFontTypeface(Landroid/widget/TextView;IZZ)V
    .locals 4
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "typeface"    # I
    .param p2, "bold"    # Z
    .param p3, "italic"    # Z

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 146
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 170
    .local v1, "tf":Landroid/graphics/Typeface;
    :goto_0
    const/4 v0, 0x0

    .line 171
    .local v0, "style":I
    if-eqz p2, :cond_0

    .line 172
    or-int/lit8 v0, v0, 0x1

    .line 174
    :cond_0
    if-eqz p3, :cond_1

    .line 175
    or-int/lit8 v0, v0, 0x2

    .line 177
    :cond_1
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 179
    return-void

    .line 150
    .end local v0    # "style":I
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 151
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 154
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 155
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 158
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 159
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 162
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_4
    sget-object v2, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->ct:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "Thunkable-Roboto-Regular.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 163
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 166
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_5
    sget-object v2, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->ct:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "Thunkable-Roboto-Thin.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setMinHeight(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "minHeight"    # I

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 328
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 329
    return-void
.end method

.method public static setMinSize(Landroid/widget/TextView;II)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 339
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinWidth(Landroid/widget/TextView;I)V

    .line 340
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinHeight(Landroid/widget/TextView;I)V

    .line 341
    return-void
.end method

.method public static setMinWidth(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "minWidth"    # I

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 315
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 316
    return-void
.end method

.method public static setPadding(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "padding"    # I

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, p1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 253
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 254
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 243
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "argb"    # I

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 265
    return-void
.end method

.method public static setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 269
    return-void
.end method

.method public static setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 229
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 230
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 232
    return-void
.end method

.method private static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 300
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    .local v0, "wrappedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 302
    return-object v0
.end method
