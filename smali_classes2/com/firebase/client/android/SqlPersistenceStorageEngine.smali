.class public Lcom/firebase/client/android/SqlPersistenceStorageEngine;
.super Ljava/lang/Object;
.source "SqlPersistenceStorageEngine.java"

# interfaces
.implements Lcom/firebase/client/core/persistence/PersistenceStorageEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CHILDREN_NODE_SPLIT_SIZE_THRESHOLD:I = 0x4000

.field private static final FIRST_PART_KEY:Ljava/lang/String; = ".part-0000"

.field private static final LOGGER_COMPONENT:Ljava/lang/String; = "Persistence"

.field private static final PART_KEY_FORMAT:Ljava/lang/String; = ".part-%04d"

.field private static final PART_KEY_PREFIX:Ljava/lang/String; = ".part-"

.field private static final PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final ROW_ID_COLUMN_NAME:Ljava/lang/String; = "rowid"

.field private static final ROW_SPLIT_SIZE:I = 0x40000

.field private static final SERVER_CACHE_TABLE:Ljava/lang/String; = "serverCache"

.field private static final TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String; = "key"

.field private static final TRACKED_KEYS_TABLE:Ljava/lang/String; = "trackedKeys"

.field private static final TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String; = "active"

.field private static final TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String; = "complete"

.field private static final TRACKED_QUERY_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String; = "lastUse"

.field private static final TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String; = "queryParams"

.field private static final TRACKED_QUERY_PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final TRACKED_QUERY_TABLE:Ljava/lang/String; = "trackedQueries"

.field private static final VALUE_COLUMN_NAME:Ljava/lang/String; = "value"

.field private static final WRITES_TABLE:Ljava/lang/String; = "writes"

.field private static final WRITE_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final WRITE_NODE_COLUMN_NAME:Ljava/lang/String; = "node"

.field private static final WRITE_PART_COLUMN_NAME:Ljava/lang/String; = "part"

.field private static final WRITE_TYPE_COLUMN_NAME:Ljava/lang/String; = "type"

.field private static final WRITE_TYPE_MERGE:Ljava/lang/String; = "m"

.field private static final WRITE_TYPE_OVERWRITE:Ljava/lang/String; = "o"

.field private static final createServerCache:Ljava/lang/String; = "CREATE TABLE serverCache (path TEXT PRIMARY KEY, value BLOB);"

.field private static final createTrackedKeys:Ljava/lang/String; = "CREATE TABLE trackedKeys (id INTEGER, key TEXT);"

.field private static final createTrackedQueries:Ljava/lang/String; = "CREATE TABLE trackedQueries (id INTEGER PRIMARY KEY, path TEXT, queryParams TEXT, lastUse INTEGER, complete INTEGER, active INTEGER);"

.field private static final createWrites:Ljava/lang/String; = "CREATE TABLE writes (id INTEGER, path TEXT, type TEXT, part INTEGER, node BLOB, UNIQUE (id, part));"


# instance fields
.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field private insideTransaction:Z

.field private final jsonMapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

.field private final logger:Lcom/firebase/client/utilities/LogWrapper;

