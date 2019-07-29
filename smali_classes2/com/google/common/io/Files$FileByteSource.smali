.class final Lcom/google/common/io/Files$FileByteSource;
.super Lcom/google/common/io/ByteSource;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileByteSource"
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/google/common/io/Files$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Lcom/google/common/io/Files$1;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/common/io/Files$FileByteSource;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/common/io/Files$FileByteSource;->openStream()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public read()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, -0x1

    .line 137
    iget-object v9, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 140
    .local v10, "size":J
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 141
    invoke-super {p0}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v8

    .line 188
    :goto_0
    return-object v8

    .line 146
    :cond_0
    const-wide/32 v12, 0x7fffffff

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 148
    new-instance v9, Ljava/lang/OutOfMemoryError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file is too large to fit in a byte array: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 153
    :cond_1
    long-to-int v9, v10

    new-array v0, v9, [B

    .line 155
    .local v0, "bytes":[B
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 157
    .local v1, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/Files$FileByteSource;->openStream()Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 158
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 159
    .local v5, "off":I
    const/4 v7, 0x0

    .line 163
    .local v7, "read":I
    :goto_1
    int-to-long v12, v5

    cmp-long v9, v12, v10

    if-gez v9, :cond_2

    long-to-int v9, v10

    sub-int/2addr v9, v5

    invoke-virtual {v3, v0, v5, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v7, v14, :cond_2

    .line 164
    add-int/2addr v5, v7

    goto :goto_1

    .line 167
    :cond_2
    move-object v8, v0

    .line 169
    .local v8, "result":[B
    int-to-long v12, v5

    cmp-long v9, v12, v10

    if-gez v9, :cond_4

    .line 171
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 188
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    goto :goto_0

    .line 172
    :cond_4
    if-eq v7, v14, :cond_3

    .line 175
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v6}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 177
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 178
    .local v4, "moreBytes":[B
    array-length v9, v0

    array-length v12, v4

    add-int/2addr v9, v12

    new-array v8, v9, [B

    .line 179
    const/4 v9, 0x0

    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v9, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    const/4 v9, 0x0

    array-length v12, v0

    array-length v13, v4

    invoke-static {v4, v9, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 185
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "moreBytes":[B
    .end local v5    # "off":I
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "read":I
    .end local v8    # "result":[B
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    throw v9
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Files.asByteSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
