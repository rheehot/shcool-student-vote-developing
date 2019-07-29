.class public final enum Lcom/firebase/client/collection/LLRBNode$Color;
.super Ljava/lang/Enum;
.source "LLRBNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/LLRBNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/collection/LLRBNode$Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/collection/LLRBNode$Color;

.field public static final enum BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

.field public static final enum RED:Lcom/firebase/client/collection/LLRBNode$Color;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/firebase/client/collection/LLRBNode$Color;

    const-string v1, "RED"

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/collection/LLRBNode$Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    new-instance v0, Lcom/firebase/client/collection/LLRBNode$Color;

    const-string v1, "BLACK"

    invoke-direct {v0, v1, v3}, Lcom/firebase/client/collection/LLRBNode$Color;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/firebase/client/collection/LLRBNode$Color;

    sget-object v1, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    aput-object v1, v0, v3

    sput-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->$VALUES:[Lcom/firebase/client/collection/LLRBNode$Color;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/collection/LLRBNode$Color;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/firebase/client/collection/LLRBNode$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/collection/LLRBNode$Color;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/collection/LLRBNode$Color;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->$VALUES:[Lcom/firebase/client/collection/LLRBNode$Color;

    invoke-virtual {v0}, [Lcom/firebase/client/collection/LLRBNode$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/collection/LLRBNode$Color;

    return-object v0
.end method