.field private transactionStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/firebase/client/core/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firebaseContext"    # Lcom/firebase/client/core/Context;
    .param p3, "cacheId"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->transactionStart:J

    .line 191
    :try_start_0
    const-string v3, "utf-8"

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 195
    .local v2, "sanitizedCacheId":Ljava/lang/String;
    new-instance v1, Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;

    invoke-direct {v1, p1, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    .local v1, "helper":Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;
    invoke-virtual {v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 200
    new-instance v3, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    .line 201
    const-string v3, "Persistence"

    invoke-virtual {p2, v3}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 202
    return-void

    .line 192
    .end local v1    # "helper":Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;
    .end local v2    # "sanitizedCacheId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static buildAncestorWhereClause(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Lcom/firebase/client/core/Path;
    .param p1, "arguments"    # [Ljava/lang/String;

    .prologue
    .line 823
    sget-boolean v2, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, p1

    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 824
    :cond_0
    const/4 v0, 0x0

    .line 825
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 827
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string v2, " = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-static {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 830
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object p0

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_1
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v2, " = ?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 836
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 895
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .local v4, "list":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 897
    .local v0, "first":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 898
    .local v2, "item":J
    if-nez v0, :cond_0

    .line 899
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_0
    const/4 v0, 0x0

    .line 901
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 903
    .end local v2    # "item":J
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private deserializeNode([B)Lcom/firebase/client/snapshot/Node;
    .locals 7
    .param p1, "value"    # [B

    .prologue
    .line 882
    :try_start_0
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 883
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 884
    .end local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 887
    .local v3, "stringValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not deserialize node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 888
    .end local v3    # "stringValue":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 889
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to serialize values to utf-8: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private joinBytes(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)[B"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .line 860
    .local v4, "totalSize":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 861
    .local v3, "payload":[B
    array-length v5, v3

    add-int/2addr v4, v5

    .line 862
    goto :goto_0

    .line 863
    .end local v3    # "payload":[B
    :cond_0
    new-array v0, v4, [B

    .line 864
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 865
    .local v1, "currentBytePosition":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 866
    .restart local v3    # "payload":[B
    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    array-length v5, v3

    add-int/2addr v1, v5

    .line 868
    goto :goto_1

    .line 869
    .end local v3    # "payload":[B
    :cond_1
    return-object v0
.end method

.method private loadNested(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 38
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 709
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v17, "pathStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v18, "payloads":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 713
    .local v24, "queryStart":J
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "path"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const-string v35, "value"

    aput-object v35, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 714
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v22, v34, v24

    .line 715
    .local v22, "queryDuration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 717
    .local v14, "loadingStart":J
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 718
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 722
    :catchall_0
    move-exception v33

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v33

    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v12, v34, v14

    .line 725
    .local v12, "loadingDuration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 727
    .local v30, "serializingStart":J
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v11

    .line 728
    .local v11, "node":Lcom/firebase/client/snapshot/Node;
    const/16 v27, 0x0

    .line 729
    .local v27, "sawDescendant":Z
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 730
    .local v19, "priorities":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v9, v0, :cond_7

    .line 733
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, ".part-0000"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 736
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 737
    .local v16, "pathString":Ljava/lang/String;
    new-instance v26, Lcom/firebase/client/core/Path;

    const/16 v33, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v34

    const-string v35, ".part-0000"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    sub-int v34, v34, v35

    move-object/from16 v0, v16

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 738
    .local v26, "savedPath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v9}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->splitNodeRunLength(Lcom/firebase/client/core/Path;Ljava/util/List;I)I

    move-result v32

    .line 739
    .local v32, "splitNodeRunLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v33

    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Loading split node with "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " parts."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 740
    :cond_1
    add-int v33, v9, v32

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-interface {v0, v9, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/firebase/client/snapshot/Node;

    move-result-object v21

    .line 742
    .local v21, "savedNode":Lcom/firebase/client/snapshot/Node;
    add-int v33, v9, v32

    add-int/lit8 v9, v33, -0x1

    .line 747
    .end local v16    # "pathString":Ljava/lang/String;
    .end local v32    # "splitNodeRunLength":I
    :goto_2
    invoke-virtual/range {v26 .. v26}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v33

    if-eqz v33, :cond_3

    invoke-virtual/range {v26 .. v26}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v33

    if-eqz v33, :cond_3

    .line 749
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 744
    .end local v21    # "savedNode":Lcom/firebase/client/snapshot/Node;
    .end local v26    # "savedPath":Lcom/firebase/client/core/Path;
    :cond_2
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/firebase/client/snapshot/Node;

    move-result-object v21

    .line 745
    .restart local v21    # "savedNode":Lcom/firebase/client/snapshot/Node;
    new-instance v26, Lcom/firebase/client/core/Path;

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .restart local v26    # "savedPath":Lcom/firebase/client/core/Path;
    goto :goto_2

    .line 750
    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 751
    if-nez v27, :cond_4

    const/16 v33, 0x1

    :goto_4
    const-string v34, "Descendants of path must come after ancestors."

    invoke-static/range {v33 .. v34}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 752
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    goto :goto_3

    .line 751
    :cond_4
    const/16 v33, 0x0

    goto :goto_4

    .line 753
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 754
    const/16 v27, 0x1

    .line 755
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v4

    .line 756
    .local v4, "childPath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, v21

    invoke-interface {v11, v4, v0}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    .line 757
    goto :goto_3

    .line 758
    .end local v4    # "childPath":Lcom/firebase/client/core/Path;
    :cond_6
    new-instance v33, Ljava/lang/IllegalStateException;

    const-string v34, "Loading an unrelated row with path %s for %s"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v26, v35, v36

    const/16 v36, 0x1

    aput-object p1, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 763
    .end local v21    # "savedNode":Lcom/firebase/client/snapshot/Node;
    .end local v26    # "savedPath":Lcom/firebase/client/core/Path;
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 764
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/firebase/client/core/Path;

    .line 765
    .local v20, "priorityPath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v34

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/firebase/client/snapshot/Node;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-interface {v11, v0, v1}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    .line 766
    goto :goto_5

    .line 768
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    .end local v20    # "priorityPath":Lcom/firebase/client/core/Path;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v28, v34, v30

    .line 769
    .local v28, "serializeDuration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v6, v34, v24

    .line 770
    .local v6, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v33

    if-eqz v33, :cond_9

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    move-object/from16 v33, v0

    const-string v34, "Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)"

    const/16 v35, 0x7

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    invoke-static {v11}, Lcom/firebase/client/utilities/NodeSizeEstimator;->nodeCount(Lcom/firebase/client/snapshot/Node;)I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    aput-object p1, v35, v36

    const/16 v36, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x6

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 775
    :cond_9
    return-object v11
.end method

.method private loadNestedQuery(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 796
    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v9

    .line 797
    .local v9, "pathPrefixStart":Ljava/lang/String;
    invoke-static {v9}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "pathPrefixEnd":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 800
    .local v4, "arguments":[Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->buildAncestorWhereClause(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, "whereClause":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR (path > ? AND path < ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 802
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aput-object v9, v4, v0

    .line 803
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    aput-object v8, v4, v0

    .line 804
    const-string v7, "path"

    .line 806
    .local v7, "orderBy":Ljava/lang/String;
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serverCache"

    move-object v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private partKey(Lcom/firebase/client/core/Path;I)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "i"    # I

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".part-%04d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 818
    sget-boolean v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Path keys must end with a \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 819
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const-string v0, "/"

    .line 813
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pruneTreeRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/persistence/PruneForest;Ljava/util/List;)V
    .locals 20
    .param p1, "pruneRoot"    # Lcom/firebase/client/core/Path;
    .param p2, "relativePath"    # Lcom/firebase/client/core/Path;
    .param p5, "pruneForest"    # Lcom/firebase/client/core/persistence/PruneForest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/firebase/client/core/persistence/PruneForest;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/utilities/Pair",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p3, "rowIdsToPrune":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Long;>;"
    .local p4, "rowIdsToKeep":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Long;>;"
    .local p6, "rowsToResaveAccumulator":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/utilities/Pair<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 572
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v3, v0, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;-><init>(Lcom/firebase/client/android/SqlPersistenceStorageEngine;Lcom/firebase/client/core/utilities/ImmutableTree;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/firebase/client/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 579
    .local v19, "nodesToResave":I
    if-lez v19, :cond_1

    .line 580
    invoke-virtual/range {p1 .. p2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v15

    .line 581
    .local v15, "absolutePath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Need to rewrite %d nodes below path %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 582
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNested(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 583
    .local v7, "currentNode":Lcom/firebase/client/snapshot/Node;
    const/4 v8, 0x0

    new-instance v2, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;-><init>(Lcom/firebase/client/android/SqlPersistenceStorageEngine;Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/List;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v2}, Lcom/firebase/client/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    .line 603
    .end local v7    # "currentNode":Lcom/firebase/client/snapshot/Node;
    .end local v15    # "absolutePath":Lcom/firebase/client/core/Path;
    .end local v19    # "nodesToResave":I
    :cond_1
    return-void

    .line 596
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 597
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Long;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/firebase/client/snapshot/ChildKey;

    .line 598
    .local v16, "childKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/persistence/PruneForest;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object v13

    .line 599
    .local v13, "childPruneForest":Lcom/firebase/client/core/persistence/PruneForest;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v10

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/firebase/client/core/utilities/ImmutableTree;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v12

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/persistence/PruneForest;Ljava/util/List;)V

    goto :goto_0
.end method

.method private removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 840
    const-string v1, "path >= ? AND path < ?"

    .line 841
    .local v1, "pathPrefixQuery":Ljava/lang/String;
    invoke-static {p2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, "pathPrefixStart":Ljava/lang/String;
    invoke-static {v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "pathPrefixEnd":Ljava/lang/String;
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I
    .locals 10
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    const/4 v4, 0x1

    .line 655
    invoke-static {p2}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/firebase/client/snapshot/Node;)J

    move-result-wide v2

    .line 656
    .local v2, "estimatedSize":J
    instance-of v5, p2, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v5, :cond_3

    const-wide/16 v6, 0x4000

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 657
    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v6, "Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    const/16 v9, 0x4000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 659
    :cond_0
    const/4 v4, 0x0

    .line 660
    .local v4, "sum":I
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 661
    .local v0, "child":Lcom/firebase/client/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v5

    add-int/2addr v4, v5

    .line 662
    goto :goto_0

    .line 663
    .end local v0    # "child":Lcom/firebase/client/snapshot/NamedNode;
    :cond_1
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-interface {v5}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 664
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 665
    add-int/lit8 v4, v4, 0x1

    .line 669
    :cond_2
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 670
    add-int/lit8 v4, v4, 0x1

    .line 675
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "sum":I
    :goto_1
    return v4

    .line 674
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_1
.end method

.method private saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 9
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x40000

    const/4 v7, 0x5

    .line 684
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v2

    .line 685
    .local v2, "serialized":[B
    array-length v4, v2

    if-lt v4, v5, :cond_1

    .line 686
    invoke-static {v2, v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object v1

    .line 687
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v4}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving huge leaf node with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parts."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 688
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 689
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 690
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "path"

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->partKey(Lcom/firebase/client/core/Path;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v5, "value"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 692
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "serverCache"

    invoke-virtual {v4, v5, v8, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "i":I
    .end local v1    # "parts":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 696
    .restart local v3    # "values":Landroid/content/ContentValues;
    const-string v4, "path"

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v4, "value"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 698
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "serverCache"

    invoke-virtual {v4, v5, v8, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 700
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private saveWrite(Lcom/firebase/client/core/Path;JLjava/lang/String;[B)V
    .locals 10
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "writeId"    # J
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "serializedWrite"    # [B

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 285
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "writes"

    const-string v5, "id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    array-length v3, p5

    const/high16 v4, 0x40000

    if-lt v3, v4, :cond_0

    .line 287
    const/high16 v3, 0x40000

    invoke-static {p5, v3}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 289
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v3, "path"

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "type"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v3, "part"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v4, "node"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 295
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "writes"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "i":I
    .end local v1    # "parts":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .restart local v2    # "values":Landroid/content/ContentValues;
    const-string v3, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v3, "path"

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v3, "type"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v4, "part"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v3, "node"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 304
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "writes"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 306
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private serializeObject(Ljava/lang/Object;)[B
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not serialize leaf node"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static splitBytes([BI)Ljava/util/List;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 847
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, p1

    add-int/lit8 v4, v5, 0x1

    .line 848
    .local v4, "parts":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 849
    .local v3, "partList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 850
    array-length v5, p0

    mul-int v6, v0, p1

    sub-int/2addr v5, v6

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 851
    .local v1, "length":I
    new-array v2, v1, [B

    .line 852
    .local v2, "part":[B
    mul-int v5, v0, p1

    const/4 v6, 0x0

    invoke-static {p0, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    .end local v1    # "length":I
    .end local v2    # "part":[B
    :cond_0
    return-object v3
.end method

.method private splitNodeRunLength(Lcom/firebase/client/core/Path;Ljava/util/List;I)I
    .locals 5
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 779
    .local p2, "pathStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v0, p3, 0x1

    .line 780
    .local v0, "endPosition":I
    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "pathPrefix":Ljava/lang/String;
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 782
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Extracting split nodes needs to start with path prefix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 784
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sub-int v3, v0, p3

    invoke-direct {p0, p1, v3}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->partKey(Lcom/firebase/client/core/Path;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".part-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Run did not finish with all parts"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 792
    :cond_2
    sub-int v2, v0, p3

    return v2
.end method

.method private updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V
    .locals 13
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "merge"    # Z

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 329
    .local v6, "start":J
    if-nez p3, :cond_2

    .line 330
    const-string v8, "serverCache"

    invoke-direct {p0, v8, p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I

    move-result v4

    .line 331
    .local v4, "removedRows":I
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v5

    .line 340
    .local v5, "savedRows":I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 341
    .local v2, "duration":J
    iget-object v8, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v8}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v9, "Persisted a total of %d rows and deleted %d rows for a set at %s in %dms"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 342
    :cond_1
    return-void

    .line 333
    .end local v2    # "duration":J
    .end local v4    # "removedRows":I
    .end local v5    # "savedRows":I
    :cond_2
    const/4 v4, 0x0

    .line 334
    .restart local v4    # "removedRows":I
    const/4 v5, 0x0

    .line 335
    .restart local v5    # "savedRows":I
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 336
    .local v0, "child":Lcom/firebase/client/snapshot/NamedNode;
    const-string v8, "serverCache"

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I

    move-result v8

    add-int/2addr v4, v8

    .line 337
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v8

    add-int/2addr v5, v8

    .line 338
    goto :goto_0
.end method

.method private verifyInsideTransaction()V
    .locals 2

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 644
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 624
    iget-boolean v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v2, "Starting transaction."

    invoke-virtual {v0, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 627
    iput-boolean v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->transactionStart:J

    .line 629
    return-void

    .line 624
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteTrackedQuery(J)V
    .locals 9
    .param p1, "trackedQueryId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 392
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "trackedQueryIdStr":Ljava/lang/String;
    const-string v1, "id = ?"

    .line 394
    .local v1, "queriesWhereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "trackedQueries"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    const-string v0, "id = ?"

    .line 397
    .local v0, "keysWhereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "trackedKeys"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public endTransaction()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 632
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 633
    iput-boolean v6, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->transactionStart:J

    sub-long v0, v2, v4

    .line 635
    .local v0, "elapsed":J
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Transaction completed. Elapsed: %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 636
    :cond_0
    return-void
.end method

.method public loadTrackedQueries()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "path"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "queryParams"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "lastUse"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "complete"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "active"

    aput-object v3, v4, v2

    .line 404
    .local v4, "columns":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 405
    .local v22, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedQueries"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 407
    .local v14, "cursor":Landroid/database/Cursor;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v21, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/persistence/TrackedQuery;>;"
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 411
    .local v7, "id":J
    new-instance v20, Lcom/firebase/client/core/Path;

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 412
    .local v20, "path":Lcom/firebase/client/core/Path;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    .line 415
    .local v19, "paramsStr":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 420
    .local v18, "paramsObject":Ljava/lang/Object;
    :try_start_2
    check-cast v18, Ljava/util/Map;

    .end local v18    # "paramsObject":Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/firebase/client/core/view/QuerySpec;->fromPathAndQueryObject(Lcom/firebase/client/core/Path;Ljava/util/Map;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v9

    .line 421
    .local v9, "query":Lcom/firebase/client/core/view/QuerySpec;
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 422
    .local v10, "lastUse":J
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v12, 0x1

    .line 423
    .local v12, "complete":Z
    :goto_1
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    .line 424
    .local v13, "active":Z
    :goto_2
    new-instance v6, Lcom/firebase/client/core/persistence/TrackedQuery;

    invoke-direct/range {v6 .. v13}, Lcom/firebase/client/core/persistence/TrackedQuery;-><init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V

    .line 425
    .local v6, "trackedQuery":Lcom/firebase/client/core/persistence/TrackedQuery;
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 431
    .end local v6    # "trackedQuery":Lcom/firebase/client/core/persistence/TrackedQuery;
    .end local v7    # "id":J
    .end local v9    # "query":Lcom/firebase/client/core/view/QuerySpec;
    .end local v10    # "lastUse":J
    .end local v12    # "complete":Z
    .end local v13    # "active":Z
    .end local v19    # "paramsStr":Ljava/lang/String;
    .end local v20    # "path":Lcom/firebase/client/core/Path;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 416
    .restart local v7    # "id":J
    .restart local v19    # "paramsStr":Ljava/lang/String;
    .restart local v20    # "path":Lcom/firebase/client/core/Path;
    :catch_0
    move-exception v15

    .line 417
    .local v15, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 422
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v9    # "query":Lcom/firebase/client/core/view/QuerySpec;
    .restart local v10    # "lastUse":J
    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    .line 423
    .restart local v12    # "complete":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 427
    .end local v7    # "id":J
    .end local v9    # "query":Lcom/firebase/client/core/view/QuerySpec;
    .end local v10    # "lastUse":J
    .end local v12    # "complete":Z
    .end local v19    # "paramsStr":Ljava/lang/String;
    .end local v20    # "path":Lcom/firebase/client/core/Path;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v22

    .line 428
    .local v16, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Loaded %d tracked queries in %dms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v5, v24

    const/16 v24, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v5, v24

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    return-object v21
.end method

.method public loadTrackedQueryKeys(J)Ljava/util/Set;
    .locals 1
    .param p1, "trackedQueryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "trackedQueryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "key"

    aput-object v3, v5, v2

    .line 498
    .local v5, "columns":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 499
    .local v18, "start":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    const-string v4, "trackedKeys"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 502
    .local v12, "cursor":Landroid/database/Cursor;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 504
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 506
    .local v13, "key":Ljava/lang/String;
    invoke-static {v13}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 512
    .end local v13    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 508
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v18

    .line 509
    .local v14, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Loaded %d tracked queries keys for tracked queries %s in %dms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-object v16
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "path"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "type"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "part"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "node"

    aput-object v3, v4, v2

    .line 236
    .local v4, "columns":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 237
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "id, part"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 239
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v22, "writes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/UserWriteRecord;>;"
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 242
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 243
    .local v6, "writeId":J
    new-instance v8, Lcom/firebase/client/core/Path;

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 244
    .local v8, "path":Lcom/firebase/client/core/Path;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 246
    .local v20, "type":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 259
    .local v17, "serialized":[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    .line 261
    .local v21, "writeValue":Ljava/lang/Object;
    const-string v2, "o"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    invoke-static/range {v21 .. v21}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v9

    .line 263
    .local v9, "set":Lcom/firebase/client/snapshot/Node;
    new-instance v5, Lcom/firebase/client/core/UserWriteRecord;

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    .line 271
    .end local v9    # "set":Lcom/firebase/client/snapshot/Node;
    .end local v21    # "writeValue":Ljava/lang/Object;
    .local v5, "record":Lcom/firebase/client/core/UserWriteRecord;
    :goto_2
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    .end local v5    # "record":Lcom/firebase/client/core/UserWriteRecord;
    .end local v6    # "writeId":J
    .end local v8    # "path":Lcom/firebase/client/core/Path;
    .end local v17    # "serialized":[B
    .end local v20    # "type":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 277
    .local v14, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load writes"

    invoke-direct {v2, v3, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 251
    .restart local v6    # "writeId":J
    .restart local v8    # "path":Lcom/firebase/client/core/Path;
    .restart local v20    # "type":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v16, "parts":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 256
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v17

    .restart local v17    # "serialized":[B
    goto :goto_1

    .line 264
    .end local v16    # "parts":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v21    # "writeValue":Ljava/lang/Object;
    :cond_3
    const-string v2, "m"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 266
    check-cast v21, Ljava/util/Map;

    .end local v21    # "writeValue":Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/firebase/client/core/CompoundWrite;->fromValue(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v15

    .line 267
    .local v15, "merge":Lcom/firebase/client/core/CompoundWrite;
    new-instance v5, Lcom/firebase/client/core/UserWriteRecord;

    invoke-direct {v5, v6, v7, v8, v15}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    .line 268
    .restart local v5    # "record":Lcom/firebase/client/core/UserWriteRecord;
    goto :goto_2

    .line 269
    .end local v5    # "record":Lcom/firebase/client/core/UserWriteRecord;
    .end local v15    # "merge":Lcom/firebase/client/core/CompoundWrite;
    .restart local v21    # "writeValue":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got invalid write type: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    .end local v6    # "writeId":J
    .end local v8    # "path":Lcom/firebase/client/core/Path;
    .end local v17    # "serialized":[B
    .end local v20    # "type":Ljava/lang/String;
    .end local v21    # "writeValue":Ljava/lang/Object;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v18

    .line 274
    .local v12, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Loaded %d writes in %dms"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v10, v23

    const/16 v23, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v10, v23

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v22
.end method

.method public mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 13
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "children"    # Lcom/firebase/client/core/CompoundWrite;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 348
    .local v6, "start":J
    const/4 v5, 0x0

    .line 349
    .local v5, "savedRows":I
    const/4 v4, 0x0

    .line 350
    .local v4, "removedRows":I
    invoke-virtual {p2}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 351
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    const-string v9, "serverCache"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v8}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-direct {p0, v9, v8}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I

    move-result v8

    add-int/2addr v4, v8

    .line 352
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v8}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/firebase/client/snapshot/Node;

    invoke-direct {p0, v9, v8}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v8

    add-int/2addr v5, v8

    .line 353
    goto :goto_0

    .line 354
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 355
    .local v0, "duration":J
    iget-object v8, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v8}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v9, "Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 356
    :cond_1
    return-void
.end method

.method public mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    .line 323
    return-void
.end method

.method public overwriteServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    .line 317
    return-void
.end method

.method public pruneCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/persistence/PruneForest;)V
    .locals 25
    .param p1, "root"    # Lcom/firebase/client/core/Path;
    .param p2, "pruneForest"    # Lcom/firebase/client/core/persistence/PruneForest;

    .prologue
    .line 518
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/persistence/PruneForest;->prunesAnything()Z

    move-result v2

    if-nez v2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 522
    .local v22, "start":J
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rowid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 523
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v5, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 524
    .local v5, "rowIdsToPrune":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Long;>;"
    new-instance v6, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 525
    .local v6, "rowIdsToKeep":Lcom/firebase/client/core/utilities/ImmutableTree;, "Lcom/firebase/client/core/utilities/ImmutableTree<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 526
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 527
    .local v18, "rowId":J
    new-instance v20, Lcom/firebase/client/core/Path;

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 528
    .local v20, "rowPath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "We are pruning at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but we have data stored higher up at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 531
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v15

    .line 532
    .local v15, "relativePath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/firebase/client/core/persistence/PruneForest;->shouldPruneUnkeptDescendants(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v15, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v5

    goto :goto_1

    .line 534
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/firebase/client/core/persistence/PruneForest;->shouldKeep(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v15, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v6

    goto :goto_1

    .line 541
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "We are pruning at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and have data at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that isn\'t marked for pruning or keeping. Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 546
    .end local v15    # "relativePath":Lcom/firebase/client/core/Path;
    .end local v18    # "rowId":J
    .end local v20    # "rowPath":Lcom/firebase/client/core/Path;
    :cond_5
    const/4 v14, 0x0

    .local v14, "prunedCount":I
    const/16 v16, 0x0

    .line 547
    .local v16, "resavedCount":I
    invoke-virtual {v5}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 548
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v8, "rowsToResave":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/utilities/Pair<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;>;"
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/persistence/PruneForest;Ljava/util/List;)V

    .line 551
    invoke-virtual {v5}, Lcom/firebase/client/core/utilities/ImmutableTree;->values()Ljava/util/Collection;

    move-result-object v17

    .line 552
    .local v17, "rowIdsToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rowid IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 553
    .local v21, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "serverCache"

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/utilities/Pair;

    .line 556
    .local v13, "node":Lcom/firebase/client/utilities/Pair;, "Lcom/firebase/client/utilities/Pair<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-virtual {v13}, Lcom/firebase/client/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v13}, Lcom/firebase/client/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/Node;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    goto :goto_2

    .line 559
    .end local v13    # "node":Lcom/firebase/client/utilities/Pair;, "Lcom/firebase/client/utilities/Pair<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v14

    .line 560
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    .line 562
    .end local v8    # "rowsToResave":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/utilities/Pair<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "rowIdsToDelete":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .end local v21    # "whereClause":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v22

    .line 563
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Pruned %d rows with %d nodes resaved in %dms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v4, v7

    const/4 v7, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v4, v7

    const/4 v7, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public purgeCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 617
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serverCache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "writes"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedKeys"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method public removeAllUserWrites()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 607
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 609
    .local v4, "start":J
    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "writes"

    invoke-virtual {v1, v6, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 610
    .local v0, "count":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 611
    .local v2, "duration":J
    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v6, "Deleted %d (all) write(s) in %dms"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 612
    :cond_0
    return-void
.end method

.method public removeUserWrite(J)V
    .locals 13
    .param p1, "writeId"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 226
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 228
    .local v4, "start":J
    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "writes"

    const-string v7, "id = ?"

    new-array v8, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, "count":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 230
    .local v2, "duration":J
    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v6, "Deleted %d write(s) with writeId %d in %dms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public resetPreviouslyActiveTrackedQueries(J)V
    .locals 11
    .param p1, "lastUse"    # J

    .prologue
    const/4 v10, 0x0

    .line 437
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 440
    .local v8, "start":J
    const-string v3, "active = 1"

    .line 442
    .local v3, "whereClause":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .local v2, "values":Landroid/content/ContentValues;
    const-string v0, "active"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 444
    const-string v0, "lastUse"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v8

    .line 448
    .local v6, "duration":J
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Reset active tracked queries in %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method

.method public saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V
    .locals 10
    .param p1, "trackedQuery"    # Lcom/firebase/client/core/persistence/TrackedQuery;

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 377
    .local v2, "start":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "id"

    iget-wide v6, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    const-string v5, "path"

    iget-object v6, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v6}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-static {v6}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v5, "queryParams"

    iget-object v6, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v6}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/firebase/client/core/view/QueryParams;->toJSON()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v5, "lastUse"

    iget-wide v6, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string v5, "complete"

    iget-boolean v6, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 383
    const-string v5, "active"

    iget-boolean v6, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 384
    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "trackedQueries"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 386
    .local v0, "duration":J
    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v6, "Saved new tracked query in %dms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method public saveTrackedQueryKeys(JLjava/util/Set;)V
    .locals 15
    .param p1, "trackedQueryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p3, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 456
    .local v6, "start":J
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, "trackedQueryIdStr":Ljava/lang/String;
    const-string v4, "id = ?"

    .line 458
    .local v4, "keysWhereClause":Ljava/lang/String;
    iget-object v9, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "trackedKeys"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 461
    .local v0, "addedKey":Lcom/firebase/client/snapshot/ChildKey;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    const-string v9, "key"

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v9, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "trackedKeys"

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 467
    .end local v0    # "addedKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v6

    .line 468
    .local v2, "duration":J
    iget-object v9, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v9}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v10, "Set %d tracked query keys for tracked query %d in %dms"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 469
    :cond_1
    return-void
.end method

.method public saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V
    .locals 11
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "children"    # Lcom/firebase/client/core/CompoundWrite;
    .param p3, "writeId"    # J

    .prologue
    const/4 v10, 0x1

    .line 216
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 218
    .local v8, "start":J
    invoke-virtual {p2, v10}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 219
    .local v5, "serializedNode":[B
    const-string v4, "m"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/firebase/client/core/Path;JLjava/lang/String;[B)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v8

    .line 221
    .local v6, "duration":J
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Persisted user merge in %dms"

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V
    .locals 11
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "node"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "writeId"    # J

    .prologue
    const/4 v10, 0x1

    .line 206
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 208
    .local v8, "start":J
    invoke-interface {p2, v10}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 209
    .local v5, "serializedNode":[B
    const-string v4, "o"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/firebase/client/core/Path;JLjava/lang/String;[B)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v8

    .line 211
    .local v6, "duration":J
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Persisted user overwrite in %dms"

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public serverCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNested(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public serverCacheEstimatedSizeInBytes()J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 360
    const-string v2, "SELECT sum(length(%s) + length(%s)) FROM %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "value"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "path"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "serverCache"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "query":Ljava/lang/String;
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 363
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 369
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v2

    .line 366
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Couldn\'t read database result!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 640
    return-void
.end method

.method public updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V
    .locals 15
    .param p1, "trackedQueryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p3, "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    .local p4, "removed":Ljava/util/Set;, "Ljava/util/Set<Lcom/firebase/client/snapshot/ChildKey;>;"
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 475
    .local v6, "start":J
    const-string v9, "id = ? AND key = ?"

    .line 476
    .local v9, "whereClause":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "trackedQueryIdStr":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/ChildKey;

    .line 478
    .local v4, "removedKey":Lcom/firebase/client/snapshot/ChildKey;
    iget-object v10, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "trackedKeys"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 480
    .end local v4    # "removedKey":Lcom/firebase/client/snapshot/ChildKey;
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 481
    .local v0, "addedKey":Lcom/firebase/client/snapshot/ChildKey;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v8, "values":Landroid/content/ContentValues;
    const-string v10, "id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    const-string v10, "key"

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v10, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "trackedKeys"

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v10, v11, v12, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    .line 486
    .end local v0    # "addedKey":Lcom/firebase/client/snapshot/ChildKey;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v6

    .line 487
    .local v2, "duration":J
    iget-object v10, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v10}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v11, "Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 488
    :cond_2
    return-void
.end method
