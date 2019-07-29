.class final enum Lcom/firebase/client/core/PersistentConnection$ConnectionState;
.super Ljava/lang/Enum;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/core/PersistentConnection$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/core/PersistentConnection$ConnectionState;

.field public static final enum Authenticating:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

.field public static final enum Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

.field public static final enum Disconnected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/PersistentConnection$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Disconnected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 200
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    const-string v1, "Authenticating"

    invoke-direct {v0, v1, v3}, Lcom/firebase/client/core/PersistentConnection$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Authenticating:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 201
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v4}, Lcom/firebase/client/core/PersistentConnection$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Disconnected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Authenticating:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->$VALUES:[Lcom/firebase/client/core/PersistentConnection$ConnectionState;

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
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/core/PersistentConnection$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 198
    const-class v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/core/PersistentConnection$ConnectionState;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->$VALUES:[Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    invoke-virtual {v0}, [Lcom/firebase/client/core/PersistentConnection$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    return-object v0
.end method
