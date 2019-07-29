.class public Lcom/google/appinventor/components/runtime/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    }
.end annotation


# static fields
.field private static final DIRECTORY_DOWNLOADS:Ljava/lang/String; = "Downloads"

.field private static final DIRECTORY_PICTURES:Ljava/lang/String; = "Pictures"

.field private static final DIRECTORY_RECORDINGS:Ljava/lang/String; = "Recordings"

.field private static final DOCUMENT_DIRECTORY:Ljava/lang/String; = "My Documents/"

.field private static final FILENAME_PREFIX:Ljava/lang/String; = "app_inventor_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static checkExternalStorageWriteable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    const/16 v2, 0x2c0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;-><init>(I)V

    throw v1

    .line 358
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    const/16 v2, 0x2c1

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;-><init>(I)V

    throw v1
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1000

    .line 232
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 233
    .end local p1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 237
    .end local p0    # "in":Ljava/io/InputStream;
    .local v1, "in":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 238
    .local v0, "b":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 243
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 244
    return-void

    .line 241
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inputFileName"    # Ljava/lang/String;
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 200
    return-object v1

    .line 202
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 203
    throw v1
.end method

.method public static downloadUrlToFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 167
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 167
    return-object v1

    .line 169
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 170
    throw v1
.end method

.method public static getDownloadFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "Downloads"

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 330
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 332
    .local v0, "directory":Ljava/io/File;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot overwrite existing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_2
    return-object v1
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Documents/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_inventor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localFileName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPictureFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 260
    const-string v0, "Pictures"

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordingFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v0, "Recordings"

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 117
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static openFile(Ljava/net/URI;)Ljava/io/FileInputStream;
    .locals 2
    .param p0, "fileUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 154
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 9
    .param p0, "inputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "inputFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    :cond_0
    const/4 v4, 0x0

    .line 80
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 82
    .local v1, "content":[B
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v2, v6

    .line 84
    .local v2, "fileLength":I
    new-array v1, v2, [B

    .line 85
    const/4 v5, 0x0

    .line 86
    .local v5, "offset":I
    const/4 v0, 0x0

    .line 88
    .local v0, "bytesRead":I
    :cond_1
    sub-int v6, v2, v5

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 89
    if-lez v0, :cond_2

    add-int/2addr v5, v0

    .line 90
    :cond_2
    if-ne v5, v2, :cond_4

    .line 93
    :goto_0
    if-eqz v4, :cond_3

    .line 94
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 97
    :cond_3
    return-object v1

    .line 91
    :cond_4
    if-gez v0, :cond_1

    goto :goto_0

    .line 93
    .end local v0    # "bytesRead":I
    .end local v2    # "fileLength":I
    .end local v5    # "offset":I
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 94
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 96
    :cond_5
    throw v6
.end method

.method public static writeFile([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 183
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 183
    return-object v1

    .line 185
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 186
    throw v1
.end method

.method public static writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 219
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 221
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 226
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 227
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 224
    return-object v2

    .line 226
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 227
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 228
    throw v2
.end method
