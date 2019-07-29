.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$LimitedInputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayByteSource;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 577
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$1;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asByteSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/ByteSink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lcom/google/common/io/ByteSink;"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, "supplier":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v0, Lcom/google/common/io/ByteStreams$7;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$7;-><init>(Lcom/google/common/io/OutputSupplier;)V

    return-object v0
.end method

.method static asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .prologue
    .line 985
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    new-instance v0, Lcom/google/common/io/ByteStreams$6;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$6;-><init>(Lcom/google/common/io/InputSupplier;)V

    return-object v0
.end method

.method public static asByteSource([B)Lcom/google/common/io/ByteSource;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/ByteStreams$ByteArrayByteSource;-><init>([BLcom/google/common/io/ByteStreams$1;)V

    return-object v0
.end method

.method static asInputSupplier(Lcom/google/common/io/ByteSource;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .param p0, "source"    # Lcom/google/common/io/ByteSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/io/InputStream;",
            ">(",
            "Lcom/google/common/io/ByteSource;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 961
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    new-instance v0, Lcom/google/common/io/ByteStreams$4;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$4;-><init>(Lcom/google/common/io/ByteSource;)V

    return-object v0
.end method

.method static asOutputSupplier(Lcom/google/common/io/ByteSink;)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .param p0, "sink"    # Lcom/google/common/io/ByteSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/io/OutputStream;",
            ">(",
            "Lcom/google/common/io/ByteSink;",
            ")",
            "Lcom/google/common/io/OutputSupplier",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 973
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    new-instance v0, Lcom/google/common/io/ByteStreams$5;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$5;-><init>(Lcom/google/common/io/ByteSink;)V

    return-object v0
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->asByteSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/ByteSink;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Lcom/google/common/io/ByteSink;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/io/OutputStream;)J
    .locals 2
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Lcom/google/common/io/OutputSupplier;)J
    .locals 2
    .param p0, "from"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->asByteSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/ByteSink;->writeFrom(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 205
    .local v0, "buf":[B
    const-wide/16 v2, 0x0

    .line 207
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 208
    .local v1, "r":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 214
    return-wide v2

    .line 211
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 212
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 213
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 6
    .param p0, "from"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 231
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "total":J
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 233
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 234
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_1

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 239
    :cond_1
    return-wide v2
.end method

.method public static equal(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/InputSupplier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    .local p0, "supplier1":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "supplier2":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/ByteSource;->contentEquals(Lcom/google/common/io/ByteSource;)Z

    move-result v0

    return v0
.end method

.method public static getChecksum(Lcom/google/common/io/InputSupplier;Ljava/util/zip/Checksum;)J
    .locals 2
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/util/zip/Checksum;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 834
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance v0, Lcom/google/common/io/ByteStreams$2;

    invoke-direct {v0, p1}, Lcom/google/common/io/ByteStreams$2;-><init>(Ljava/util/zip/Checksum;)V

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash(Lcom/google/common/io/InputSupplier;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p1, "hashFunction"    # Lcom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/hash/HashFunction;",
            ")",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;>;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, "suppliers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v0, Lcom/google/common/io/ByteStreams$3;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$3;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "suppliers":[Lcom/google/common/io/InputSupplier;, "[Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lcom/google/common/io/InputSupplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "limit"    # J

    .prologue
    .line 616
    new-instance v0, Lcom/google/common/io/ByteStreams$LimitedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 272
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([B)V

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .prologue
    .line 283
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 284
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([BI)V

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>()V

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 5
    .param p0, "size"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 436
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Invalid size: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(I)V

    return-object v0

    :cond_0
    move v0, v2

    .line 436
    goto :goto_0
.end method

.method public static newInputStreamSupplier([B)Lcom/google/common/io/InputSupplier;
    .locals 1
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource([B)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->asInputSupplier(Lcom/google/common/io/ByteSource;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newInputStreamSupplier([BII)Lcom/google/common/io/InputSupplier;
    .locals 6
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource([B)Lcom/google/common/io/ByteSource;

    move-result-object v0

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/io/ByteSource;->slice(JJ)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->asInputSupplier(Lcom/google/common/io/ByteSource;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static nullOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    if-gez p3, :cond_0

    .line 895
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    :cond_0
    const/4 v1, 0x0

    .line 898
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 899
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 900
    .local v0, "result":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 905
    .end local v0    # "result":I
    :cond_1
    return v1

    .line 903
    .restart local v0    # "result":I
    :cond_2
    add-int/2addr v1, v0

    .line 904
    goto :goto_0
.end method

.method public static readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 786
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 787
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 791
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v3

    .line 788
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 812
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 813
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 814
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 715
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 734
    .local v0, "read":I
    if-eq v0, p3, :cond_0

    .line 735
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reached end of stream after reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :cond_0
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 753
    move-wide v4, p1

    .line 754
    .local v4, "toSkip":J
    :goto_0
    cmp-long v6, p1, v8

    if-lez v6, :cond_2

    .line 755
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 756
    .local v0, "amt":J
    cmp-long v6, v0, v8

    if-nez v6, :cond_1

    .line 758
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 759
    sub-long v2, v4, p1

    .line 760
    .local v2, "skipped":J
    new-instance v6, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reached end of stream after skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes expected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 763
    .end local v2    # "skipped":J
    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr p1, v6

    goto :goto_0

    .line 765
    :cond_1
    sub-long/2addr p1, v0

    goto :goto_0

    .line 768
    .end local v0    # "amt":J
    :cond_2
    return-void
.end method

.method public static slice(Lcom/google/common/io/InputSupplier;JJ)Lcom/google/common/io/InputSupplier;
    .locals 1
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;JJ)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/io/ByteSource;->slice(JJ)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->asInputSupplier(Lcom/google/common/io/ByteSource;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Lcom/google/common/io/InputSupplier;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->asByteSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 253
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static write([BLcom/google/common/io/OutputSupplier;)V
    .locals 1
    .param p0, "from"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->asByteSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/ByteSink;->write([B)V

    .line 144
    return-void
.end method
