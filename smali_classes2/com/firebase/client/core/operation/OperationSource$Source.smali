.class final enum Lcom/firebase/client/core/operation/OperationSource$Source;
.super Ljava/lang/Enum;
.source "OperationSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/operation/OperationSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/core/operation/OperationSource$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/core/operation/OperationSource$Source;

.field public static final enum Server:Lcom/firebase/client/core/operation/OperationSource$Source;

.field public static final enum User:Lcom/firebase/client/core/operation/OperationSource$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/firebase/client/core/operation/OperationSource$Source;

    const-string v1, "User"

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/operation/OperationSource$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/operation/OperationSource$Source;->User:Lcom/firebase/client/core/operation/OperationSource$Source;

    new-instance v0, Lcom/firebase/client/core/operation/OperationSource$Source;

    const-string v1, "Server"

    invoke-direct {v0, v1, v3}, Lcom/firebase/client/core/operation/OperationSource$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/operation/OperationSource$Source;->Server:Lcom/firebase/client/core/operation/OperationSource$Source;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/firebase/client/core/operation/OperationSource$Source;

    sget-object v1, Lcom/firebase/client/core/operation/OperationSource$Source;->User:Lcom/firebase/client/core/operation/OperationSource$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/client/core/operation/OperationSource$Source;->Server:Lcom/firebase/client/core/operation/OperationSource$Source;

    aput-object v1, v0, v3

    sput-object v0, Lcom/firebase/client/core/operation/OperationSource$Source;->$VALUES:[Lcom/firebase/client/core/operation/OperationSource$Source;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/core/operation/OperationSource$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/firebase/client/core/operation/OperationSource$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/operation/OperationSource$Source;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/core/operation/OperationSource$Source;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/firebase/client/core/operation/OperationSource$Source;->$VALUES:[Lcom/firebase/client/core/operation/OperationSource$Source;

    invoke-virtual {v0}, [Lcom/firebase/client/core/operation/OperationSource$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/core/operation/OperationSource$Source;

    return-object v0
.end method
