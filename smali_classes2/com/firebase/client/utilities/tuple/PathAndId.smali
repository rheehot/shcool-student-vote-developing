.class public Lcom/firebase/client/utilities/tuple/PathAndId;
.super Ljava/lang/Object;
.source "PathAndId.java"


# instance fields
.field private id:J

.field private path:Lcom/firebase/client/core/Path;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Path;J)V
    .locals 0
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "id"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/firebase/client/utilities/tuple/PathAndId;->path:Lcom/firebase/client/core/Path;

    .line 17
    iput-wide p2, p0, Lcom/firebase/client/utilities/tuple/PathAndId;->id:J

    .line 18
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/firebase/client/utilities/tuple/PathAndId;->id:J

    return-wide v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/PathAndId;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method
