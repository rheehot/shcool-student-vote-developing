.class Lcom/firebase/client/core/Repo$TransactionData;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/firebase/client/core/Repo$TransactionData;",
        ">;"
    }
.end annotation


# instance fields
.field private abortReason:Lcom/firebase/client/FirebaseError;

.field private applyLocally:Z

.field private currentInputSnapshot:Lcom/firebase/client/snapshot/Node;

.field private currentOutputSnapshotRaw:Lcom/firebase/client/snapshot/Node;

.field private currentOutputSnapshotResolved:Lcom/firebase/client/snapshot/Node;

.field private currentWriteId:J

.field private handler:Lcom/firebase/client/Transaction$Handler;

.field private order:J

.field private outstandingListener:Lcom/firebase/client/ValueEventListener;

.field private path:Lcom/firebase/client/core/Path;

.field private retryCount:I

.field private status:Lcom/firebase/client/core/Repo$TransactionStatus;


# direct methods
.method private constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJ)V
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "handler"    # Lcom/firebase/client/Transaction$Handler;
    .param p3, "outstandingListener"    # Lcom/firebase/client/ValueEventListener;
    .param p4, "status"    # Lcom/firebase/client/core/Repo$TransactionStatus;
    .param p5, "applyLocally"    # Z
    .param p6, "order"    # J

    .prologue
    const/4 v1, 0x0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->path:Lcom/firebase/client/core/Path;

    .line 581
    iput-object p2, p0, Lcom/firebase/client/core/Repo$TransactionData;->handler:Lcom/firebase/client/Transaction$Handler;

    .line 582
    iput-object p3, p0, Lcom/firebase/client/core/Repo$TransactionData;->outstandingListener:Lcom/firebase/client/ValueEventListener;

    .line 583
    iput-object p4, p0, Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    .line 585
    iput-boolean p5, p0, Lcom/firebase/client/core/Repo$TransactionData;->applyLocally:Z

    .line 586
    iput-wide p6, p0, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    .line 587
    iput-object v1, p0, Lcom/firebase/client/core/Repo$TransactionData;->abortReason:Lcom/firebase/client/FirebaseError;

    .line 588
    iput-object v1, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentInputSnapshot:Lcom/firebase/client/snapshot/Node;

    .line 589
    iput-object v1, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/firebase/client/snapshot/Node;

    .line 590
    iput-object v1, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/firebase/client/snapshot/Node;

    .line 591
    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJLcom/firebase/client/core/Repo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firebase/client/core/Path;
    .param p2, "x1"    # Lcom/firebase/client/Transaction$Handler;
    .param p3, "x2"    # Lcom/firebase/client/ValueEventListener;
    .param p4, "x3"    # Lcom/firebase/client/core/Repo$TransactionStatus;
    .param p5, "x4"    # Z
    .param p6, "x5"    # J
    .param p8, "x6"    # Lcom/firebase/client/core/Repo$1;

    .prologue
    .line 564
    invoke-direct/range {p0 .. p7}, Lcom/firebase/client/core/Repo$TransactionData;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentInputSnapshot:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentInputSnapshot:Lcom/firebase/client/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/firebase/client/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/firebase/client/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/firebase/client/core/Repo$TransactionStatus;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J
    .locals 2
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-wide v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentWriteId:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/firebase/client/core/Repo$TransactionData;J)J
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;
    .param p1, "x1"    # J

    .prologue
    .line 564
    iput-wide p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->currentWriteId:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/firebase/client/core/Repo$TransactionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    return v0
.end method

.method static synthetic access$1808(Lcom/firebase/client/core/Repo$TransactionData;)I
    .locals 2
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/Transaction$Handler;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->handler:Lcom/firebase/client/Transaction$Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->outstandingListener:Lcom/firebase/client/ValueEventListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/FirebaseError;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->abortReason:Lcom/firebase/client/FirebaseError;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/FirebaseError;
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;
    .param p1, "x1"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->abortReason:Lcom/firebase/client/FirebaseError;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/firebase/client/core/Repo$TransactionData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->applyLocally:Z

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/core/Repo$TransactionData;)I
    .locals 4
    .param p1, "o"    # Lcom/firebase/client/core/Repo$TransactionData;

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    iget-wide v2, p1, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 596
    const/4 v0, -0x1

    .line 600
    :goto_0
    return v0

    .line 597
    :cond_0
    iget-wide v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    iget-wide v2, p1, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 598
    const/4 v0, 0x0

    goto :goto_0

    .line 600
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 564
    check-cast p1, Lcom/firebase/client/core/Repo$TransactionData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/Repo$TransactionData;->compareTo(Lcom/firebase/client/core/Repo$TransactionData;)I

    move-result v0

    return v0
.end method
