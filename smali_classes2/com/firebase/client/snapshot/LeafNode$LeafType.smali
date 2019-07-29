.class public final enum Lcom/firebase/client/snapshot/LeafNode$LeafType;
.super Ljava/lang/Enum;
.source "LeafNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/snapshot/LeafNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LeafType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/snapshot/LeafNode$LeafType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/snapshot/LeafNode$LeafType;

.field public static final enum Boolean:Lcom/firebase/client/snapshot/LeafNode$LeafType;

.field public static final enum DeferredValue:Lcom/firebase/client/snapshot/LeafNode$LeafType;

.field public static final enum Number:Lcom/firebase/client/snapshot/LeafNode$LeafType;

.field public static final enum String:Lcom/firebase/client/snapshot/LeafNode$LeafType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;

    const-string v1, "DeferredValue"

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->DeferredValue:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    new-instance v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;

    const-string v1, "Boolean"

    invoke-direct {v0, v1, v3}, Lcom/firebase/client/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->Boolean:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    new-instance v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;

    const-string v1, "Number"

    invoke-direct {v0, v1, v4}, Lcom/firebase/client/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->Number:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    new-instance v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;

    const-string v1, "String"

    invoke-direct {v0, v1, v5}, Lcom/firebase/client/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->String:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/firebase/client/snapshot/LeafNode$LeafType;

    sget-object v1, Lcom/firebase/client/snapshot/LeafNode$LeafType;->DeferredValue:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/client/snapshot/LeafNode$LeafType;->Boolean:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firebase/client/snapshot/LeafNode$LeafType;->Number:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/firebase/client/snapshot/LeafNode$LeafType;->String:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->$VALUES:[Lcom/firebase/client/snapshot/LeafNode$LeafType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/snapshot/LeafNode$LeafType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/snapshot/LeafNode$LeafType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->$VALUES:[Lcom/firebase/client/snapshot/LeafNode$LeafType;

    invoke-virtual {v0}, [Lcom/firebase/client/snapshot/LeafNode$LeafType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/snapshot/LeafNode$LeafType;

    return-object v0
.end method
