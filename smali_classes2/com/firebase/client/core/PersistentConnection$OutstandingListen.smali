.class Lcom/firebase/client/core/PersistentConnection$OutstandingListen;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutstandingListen"
.end annotation


# instance fields
.field private final hashFunction:Lcom/firebase/client/core/SyncTree$SyncTreeHash;

.field private final query:Lcom/firebase/client/core/view/QuerySpec;

.field private final resultListener:Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

.field private final tag:Lcom/firebase/client/core/Tag;


# direct methods
.method private constructor <init>(Lcom/firebase/client/core/PersistentConnection$RequestResultListener;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;)V
    .locals 0
    .param p1, "listener"    # Lcom/firebase/client/core/PersistentConnection$RequestResultListener;
    .param p2, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p3, "tag"    # Lcom/firebase/client/core/Tag;
    .param p4, "hashFunction"    # Lcom/firebase/client/core/SyncTree$SyncTreeHash;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->resultListener:Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

    .line 50
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->query:Lcom/firebase/client/core/view/QuerySpec;

    .line 51
    iput-object p4, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->hashFunction:Lcom/firebase/client/core/SyncTree$SyncTreeHash;

    .line 52
    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->tag:Lcom/firebase/client/core/Tag;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/core/PersistentConnection$RequestResultListener;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/PersistentConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firebase/client/core/PersistentConnection$RequestResultListener;
    .param p2, "x1"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p3, "x2"    # Lcom/firebase/client/core/Tag;
    .param p4, "x3"    # Lcom/firebase/client/core/SyncTree$SyncTreeHash;
    .param p5, "x4"    # Lcom/firebase/client/core/PersistentConnection$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;-><init>(Lcom/firebase/client/core/PersistentConnection$RequestResultListener;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;)V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->query:Lcom/firebase/client/core/view/QuerySpec;

    return-object v0
.end method

.method static synthetic access$500(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/PersistentConnection$RequestResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->resultListener:Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

    return-object v0
.end method


# virtual methods
.method public getHashFunction()Lcom/firebase/client/core/SyncTree$SyncTreeHash;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->hashFunction:Lcom/firebase/client/core/SyncTree$SyncTreeHash;

    return-object v0
.end method

.method public getQuery()Lcom/firebase/client/core/view/QuerySpec;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->query:Lcom/firebase/client/core/view/QuerySpec;

    return-object v0
.end method

.method public getTag()Lcom/firebase/client/core/Tag;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->tag:Lcom/firebase/client/core/Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->tag:Lcom/firebase/client/core/Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
