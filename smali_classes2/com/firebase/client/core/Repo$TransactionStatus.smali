.class final enum Lcom/firebase/client/core/Repo$TransactionStatus;
.super Ljava/lang/Enum;
.source "Repo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/core/Repo$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/core/Repo$TransactionStatus;

.field public static final enum COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

.field public static final enum INITIALIZING:Lcom/firebase/client/core/Repo$TransactionStatus;

.field public static final enum NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

.field public static final enum RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

.field public static final enum SENT:Lcom/firebase/client/core/Repo$TransactionStatus;

.field public static final enum SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 544
    new-instance v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/firebase/client/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->INITIALIZING:Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 549
    new-instance v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    const-string v1, "RUN"

    invoke-direct {v0, v1, v4}, Lcom/firebase/client/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 552
    new-instance v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lcom/firebase/client/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT:Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 555
    new-instance v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/firebase/client/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 558
    new-instance v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    const-string v1, "SENT_NEEDS_ABORT"

    invoke-direct {v0, v1, v7}, Lcom/firebase/client/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 560
    new-instance v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    const-string v1, "NEEDS_ABORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 543
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/firebase/client/core/Repo$TransactionStatus;

    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->INITIALIZING:Lcom/firebase/client/core/Repo$TransactionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT:Lcom/firebase/client/core/Repo$TransactionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->$VALUES:[Lcom/firebase/client/core/Repo$TransactionStatus;

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
    .line 543
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/core/Repo$TransactionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 543
    const-class v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Repo$TransactionStatus;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/core/Repo$TransactionStatus;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/firebase/client/core/Repo$TransactionStatus;->$VALUES:[Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-virtual {v0}, [Lcom/firebase/client/core/Repo$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/core/Repo$TransactionStatus;

    return-object v0
.end method
