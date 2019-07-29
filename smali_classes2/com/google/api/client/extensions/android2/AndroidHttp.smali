.class public Lcom/google/api/client/extensions/android2/AndroidHttp;
.super Ljava/lang/Object;
.source "AndroidHttp.java"


# static fields
.field private static final GINGERBREAD:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGingerbreadOrHigher()Z
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->isGingerbreadOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    goto :goto_0
.end method
