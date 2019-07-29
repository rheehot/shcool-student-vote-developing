.class Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;
.super Ljava/lang/Object;
.source "CompoundHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/CompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundHashBuilder"
.end annotation


# instance fields
.field private final currentHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
.end field

.field private currentPathDepth:I

.field private final currentPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation
.end field

.field private lastLeafDepth:I

.field private needsComma:Z

.field private optHashValueBuilder:Ljava/lang/StringBuilder;

.field private final splitStrategy:Lcom/firebase/client/core/CompoundHash$SplitStrategy;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/CompoundHash$SplitStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/firebase/client/core/CompoundHash$SplitStrategy;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->needsComma:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->splitStrategy:Lcom/firebase/client/core/CompoundHash$SplitStrategy;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->finishHashing()V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;Lcom/firebase/client/snapshot/LeafNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;
    .param p1, "x1"    # Lcom/firebase/client/snapshot/LeafNode;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->processLeaf(Lcom/firebase/client/snapshot/LeafNode;)V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;Lcom/firebase/client/snapshot/ChildKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;
    .param p1, "x1"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->startChild(Lcom/firebase/client/snapshot/ChildKey;)V

    return-void
.end method

.method static synthetic access$600(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->endChild()V

    return-void
.end method

.method private appendKey(Ljava/lang/StringBuilder;Lcom/firebase/client/snapshot/ChildKey;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 119
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    return-void
.end method

.method private currentPath(I)Lcom/firebase/client/core/Path;
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 99
    new-array v1, p1, [Lcom/firebase/client/snapshot/ChildKey;

    .line 100
    .local v1, "segments":[Lcom/firebase/client/snapshot/ChildKey;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    aput-object v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, v1}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    return-object v2
.end method

.method private endChild()V
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    .line 153
    invoke-virtual {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->needsComma:Z

    .line 157
    return-void
.end method

.method private endRange()V
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v3

    const-string v4, "Can\'t end range without starting a range!"

    invoke-static {v3, v4}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    if-ge v1, v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    invoke-direct {p0, v3}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 177
    .local v2, "lastLeafPath":Lcom/firebase/client/core/Path;
    iget-object v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "hash":Ljava/lang/String;
    iget-object v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    .line 182
    return-void
.end method

.method private ensureRange()V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    .line 109
    iget-object v2, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v2, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-direct {p0, v2}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildKey;

    .line 111
    .local v1, "key":Lcom/firebase/client/snapshot/ChildKey;
    iget-object v2, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->appendKey(Ljava/lang/StringBuilder;Lcom/firebase/client/snapshot/ChildKey;)V

    .line 112
    iget-object v2, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    .end local v1    # "key":Lcom/firebase/client/snapshot/ChildKey;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->needsComma:Z

    .line 116
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private finishHashing()V
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->endRange()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processLeaf(Lcom/firebase/client/snapshot/LeafNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/LeafNode",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "node":Lcom/firebase/client/snapshot/LeafNode;, "Lcom/firebase/client/snapshot/LeafNode<*>;"
    invoke-direct {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->ensureRange()V

    .line 125
    iget v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    iput v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    .line 126
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/firebase/client/snapshot/Node$HashVersion;->V2:Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-virtual {p1, v1}, Lcom/firebase/client/snapshot/LeafNode;->getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->needsComma:Z

    .line 128
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->splitStrategy:Lcom/firebase/client/core/CompoundHash$SplitStrategy;

    invoke-interface {v0, p0}, Lcom/firebase/client/core/CompoundHash$SplitStrategy;->shouldSplit(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->endRange()V

    .line 131
    :cond_0
    return-void
.end method

.method private startChild(Lcom/firebase/client/snapshot/ChildKey;)V
    .locals 2
    .param p1, "key"    # Lcom/firebase/client/snapshot/ChildKey;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->ensureRange()V

    .line 136
    iget-boolean v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->needsComma:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->appendKey(Ljava/lang/StringBuilder;Lcom/firebase/client/snapshot/ChildKey;)V

    .line 140
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    iget-object v1, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_0
    iget v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->needsComma:Z

    .line 149
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    iget v1, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public buildingRange()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentHashLength()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public currentPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-direct {p0, v0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/firebase/client/core/Path;

    move-result-object v0

    return-object v0
.end method
