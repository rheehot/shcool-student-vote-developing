.class public Lcom/firebase/client/core/ValidationPath;
.super Ljava/lang/Object;
.source "ValidationPath.java"


# static fields
.field public static final MAX_PATH_DEPTH:I = 0x20

.field public static final MAX_PATH_LENGTH_BYTES:I = 0x300


# instance fields
.field private byteLength:I

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/firebase/client/core/Path;)V
    .locals 5
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    .line 21
    const/4 v3, 0x0

    iput v3, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    .line 27
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    .line 28
    .local v2, "key":Lcom/firebase/client/snapshot/ChildKey;
    iget-object v3, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v2    # "key":Lcom/firebase/client/snapshot/ChildKey;
    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 34
    iget v4, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    iget-object v3, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/firebase/client/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/core/ValidationPath;->checkValid()V

    .line 37
    return-void
.end method

.method private checkValid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 89
    iget v0, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    const/16 v1, 0x300

    if-le v0, v1, :cond_0

    .line 90
    new-instance v0, Lcom/firebase/client/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data has a key path longer than 768 bytes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    .line 94
    new-instance v0, Lcom/firebase/client/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path specified exceeds the maximum depth that can be written (32) or object contains a cycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/firebase/client/core/ValidationPath;->toErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    return-void
.end method

.method private static joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "delimeter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 110
    if-lez v0, :cond_0

    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private pop()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    iget-object v2, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "last":Ljava/lang/String;
    iget v1, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    invoke-static {v0}, Lcom/firebase/client/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    .line 82
    iget-object v1, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    iget v1, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    .line 85
    :cond_0
    return-object v0
.end method

.method private push(Ljava/lang/String;)V
    .locals 2
    .param p1, "child"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget v0, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget v0, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    invoke-static {p1}, Lcom/firebase/client/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/firebase/client/core/ValidationPath;->byteLength:I

    .line 75
    invoke-direct {p0}, Lcom/firebase/client/core/ValidationPath;->checkValid()V

    .line 76
    return-void
.end method

.method private toErrorString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, ""

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in path \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    iget-object v2, p0, Lcom/firebase/client/core/ValidationPath;->parts:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/firebase/client/core/ValidationPath;->joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static utf8Bytes(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 125
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 126
    .local v0, "ch":C
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 124
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    .line 129
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    add-int/lit8 v1, v1, 0x4

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 137
    .end local v0    # "ch":C
    :cond_3
    return v1
.end method

.method public static validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V
    .locals 1
    .param p0, "path"    # Lcom/firebase/client/core/Path;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/firebase/client/core/ValidationPath;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/ValidationPath;-><init>(Lcom/firebase/client/core/Path;)V

    invoke-direct {v0, p1}, Lcom/firebase/client/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method private withObject(Ljava/lang/Object;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 45
    check-cast v4, Ljava/util/Map;

    .line 46
    .local v4, "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "key":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    invoke-direct {p0, v2}, Lcom/firebase/client/core/ValidationPath;->push(Ljava/lang/String;)V

    .line 51
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/firebase/client/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lcom/firebase/client/core/ValidationPath;->pop()Ljava/lang/String;

    goto :goto_0

    .line 57
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    instance-of v5, p1, Ljava/util/List;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 58
    check-cast v3, Ljava/util/List;

    .line 59
    .local v3, "listValue":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .restart local v2    # "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/firebase/client/core/ValidationPath;->push(Ljava/lang/String;)V

    .line 62
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/firebase/client/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/firebase/client/core/ValidationPath;->pop()Ljava/lang/String;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "listValue":Ljava/util/List;
    :cond_2
    return-void
.end method
