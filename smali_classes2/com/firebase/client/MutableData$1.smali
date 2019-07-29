.class Lcom/firebase/client/MutableData$1;
.super Ljava/lang/Object;
.source "MutableData.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/MutableData;->getChildren()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/firebase/client/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/MutableData;


# direct methods
.method constructor <init>(Lcom/firebase/client/MutableData;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/firebase/client/MutableData$1;->this$0:Lcom/firebase/client/MutableData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/MutableData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/firebase/client/MutableData$1$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/MutableData$1$1;-><init>(Lcom/firebase/client/MutableData$1;)V

    return-object v0
.end method
