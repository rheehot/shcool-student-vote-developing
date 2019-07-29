.class public Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lorg/shaded/apache/http/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/io/SessionInputBuffer;J)V
    .locals 4
    .param p1, "in"    # Lorg/shaded/apache/http/io/SessionInputBuffer;
    .param p2, "contentLength"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 65
    iput-wide v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/shaded/apache/http/io/SessionInputBuffer;

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/shaded/apache/http/io/SessionInputBuffer;

    .line 92
    iput-wide p2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    .line 93
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 103
    iget-boolean v1, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v1, :cond_1

    .line 105
    const/16 v1, 0x800

    :try_start_0
    new-array v0, v1, [B

    .line 106
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 111
    iput-boolean v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 114
    .end local v0    # "buffer":[B
    :cond_1
    return-void

    .line 111
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-wide v0, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 129
    const/4 v0, -0x1

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-wide v0, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 132
    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/shaded/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/shaded/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-boolean v1, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    iget-wide v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 153
    const/4 v0, -0x1

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_1
    iget-wide v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 157
    iget-wide v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v4, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 159
    :cond_2
    iget-object v1, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/shaded/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/shaded/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 160
    .local v0, "count":I
    iget-wide v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    goto :goto_0
.end method

.method public skip(J)J
    .locals 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 185
    cmp-long v8, p1, v6

    if-gtz v8, :cond_1

    move-wide v2, v6

    .line 202
    :cond_0
    return-wide v2

    .line 188
    :cond_1
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 191
    .local v0, "buffer":[B
    iget-wide v8, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v10, p0, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v8, v10

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 193
    .local v4, "remaining":J
    const-wide/16 v2, 0x0

    .line 194
    .local v2, "count":J
    :goto_0
    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 195
    const/4 v8, 0x0

    const-wide/16 v10, 0x800

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-virtual {p0, v0, v8, v9}, Lorg/shaded/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v1

    .line 196
    .local v1, "l":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 199
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 200
    int-to-long v8, v1

    sub-long/2addr v4, v8

    .line 201
    goto :goto_0
.end method
