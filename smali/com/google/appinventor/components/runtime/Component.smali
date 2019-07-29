.class public interface abstract Lcom/google/appinventor/components/runtime/Component;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field public static final ACCELEROMETER_SENSITIVITY_MODERATE:I = 0x2

.field public static final ACCELEROMETER_SENSITIVITY_STRONG:I = 0x3

.field public static final ACCELEROMETER_SENSITIVITY_WEAK:I = 0x1

.field public static final ALIGNMENT_CENTER:I = 0x1

.field public static final ALIGNMENT_NORMAL:I = 0x0

.field public static final ALIGNMENT_OPPOSITE:I = 0x2

.field public static final ASSET_DIRECTORY:Ljava/lang/String; = "component"

.field public static final BUTTON_SHAPE_DEFAULT:I = 0x0

.field public static final BUTTON_SHAPE_OVAL:I = 0x3

.field public static final BUTTON_SHAPE_RECT:I = 0x2

.field public static final BUTTON_SHAPE_ROUNDED:I = 0x1

.field public static final COLOR_BLACK:I = -0x1000000

.field public static final COLOR_BLUE:I = -0xde690d

.field public static final COLOR_CYAN:I = -0xff432c

.field public static final COLOR_DARK_GREEN:I = -0xff6978

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_DKGRAY:I = -0xbbbbbc

.field public static final COLOR_GRAY:I = -0x616162

.field public static final COLOR_GREEN:I = -0xb350b0

.field public static final COLOR_LIGHT_GREEN:I = -0x743cb6

.field public static final COLOR_LTGRAY:I = -0x333334

.field public static final COLOR_MAGENTA:I = -0xff01

.field public static final COLOR_NONE:I = 0xffffff

.field public static final COLOR_ORANGE:I = -0x6800

.field public static final COLOR_PINK:I = -0x16e19d

.field public static final COLOR_RED:I = -0xbbcca

.field public static final COLOR_WHITE:I = -0x1

.field public static final COLOR_YELLOW:I = -0x14c5

.field public static final DEFAULT_VALUE_COLOR_BLACK:Ljava/lang/String; = "&HFF000000"

.field public static final DEFAULT_VALUE_COLOR_BLUE:Ljava/lang/String; = "&HFF2196F3"

.field public static final DEFAULT_VALUE_COLOR_CYAN:Ljava/lang/String; = "&HFF00BCD4"

.field public static final DEFAULT_VALUE_COLOR_DEFAULT:Ljava/lang/String; = "&H00000000"

.field public static final DEFAULT_VALUE_COLOR_DKGRAY:Ljava/lang/String; = "&HFF444444"

.field public static final DEFAULT_VALUE_COLOR_GRAY:Ljava/lang/String; = "&HFF9E9E9E"

.field public static final DEFAULT_VALUE_COLOR_GREEN:Ljava/lang/String; = "&HFF4CAF50"

.field public static final DEFAULT_VALUE_COLOR_LTGRAY:Ljava/lang/String; = "&HFFCCCCCC"

.field public static final DEFAULT_VALUE_COLOR_MAGENTA:Ljava/lang/String; = "&HFFFF00FF"

.field public static final DEFAULT_VALUE_COLOR_MATERIALCOLOR_LIGHT_GREEN:Ljava/lang/String; = "&HFF82CCC4"

.field public static final DEFAULT_VALUE_COLOR_NONE:Ljava/lang/String; = "&H00FFFFFF"

.field public static final DEFAULT_VALUE_COLOR_ORANGE:Ljava/lang/String; = "&HFFFF9800"

.field public static final DEFAULT_VALUE_COLOR_PINK:Ljava/lang/String; = "&HFFE91E63"

.field public static final DEFAULT_VALUE_COLOR_RED:Ljava/lang/String; = "&HFFF44336"

.field public static final DEFAULT_VALUE_COLOR_WHITE:Ljava/lang/String; = "&HFFFFFFFF"

.field public static final DEFAULT_VALUE_COLOR_YELLOW:Ljava/lang/String; = "&HFFFFEB3B"

.field public static final DEFAULT_VALUE_TEXT_TO_SPEECH_COUNTRY:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE_TEXT_TO_SPEECH_LANGUAGE:Ljava/lang/String; = ""

.field public static final DIRECTION_EAST:I = 0x3

.field public static final DIRECTION_MAX:I = 0x4

.field public static final DIRECTION_MIN:I = -0x4

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_NORTH:I = 0x1

.field public static final DIRECTION_NORTHEAST:I = 0x2

.field public static final DIRECTION_NORTHWEST:I = -0x4

.field public static final DIRECTION_SOUTH:I = -0x1

.field public static final DIRECTION_SOUTHEAST:I = 0x4

.field public static final DIRECTION_SOUTHWEST:I = -0x2

.field public static final DIRECTION_WEST:I = -0x3

.field public static final FAB_ANIMATION_DURATION_DEFAULT:I = 0x12c

.field public static final FAB_ELEVATION_DEFAULT:I = 0x6

.field public static final FAB_ICON_SIZE_DEFAULT:I = 0x18

.field public static final FAB_PADDINGBOTTOM_DEFAULT:I = 0x10

.field public static final FAB_PADDINGRIGHT_DEFAULT:I = 0x10

.field public static final FAB_SIZE_DEFAULT:I = 0x38

.field public static final FAB_SIZE_MINI:I = 0x28

.field public static final FONT_DEFAULT_SIZE:F = 14.0f

.field public static final ICON_NAME_PLUS:Ljava/lang/String; = "add"

.field public static final LAYOUT_ORIENTATION_HORIZONTAL:I = 0x0

.field public static final LAYOUT_ORIENTATION_VERTICAL:I = 0x1

.field public static final LENGTH_FILL_PARENT:I = -0x2

.field public static final LENGTH_PERCENT_TAG:I = -0x3e8

.field public static final LENGTH_PREFERRED:I = -0x1

.field public static final LENGTH_UNKNOWN:I = -0x3

.field public static final MATERIALCOLOR_LIGHT_GREEN:I = -0x7d333c

.field public static final SCALING_SCALE_PROPORTIONALLY:I = 0x0

.field public static final SCALING_SCALE_TO_FIT:I = 0x1

.field public static final SLIDER_MAX_VALUE:F = 50.0f

.field public static final SLIDER_MIN_VALUE:F = 10.0f

.field public static final SLIDER_THUMB_VALUE:F = 30.0f

.field public static final TOAST_LENGTH_LONG:I = 0x1

.field public static final TOAST_LENGTH_SHORT:I = 0x0

.field public static final TYPEFACE_DEFAULT:I = 0x0

.field public static final TYPEFACE_MONOSPACE:I = 0x3

.field public static final TYPEFACE_ROBOTOREGULAR:I = 0x4

.field public static final TYPEFACE_ROBOTOTHIN:I = 0x5

.field public static final TYPEFACE_SANSSERIF:I = 0x1

.field public static final TYPEFACE_SERIF:I = 0x2


# virtual methods
.method public abstract getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
.end method
