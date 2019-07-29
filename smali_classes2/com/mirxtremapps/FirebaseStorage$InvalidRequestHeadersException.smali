.class Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;
.super Ljava/lang/Exception;
.source "FirebaseStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirxtremapps/FirebaseStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidRequestHeadersException"
.end annotation


# instance fields
.field final errorNumber:I

.field final index:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "errorNumber"    # I
    .param p2, "index"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 103
    iput p1, p0, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;->errorNumber:I

    .line 104
    iput p2, p0, Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;->index:I

    .line 105
    return-void
.end method
