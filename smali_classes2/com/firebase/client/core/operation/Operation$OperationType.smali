.class public final enum Lcom/firebase/client/core/operation/Operation$OperationType;
.super Ljava/lang/Enum;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/operation/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/core/operation/Operation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/core/operation/Operation$OperationType;

.field public static final enum AckUserWrite:Lcom/firebase/client/core/operation/Operation$OperationType;

.field public static final enum ListenComplete:Lcom/firebase/client/core/operation/Operation$OperationType;

.field public static final enum Merge:Lcom/firebase/client/core/operation/Operation$OperationType;

.field public static final enum Overwrite:Lcom/firebase/client/core/operation/Operation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/firebase/client/core/operation/Operation$OperationType;

    const-string v1, "Overwrite"

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->Overwrite:Lcom/firebase/client/core/operation/Operation$OperationType;

    new-instance v0, Lcom/firebase/client/core/operation/Operation$OperationType;

    const-string v1, "Merge"

    invoke-direct {v0, v1, v3}, Lcom/firebase/client/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->Merge:Lcom/firebase/client/core/operation/Operation$OperationType;

    new-instance v0, Lcom/firebase/client/core/operation/Operation$OperationType;

    const-string v1, "AckUserWrite"

    invoke-direct {v0, v1, v4}, Lcom/firebase/client/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->AckUserWrite:Lcom/firebase/client/core/operation/Operation$OperationType;

    new-instance v0, Lcom/firebase/client/core/operation/Operation$OperationType;

    const-string v1, "ListenComplete"

    invoke-direct {v0, v1, v5}, Lcom/firebase/client/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->ListenComplete:Lcom/firebase/client/core/operation/Operation$OperationType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/firebase/client/core/operation/Operation$OperationType;

    sget-object v1, Lcom/firebase/client/core/operation/Operation$OperationType;->Overwrite:Lcom/firebase/client/core/operation/Operation$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/client/core/operation/Operation$OperationType;->Merge:Lcom/firebase/client/core/operation/Operation$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firebase/client/core/operation/Operation$OperationType;->AckUserWrite:Lcom/firebase/client/core/operation/Operation$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/firebase/client/core/operation/Operation$OperationType;->ListenComplete:Lcom/firebase/client/core/operation/Operation$OperationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->$VALUES:[Lcom/firebase/client/core/operation/Operation$OperationType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/core/operation/Operation$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/firebase/client/core/operation/Operation$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/operation/Operation$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/core/operation/Operation$OperationType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/firebase/client/core/operation/Operation$OperationType;->$VALUES:[Lcom/firebase/client/core/operation/Operation$OperationType;

    invoke-virtual {v0}, [Lcom/firebase/client/core/operation/Operation$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/core/operation/Operation$OperationType;

    return-object v0
.end method
