.class Lcom/firebase/client/DataSnapshot$1;
.super Ljava/lang/Object;
.source "DataSnapshot.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/DataSnapshot;->getChildren()Ljava/lang/Iterable;
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
        "Lcom/firebase/client/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/DataSnapshot;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/firebase/client/DataSnapshot;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/firebase/client/DataSnapshot$1;->this$0:Lcom/firebase/client/DataSnapshot;

    iput-object p2, p0, Lcom/firebase/client/DataSnapshot$1;->val$iter:Ljava/util/Iterator;

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
            "Lcom/firebase/client/DataSnapshot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Lcom/firebase/client/DataSnapshot$1$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/DataSnapshot$1$1;-><init>(Lcom/firebase/client/DataSnapshot$1;)V

    return-object v0
.end method
