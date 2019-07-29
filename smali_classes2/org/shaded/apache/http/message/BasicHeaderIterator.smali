.class public Lorg/shaded/apache/http/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lorg/shaded/apache/http/HeaderIterator;


# instance fields
.field protected final allHeaders:[Lorg/shaded/apache/http/Header;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lorg/shaded/apache/http/Header;Ljava/lang/String;)V
    .locals 2
    .param p1, "headers"    # [Lorg/shaded/apache/http/Header;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header array must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/shaded/apache/http/Header;

    .line 88
    iput-object p2, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/message/BasicHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->currentIndex:I

    .line 90
    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/shaded/apache/http/Header;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lorg/shaded/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findNext(I)I
    .locals 4
    .param p1, "from"    # I

    .prologue
    const/4 v2, -0x1

    .line 103
    if-ge p1, v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/shaded/apache/http/Header;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 107
    .local v1, "to":I
    const/4 v0, 0x0

    .line 108
    .local v0, "found":Z
    :goto_1
    if-nez v0, :cond_2

    if-ge p1, v1, :cond_2

    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicHeaderIterator;->filterHeader(I)Z

    move-result v0

    goto :goto_1

    .line 112
    :cond_2
    if-eqz v0, :cond_0

    move v2, p1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/shaded/apache/http/message/BasicHeaderIterator;->nextHeader()Lorg/shaded/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lorg/shaded/apache/http/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->currentIndex:I

    .line 147
    .local v0, "current":I
    if-gez v0, :cond_0

    .line 148
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iteration already finished."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/message/BasicHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->currentIndex:I

    .line 153
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicHeaderIterator;->allHeaders:[Lorg/shaded/apache/http/Header;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
