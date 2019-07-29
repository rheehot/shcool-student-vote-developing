.class public Lcom/firebase/client/core/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DOT_INFO:Lcom/firebase/client/snapshot/ChildKey;

.field public static final DOT_INFO_AUTHENTICATED:Lcom/firebase/client/snapshot/ChildKey;

.field public static final DOT_INFO_CONNECTED:Lcom/firebase/client/snapshot/ChildKey;

.field public static final DOT_INFO_SERVERTIME_OFFSET:Lcom/firebase/client/snapshot/ChildKey;

.field public static final WIRE_PROTOCOL_VERSION:Ljava/lang/String; = "5"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, ".info"

    invoke-static {v0}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/firebase/client/core/Constants;->DOT_INFO:Lcom/firebase/client/snapshot/ChildKey;

    .line 13
    const-string v0, "serverTimeOffset"

    invoke-static {v0}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/firebase/client/core/Constants;->DOT_INFO_SERVERTIME_OFFSET:Lcom/firebase/client/snapshot/ChildKey;

    .line 14
    const-string v0, "authenticated"

    invoke-static {v0}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/firebase/client/core/Constants;->DOT_INFO_AUTHENTICATED:Lcom/firebase/client/snapshot/ChildKey;

    .line 15
    const-string v0, "connected"

    invoke-static {v0}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/firebase/client/core/Constants;->DOT_INFO_CONNECTED:Lcom/firebase/client/snapshot/ChildKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
