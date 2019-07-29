.class public Lcom/google/appinventor/components/runtime/File;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to /sdcard/AppInventor/data to facilitate debugging. If the file path starts with a slash (/), then the file is created relative to /sdcard. For example writing a file to /myFile.txt will write the file in /sdcard/myFile.txt."
    docUri = "storage/file"
    iconName = "images/file.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileComponent"

.field public static final NO_ASSETS:Ljava/lang/String; = "No_Assets"


# instance fields
.field private final BUFFER_LENGTH:I

.field private final activity:Landroid/app/Activity;

.field private isRepl:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/File;->isRepl:Z

    .line 57
    const/16 v0, 0x1000

    iput v0, p0, Lcom/google/appinventor/components/runtime/File;->BUFFER_LENGTH:I

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/File;->isRepl:Z

    .line 69
    :cond_0
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/File;->activity:Landroid/app/Activity;

    .line 70
    return-void
.end method

.method private AbsoluteFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    :goto_0
    return-object v2

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 381
    .local v0, "dirPath":Ljava/io/File;
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/File;->isRepl:Z

    if-eqz v2, :cond_1

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/AppInventor/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "dirPath":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v0    # "dirPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 388
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private AsyncRead(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 13
    .param p1, "fileInput"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 307
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 309
    .local v6, "output":Ljava/io/StringWriter;
    const/16 v8, 0x1000

    new-array v0, v8, [C

    .line 310
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .line 311
    .local v5, "offset":I
    const/4 v4, 0x0

    .line 312
    .local v4, "length":I
    :goto_0
    const/16 v8, 0x1000

    invoke-virtual {v3, v0, v5, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    if-lez v4, :cond_1

    .line 313
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 330
    .end local v0    # "buffer":[C
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local v6    # "output":Ljava/io/StringWriter;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 331
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    const-string v8, "FileComponent"

    const-string v9, "FileNotFoundException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v9, "ReadFrom"

    const/16 v10, 0x835

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    if-eqz v2, :cond_0

    .line 341
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 347
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 322
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "length":I
    .restart local v5    # "offset":I
    .restart local v6    # "output":Ljava/io/StringWriter;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/File;->normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File;->activity:Landroid/app/Activity;

    new-instance v9, Lcom/google/appinventor/components/runtime/File$5;

    invoke-direct {v9, p0, v7}, Lcom/google/appinventor/components/runtime/File$5;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 339
    if-eqz v3, :cond_3

    .line 341
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 344
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 342
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v8

    move-object v2, v3

    .line 344
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 334
    .end local v0    # "buffer":[C
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local v6    # "output":Ljava/io/StringWriter;
    .end local v7    # "text":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 335
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v8, "FileComponent"

    const-string v9, "IOException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v9, "ReadFrom"

    const/16 v10, 0x836

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 339
    if-eqz v2, :cond_0

    .line 341
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 342
    :catch_3
    move-exception v8

    goto :goto_2

    .line 339
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v2, :cond_2

    .line 341
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 346
    :cond_2
    :goto_5
    throw v8

    .line 342
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 339
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 334
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 330
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "length":I
    .restart local v5    # "offset":I
    .restart local v6    # "output":Ljava/io/StringWriter;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private Write(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "append"    # Z

    .prologue
    const/16 v5, 0x83a

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 210
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    if-eqz p3, :cond_0

    .line 212
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "AppendTo"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v2, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 279
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "SaveFile"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v2, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/File$3;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/google/appinventor/components/runtime/File$3;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;ZLjava/lang/String;)V

    .line 268
    .local v0, "operation":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/google/appinventor/components/runtime/File$4;

    invoke-direct {v3, p0, v0, p3}, Lcom/google/appinventor/components/runtime/File$4;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/File;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/File;->AbsoluteFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/File;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/File;->AsyncRead(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/File;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AfterFileSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents of the file have been written."
    .end annotation

    .prologue
    .line 368
    const-string v0, "AfterFileSaved"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public AppendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written."
    .end annotation

    .prologue
    .line 106
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 109
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted."
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v2, Lcom/google/appinventor/components/runtime/File$2;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/File$2;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 200
    return-void
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents from the file have been read."
    .end annotation

    .prologue
    .line 357
    const-string v0, "GotText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method public ReadFrom(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion."
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v2, Lcom/google/appinventor/components/runtime/File$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/File$1;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 164
    return-void
.end method

.method public SaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block."
    .end annotation

    .prologue
    .line 89
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 92
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "fromFileName"    # Ljava/lang/String;
    .param p2, "toFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Copy file"
    .end annotation

    .prologue
    .line 394
    const/4 v6, 0x0

    .line 395
    .local v6, "in":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 397
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v12, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 398
    .local v4, "endIndex":Ljava/lang/Integer;
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, "outputPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 401
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 404
    :cond_0
    const-string v12, "//"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 405
    iget-boolean v12, p0, Lcom/google/appinventor/components/runtime/File;->isRepl:Z

    if-eqz v12, :cond_3

    .line 406
    iget-object v12, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/AppInventor/assets/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    .line 407
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 406
    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 418
    :goto_0
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_1
    new-array v1, v12, [B

    .line 420
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "read":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 421
    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 424
    .end local v1    # "buffer":[B
    .end local v11    # "read":I
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 425
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "endIndex":Ljava/lang/Integer;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "outputPath":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v12, "FileComponent"

    const-string v13, "Exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    if-eqz v6, :cond_1

    .line 429
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 434
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    .line 436
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 442
    :cond_2
    :goto_4
    return-void

    .line 409
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "endIndex":Ljava/lang/Integer;
    .restart local v10    # "outputPath":Ljava/lang/String;
    :cond_3
    :try_start_5
    iget-object v12, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    .line 412
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/File;->AbsoluteFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "filepath":Ljava/lang/String;
    const-string v12, "FileComponent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "filepath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v6    # "in":Ljava/io/InputStream;
    .local v7, "in":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 423
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "read":I
    :cond_5
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 427
    if-eqz v6, :cond_6

    .line 429
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 434
    :cond_6
    :goto_5
    if-eqz v9, :cond_9

    .line 436
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v8, v9

    .line 439
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 430
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 431
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "FileComponent"

    const-string v13, "IOException"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 437
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 438
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "FileComponent"

    const-string v13, "IOException"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 439
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 430
    .end local v1    # "buffer":[B
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "endIndex":Ljava/lang/Integer;
    .end local v10    # "outputPath":Ljava/lang/String;
    .end local v11    # "read":I
    .local v3, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 431
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "FileComponent"

    const-string v13, "IOException"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 437
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 438
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "FileComponent"

    const-string v13, "IOException"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 427
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v6, :cond_7

    .line 429
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 434
    :cond_7
    :goto_7
    if-eqz v8, :cond_8

    .line 436
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 441
    :cond_8
    :goto_8
    throw v12

    .line 430
    :catch_5
    move-exception v3

    .line 431
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "FileComponent"

    const-string v14, "IOException"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 437
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 438
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "FileComponent"

    const-string v14, "IOException"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 427
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "endIndex":Ljava/lang/Integer;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "outputPath":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 424
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "endIndex":Ljava/lang/Integer;
    .end local v10    # "outputPath":Ljava/lang/String;
    :catch_7
    move-exception v3

    goto/16 :goto_2

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "endIndex":Ljava/lang/Integer;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "outputPath":Ljava/lang/String;
    .restart local v11    # "read":I
    :cond_9
    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method
