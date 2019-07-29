.class public Lcom/firebase/client/core/AndroidSupport;
.super Ljava/lang/Object;
.source "AndroidSupport.java"


# static fields
.field private static final IS_ANDROID:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    invoke-static {}, Lcom/firebase/client/core/AndroidSupport;->checkAndroid()Z

    move-result v0

    sput-boolean v0, Lcom/firebase/client/core/AndroidSupport;->IS_ANDROID:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndroid()Z
    .locals 3

    .prologue
    .line 8
    :try_start_0
    const-string v2, "android.app.Activity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 9
    .local v0, "contextClass":Ljava/lang/Class;
    const/4 v2, 0x1

    .line 11
    .end local v0    # "contextClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 10
    :catch_0
    move-exception v1

    .line 11
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAndroid()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/firebase/client/core/AndroidSupport;->IS_ANDROID:Z

    return v0
.end method
