.class public final Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animation"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x1f40

    const/16 v4, 0xfa0

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    const-string v0, "ScrollRightSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {p0, v1, v5}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "ScrollRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {p0, v1, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "ScrollRightFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {p0, v1, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "ScrollLeftSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-static {p0, v2, v5}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 70
    :cond_4
    const-string v0, "ScrollLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-static {p0, v2, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 72
    :cond_5
    const-string v0, "ScrollLeftFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 74
    :cond_6
    const-string v0, "Stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Ljava/lang/String;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 131
    const-string v2, "AnimationUtil"

    const-string v3, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    .line 135
    .local v0, "enter":I
    const/4 v1, 0x0

    .line 136
    .local v1, "exit":I
    const-string v2, "fade"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "fadeout"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "hold"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 156
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    goto :goto_0

    .line 139
    :cond_3
    const-string v2, "zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_exit_reverse"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_enter_reverse"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 142
    :cond_4
    const-string v2, "slidehorizontal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_exit_reverse"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_enter_reverse"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 145
    :cond_5
    const-string v2, "slidevertical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_exit_reverse"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_enter_reverse"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 148
    :cond_6
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1
.end method

.method private static ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # Z
    .param p2, "speed"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x2

    .line 38
    if-eqz p1, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 39
    .local v10, "sign":F
    :goto_0
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 40
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 41
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 43
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v10

    const v3, -0x40cccccd    # -0.7f

    mul-float v4, v10, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 46
    .local v0, "move":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 47
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 48
    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 49
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 50
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    return-void

    .line 38
    .end local v0    # "move":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v10    # "sign":F
    :cond_0
    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 91
    const-string v2, "AnimationUtil"

    const-string v3, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    .line 95
    .local v0, "enter":I
    const/4 v1, 0x0

    .line 97
    .local v1, "exit":I
    const-string v2, "fade"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "fadein"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "hold"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 117
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    goto :goto_0

    .line 100
    :cond_3
    const-string v2, "zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_exit"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_enter"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 103
    :cond_4
    const-string v2, "slidehorizontal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_exit"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_enter"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 106
    :cond_5
    const-string v2, "slidevertical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_exit"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_enter"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 109
    :cond_6
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1
.end method

.method public static getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 161
    const v0, 0x10c000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 163
    const v0, 0x10c0006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0
.end method
