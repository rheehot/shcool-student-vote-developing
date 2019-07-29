.class Lcom/firebase/client/MutableData$2;
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

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/firebase/client/MutableData;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/firebase/client/MutableData$2;->this$0:Lcom/firebase/client/MutableData;

    iput-object p2, p0, Lcom/firebase/client/MutableData$2;->val$iter:Ljava/util/Iterator;

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
    .line 122
    new-instance v0, Lcom/firebase/client/MutableData$2$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/MutableData$2$1;-><init>(Lcom/firebase/client/MutableData$2;)V

    return-object v0
.end method
