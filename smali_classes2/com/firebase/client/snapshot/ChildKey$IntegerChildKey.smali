.class Lcom/firebase/client/snapshot/ChildKey$IntegerChildKey;
.super Lcom/firebase/client/snapshot/ChildKey;
.source "ChildKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/snapshot/ChildKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerChildKey"
.end annotation


# instance fields
.field private final intValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intValue"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/snapshot/ChildKey;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/ChildKey$1;)V

    .line 112
    iput p2, p0, Lcom/firebase/client/snapshot/ChildKey$IntegerChildKey;->intValue:I

    .line 113
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/firebase/client/snapshot/ChildKey$IntegerChildKey;->intValue:I

    return v0
.end method

.method protected isInt()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntegerChildName(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/firebase/client/snapshot/ChildKey;->access$100(Lcom/firebase/client/snapshot/ChildKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
