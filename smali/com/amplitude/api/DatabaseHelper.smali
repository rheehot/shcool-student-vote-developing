.class Lcom/amplitude/api/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final CREATE_EVENTS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

.field private static final CREATE_IDENTIFYS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

.field private static final CREATE_LONG_STORE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

.field private static final CREATE_STORE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

.field private static final EVENT_FIELD:Ljava/lang/String; = "event"

.field protected static final EVENT_TABLE_NAME:Ljava/lang/String; = "events"

.field protected static final IDENTIFY_TABLE_NAME:Ljava/lang/String; = "identifys"

.field private static final ID_FIELD:Ljava/lang/String; = "id"

.field private static final KEY_FIELD:Ljava/lang/String; = "key"

.field protected static final LONG_STORE_TABLE_NAME:Ljava/lang/String; = "long_store"

.field protected static final STORE_TABLE_NAME:Ljava/lang/String; = "store"

.field private static final TAG:Ljava/lang/String; = "com.amplitude.api.DatabaseHelper"

.field private static final VALUE_FIELD:Ljava/lang/String; = "value"

.field static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amplitude/api/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field private file:Ljava/io/File;

.field private instanceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amplitude/api/DatabaseHelper;->instances:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amplitude/api/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p2}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    invoke-static {p2}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DatabaseHelper;->file:Ljava/io/File;

    .line 81
    invoke-static {p2}, Lcom/amplitude/api/Utils;->normalizeInstanceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/DatabaseHelper;->instanceName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private declared-synchronized addEventToTable(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 206
    monitor-enter p0

    const-wide/16 v4, -0x1

    .line 208
    .local v4, "result":J
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 209
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "event"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 212
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 213
    sget-object v3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "Insert into %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "addEvent to %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    :try_start_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 206
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 219
    :catch_1
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/StackOverflowError;
    :try_start_4
    sget-object v3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "addEvent to %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    :try_start_5
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/StackOverflowError;
    :catchall_1
    move-exception v3

    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private static convertIfCursorWindowException(Ljava/lang/RuntimeException;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .prologue
    .line 473
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cursor window allocation of"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    new-instance v1, Lcom/amplitude/api/CursorWindowAllocationException;

    invoke-direct {v1, v0}, Lcom/amplitude/api/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_0
    throw p0
.end method

.method private delete()V
    .locals 4

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    .line 449
    iget-object v1, p0, Lcom/amplitude/api/DatabaseHelper;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "delete failed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Ljava/lang/String;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getDatabaseHelper(Landroid/content/Context;Ljava/lang/String;)Lcom/amplitude/api/DatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v2, Lcom/amplitude/api/DatabaseHelper;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/amplitude/api/Utils;->normalizeInstanceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    sget-object v1, Lcom/amplitude/api/DatabaseHelper;->instances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amplitude/api/DatabaseHelper;

    .line 63
    .local v0, "dbHelper":Lcom/amplitude/api/DatabaseHelper;
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/amplitude/api/DatabaseHelper;

    .end local v0    # "dbHelper":Lcom/amplitude/api/DatabaseHelper;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amplitude/api/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .restart local v0    # "dbHelper":Lcom/amplitude/api/DatabaseHelper;
    sget-object v1, Lcom/amplitude/api/DatabaseHelper;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit v2

    return-object v0

    .line 61
    .end local v0    # "dbHelper":Lcom/amplitude/api/DatabaseHelper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$default_instance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.amplitude.api"

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.amplitude.api_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized getEventCountFromTable(Ljava/lang/String;)J
    .locals 11
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 333
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 334
    .local v2, "numberRows":J
    const/4 v5, 0x0

    .line 336
    .local v5, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 337
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(*) FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 339
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 349
    if-eqz v5, :cond_0

    .line 350
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v6, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    const-string v8, "getNumberRows for %s failed"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    if-eqz v5, :cond_1

    .line 350
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 333
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 344
    :catch_1
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/StackOverflowError;
    :try_start_4
    sget-object v6, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    const-string v8, "getNumberRows for %s failed"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    if-eqz v5, :cond_2

    .line 350
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_0

    .line 349
    .end local v1    # "e":Ljava/lang/StackOverflowError;
    :catchall_1
    move-exception v6

    if-eqz v5, :cond_3

    .line 350
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private declared-synchronized getNthEventIdFromTable(Ljava/lang/String;J)J
    .locals 12
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "n"    # J

    .prologue
    .line 366
    monitor-enter p0

    const-wide/16 v2, -0x1

    .line 367
    .local v2, "nthEventId":J
    const/4 v5, 0x0

    .line 369
    .local v5, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 370
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT id FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT 1 OFFSET "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    sub-long v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 373
    const-wide/16 v2, -0x1

    .line 375
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 388
    :goto_0
    if-eqz v5, :cond_0

    .line 389
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "query":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-wide v2

    .line 376
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "query":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_3
    sget-object v6, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    invoke-virtual {v6, v7, v1}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 379
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDoneException;
    .end local v4    # "query":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 380
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    sget-object v6, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    const-string v8, "getNthEventId from %s failed"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 388
    if-eqz v5, :cond_1

    .line 389
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 366
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 383
    :catch_2
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/StackOverflowError;
    :try_start_6
    sget-object v6, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v7, "com.amplitude.api.DatabaseHelper"

    const-string v8, "getNthEventId from %s failed"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 388
    if-eqz v5, :cond_2

    .line 389
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_1

    .line 388
    .end local v1    # "e":Ljava/lang/StackOverflowError;
    :catchall_1
    move-exception v6

    if-eqz v5, :cond_3

    .line 389
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private declared-synchronized removeEventFromTable(Ljava/lang/String;J)V
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 432
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "removeEvent from %s failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    :try_start_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 431
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 437
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/StackOverflowError;
    :try_start_4
    sget-object v2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "removeEvent from %s failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 442
    :try_start_5
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/StackOverflowError;
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private declared-synchronized removeEventsFromTable(Ljava/lang/String;J)V
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "maxId"    # J

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 407
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 417
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "removeEvents from %s failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    :try_start_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 406
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 412
    :catch_1
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/StackOverflowError;
    :try_start_4
    sget-object v2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "removeEvents from %s failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    :try_start_5
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/StackOverflowError;
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 127
    const-string v0, "DROP TABLE IF EXISTS store"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "DROP TABLE IF EXISTS long_store"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string v0, "DROP TABLE IF EXISTS identifys"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/amplitude/api/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    return-void
.end method


# virtual methods
.method declared-synchronized addEvent(Ljava/lang/String;)J
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->addEventToTable(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addIdentify(Ljava/lang/String;)J
    .locals 2
    .param p1, "identifyEvent"    # Ljava/lang/String;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->addEventToTable(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dbFileExists()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/amplitude/api/DatabaseHelper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method declared-synchronized deleteKeyFromTable(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    const-wide/16 v2, -0x1

    .line 181
    .local v2, "result":J
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "key=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v0, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    int-to-long v2, v4

    .line 192
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v4, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v5, "com.amplitude.api.DatabaseHelper"

    const-string v6, "deleteKey from %s failed"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    :try_start_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 179
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 187
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/StackOverflowError;
    :try_start_4
    sget-object v4, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v5, "com.amplitude.api.DatabaseHelper"

    const-string v6, "deleteKey from %s failed"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    :try_start_5
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/StackOverflowError;
    :catchall_1
    move-exception v4

    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method declared-synchronized getEventCount()J
    .locals 2

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCountFromTable(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getEvents(JJ)Ljava/util/List;
    .locals 7
    .param p1, "upToId"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    const-string v1, "events"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amplitude/api/DatabaseHelper;->getEventsFromTable(Ljava/lang/String;JJ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getEventsFromTable(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 24
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "upToId"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .local v17, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v14, 0x0

    .line 283
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 284
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "id"

    aput-object v6, v7, v4

    const/4 v4, 0x1

    const-string v6, "event"

    aput-object v6, v7, v4

    const-wide/16 v8, 0x0

    cmp-long v4, p2, v8

    if-ltz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id <= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "id ASC"

    const-wide/16 v22, 0x0

    cmp-long v4, p4, v22

    if-ltz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v13}, Lcom/amplitude/api/DatabaseHelper;->queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 290
    :cond_0
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 292
    .local v18, "eventId":J
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 293
    .local v16, "event":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/amplitude/api/Utils;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 297
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    .local v20, "obj":Lorg/json/JSONObject;
    const-string v4, "event_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 301
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "event":Ljava/lang/String;
    .end local v18    # "eventId":J
    .end local v20    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v15

    .line 302
    .local v15, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v4, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "getEvents from %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v15}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    if-eqz v14, :cond_1

    .line 313
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_3
    monitor-exit p0

    return-object v17

    .line 284
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 312
    :cond_4
    if-eqz v14, :cond_5

    .line 313
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 280
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 305
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catch_1
    move-exception v15

    .line 306
    .local v15, "e":Ljava/lang/StackOverflowError;
    :try_start_5
    sget-object v4, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "removeEvent from %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v15}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    if-eqz v14, :cond_6

    .line 313
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 309
    .end local v15    # "e":Ljava/lang/StackOverflowError;
    :catch_2
    move-exception v15

    .line 310
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_7
    invoke-static {v15}, Lcom/amplitude/api/DatabaseHelper;->convertIfCursorWindowException(Ljava/lang/RuntimeException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 312
    if-eqz v14, :cond_7

    .line 313
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_3

    .line 312
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v4

    if-eqz v14, :cond_8

    .line 313
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method declared-synchronized getIdentifyCount()J
    .locals 2

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCountFromTable(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIdentifys(JJ)Ljava/util/List;
    .locals 7
    .param p1, "upToId"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    const-string v1, "identifys"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amplitude/api/DatabaseHelper;->getEventsFromTable(Ljava/lang/String;JJ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    const-string v0, "long_store"

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNthEventId(J)J
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->getNthEventIdFromTable(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNthIdentifyId(J)J
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->getNthEventIdFromTable(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTotalEventCount()J
    .locals 4

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getIdentifyCount()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    const-string v0, "store"

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    monitor-enter p0

    const/4 v12, 0x0

    .line 239
    .local v12, "value":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 241
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 242
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "key"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "value"

    aput-object v2, v3, v0

    const-string v4, "key = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v9}, Lcom/amplitude/api/DatabaseHelper;->queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 246
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 260
    .end local v12    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 261
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    monitor-exit p0

    return-object v12

    .line 247
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    goto :goto_0

    .line 249
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v11

    .line 250
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v0, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "getValue from %s failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v11}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    if-eqz v10, :cond_3

    .line 261
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 238
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v12    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 253
    .restart local v12    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v11

    .line 254
    .local v11, "e":Ljava/lang/StackOverflowError;
    :try_start_5
    sget-object v0, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "getValue from %s failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v11}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    if-eqz v10, :cond_4

    .line 261
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_4
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 257
    .end local v11    # "e":Ljava/lang/StackOverflowError;
    :catch_2
    move-exception v11

    .line 258
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_7
    invoke-static {v11}, Lcom/amplitude/api/DatabaseHelper;->convertIfCursorWindowException(Ljava/lang/RuntimeException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 260
    if-eqz v10, :cond_5

    .line 261
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_5
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_1

    .line 260
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_6

    .line 261
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_6
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method declared-synchronized insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 140
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "long_store"

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->deleteKeyFromTable(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 141
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 140
    :cond_0
    :try_start_1
    const-string v0, "long_store"

    .line 141
    invoke-virtual {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValueToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "store"

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->deleteKeyFromTable(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 136
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 135
    :cond_0
    :try_start_1
    const-string v0, "store"

    .line 136
    invoke-virtual {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValueToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized insertOrReplaceKeyValueToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 145
    monitor-enter p0

    const-wide/16 v4, -0x1

    .line 147
    .local v4, "result":J
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 148
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    instance-of v3, p3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 151
    const-string v3, "value"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x5

    invoke-virtual {v1, p1, v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 161
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 162
    sget-object v3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "Insert failed"

    invoke-virtual {v3, v6, v7}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    monitor-exit p0

    return-wide v4

    .line 153
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_2
    const-string v3, "value"

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 164
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-object v3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "insertOrReplaceKeyValue in %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    :try_start_4
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 145
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 168
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/StackOverflowError;
    :try_start_5
    sget-object v3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v6, "com.amplitude.api.DatabaseHelper"

    const-string v7, "insertOrReplaceKeyValue in %s failed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    :try_start_6
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/StackOverflowError;
    :catchall_1
    move-exception v3

    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 86
    const-string v0, "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v0, "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 97
    if-le p2, p3, :cond_1

    .line 98
    sget-object v0, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.DatabaseHelper"

    const-string v2, "onUpgrade() with invalid oldVersion and newVersion"

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, p1}, Lcom/amplitude/api/DatabaseHelper;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 107
    packed-switch p2, :pswitch_data_0

    .line 121
    sget-object v0, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade() with unknown oldVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0, p1}, Lcom/amplitude/api/DatabaseHelper;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v0, "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x2

    if-le p3, v0, :cond_0

    .line 113
    :pswitch_2
    const-string v0, "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual/range {p1 .. p9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeEvent(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeEvents(J)V
    .locals 1
    .param p1, "maxId"    # J

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventsFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeIdentify(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeIdentifys(J)V
    .locals 1
    .param p1, "maxId"    # J

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventsFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
