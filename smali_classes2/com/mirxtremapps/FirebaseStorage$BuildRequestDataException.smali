.class Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;
.super Ljava/lang/Exception;
.source "FirebaseStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirxtremapps/FirebaseStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuildRequestDataException"
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
    .line 125
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 126
    iput p1, p0, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;->errorNumber:I

    .line 127
    iput p2, p0, Lcom/mirxtremapps/FirebaseStorage$BuildRequestDataException;->index:I

    .line 128
    return-void
.end method
