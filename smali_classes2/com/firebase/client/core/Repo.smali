.class public Lcom/firebase/client/core/Repo;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/Repo$TransactionData;,
        Lcom/firebase/client/core/Repo$TransactionStatus;,
        Lcom/firebase/client/core/Repo$FirebaseAppImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TRANSACTION_MAX_RETRIES:I = 0x19

.field private static final TRANSACTION_OVERRIDE_BY_SET:Ljava/lang/String; = "overriddenBySet"

.field private static final TRANSACTION_TOO_MANY_RETRIES:Ljava/lang/String; = "maxretries"


# instance fields
.field private app:Lcom/firebase/client/FirebaseApp;

.field private final authenticationManager:Lcom/firebase/client/authentication/AuthenticationManager;

.field private final connection:Lcom/firebase/client/core/PersistentConnection;

.field private final ctx:Lcom/firebase/client/core/Context;

.field private final dataLogger:Lcom/firebase/client/utilities/LogWrapper;

.field public dataUpdateCount:J

.field private final eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

.field private hijackHash:Z

.field private infoData:Lcom/firebase/client/core/SnapshotHolder;

.field private infoSyncTree:Lcom/firebase/client/core/SyncTree;

.field private loggedTransactionPersistenceWarning:Z

.field private nextWriteId:J

.field private onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

.field private final operationLogger:Lcom/firebase/client/utilities/LogWrapper;

.field private final repoInfo:Lcom/firebase/client/core/RepoInfo;

.field private final serverClock:Lcom/firebase/client/utilities/OffsetClock;

.field private serverSyncTree:Lcom/firebase/client/core/SyncTree;

.field private final transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

.field private transactionOrder:J

.field private transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/firebase/client/core/Repo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/Repo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/Context;)V
    .locals 5
    .param p1, "repoInfo"    # Lcom/firebase/client/core/RepoInfo;
    .param p2, "ctx"    # Lcom/firebase/client/core/Context;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/firebase/client/utilities/OffsetClock;

    new-instance v1, Lcom/firebase/client/utilities/DefaultClock;

    invoke-direct {v1}, Lcom/firebase/client/utilities/DefaultClock;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/utilities/OffsetClock;-><init>(Lcom/firebase/client/utilities/Clock;J)V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    .line 30
    iput-boolean v4, p0, Lcom/firebase/client/core/Repo;->hijackHash:Z

    .line 36
    iput-wide v2, p0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    .line 37
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/firebase/client/core/Repo;->nextWriteId:J

    .line 41
    iput-boolean v4, p0, Lcom/firebase/client/core/Repo;->loggedTransactionPersistenceWarning:Z

    .line 562
    iput-wide v2, p0, Lcom/firebase/client/core/Repo;->transactionOrder:J

    .line 50
    iput-object p1, p0, Lcom/firebase/client/core/Repo;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 51
    iput-object p2, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    .line 52
    new-instance v0, Lcom/firebase/client/core/Repo$FirebaseAppImpl;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/Repo$FirebaseAppImpl;-><init>(Lcom/firebase/client/core/Repo;)V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->app:Lcom/firebase/client/FirebaseApp;

    .line 54
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    const-string v1, "RepoOperation"

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    .line 55
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    const-string v1, "Transaction"

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

    .line 56
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    const-string v1, "DataOperation"

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    .line 58
    new-instance v0, Lcom/firebase/client/core/view/EventRaiser;

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-direct {v0, v1}, Lcom/firebase/client/core/view/EventRaiser;-><init>(Lcom/firebase/client/core/Context;)V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

    .line 60
    new-instance v0, Lcom/firebase/client/core/PersistentConnection;

    invoke-direct {v0, p2, p1, p0}, Lcom/firebase/client/core/PersistentConnection;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/PersistentConnection$Delegate;)V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    .line 61
    new-instance v0, Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/firebase/client/authentication/AuthenticationManager;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/PersistentConnection;)V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->authenticationManager:Lcom/firebase/client/authentication/AuthenticationManager;

    .line 65
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->authenticationManager:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-virtual {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->resumeSession()V

    .line 68
    new-instance v0, Lcom/firebase/client/core/Repo$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/Repo$1;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method private abortTransactions(Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;
    .locals 5
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "reason"    # I

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->getAncestorTransactionNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 1028
    .local v0, "affectedPath":Lcom/firebase/client/core/Path;
    iget-object v2, p0, Lcom/firebase/client/core/Repo;->transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborting transactions for path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Affected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 1030
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    .line 1031
    .local v1, "transactionNode":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    new-instance v2, Lcom/firebase/client/core/Repo$20;

    invoke-direct {v2, p0, p2}, Lcom/firebase/client/core/Repo$20;-><init>(Lcom/firebase/client/core/Repo;I)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/Tree;->forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;)Z

    .line 1039
    invoke-direct {p0, v1, p2}, Lcom/firebase/client/core/Repo;->abortTransactionsAtNode(Lcom/firebase/client/core/utilities/Tree;I)V

    .line 1041
    new-instance v2, Lcom/firebase/client/core/Repo$21;

    invoke-direct {v2, p0, p2}, Lcom/firebase/client/core/Repo$21;-><init>(Lcom/firebase/client/core/Repo;I)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    .line 1048
    return-object v0
.end method

.method private abortTransactionsAtNode(Lcom/firebase/client/core/utilities/Tree;I)V
    .locals 17
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "node":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 1053
    .local v14, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v10, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    if-eqz v14, :cond_a

    .line 1056
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v9, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const/16 v3, -0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 1059
    const-string v3, "overriddenBySet"

    invoke-static {v3}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v2

    .line 1065
    .local v2, "abortError":Lcom/firebase/client/FirebaseError;
    :goto_0
    const/4 v13, -0x1

    .line 1066
    .local v13, "lastSent":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_8

    .line 1067
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/firebase/client/core/Repo$TransactionData;

    .line 1068
    .local v16, "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-static/range {v16 .. v16}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v3, v4, :cond_2

    .line 1066
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1061
    .end local v2    # "abortError":Lcom/firebase/client/FirebaseError;
    .end local v11    # "i":I
    .end local v13    # "lastSent":I
    .end local v16    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_0
    const/16 v3, -0x19

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown transaction abort reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 1062
    const/16 v3, -0x19

    invoke-static {v3}, Lcom/firebase/client/FirebaseError;->fromCode(I)Lcom/firebase/client/FirebaseError;

    move-result-object v2

    .restart local v2    # "abortError":Lcom/firebase/client/FirebaseError;
    goto :goto_0

    .line 1061
    .end local v2    # "abortError":Lcom/firebase/client/FirebaseError;
    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    .line 1070
    .restart local v2    # "abortError":Lcom/firebase/client/FirebaseError;
    .restart local v11    # "i":I
    .restart local v13    # "lastSent":I
    .restart local v16    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v3, v4, :cond_4

    .line 1071
    sget-boolean v3, Lcom/firebase/client/core/Repo;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    add-int/lit8 v3, v11, -0x1

    if-eq v13, v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1072
    :cond_3
    move v13, v11

    .line 1074
    sget-object v3, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 1075
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$2602(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/FirebaseError;

    goto :goto_2

    .line 1077
    :cond_4
    sget-boolean v3, Lcom/firebase/client/core/Repo;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    invoke-static/range {v16 .. v16}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-eq v3, v4, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1079
    :cond_5
    new-instance v3, Lcom/firebase/client/core/ValueEventRegistration;

    invoke-static/range {v16 .. v16}, Lcom/firebase/client/core/Repo$TransactionData;->access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-static {v5}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/core/EventRegistration;)V

    .line 1081
    const/16 v3, -0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-static/range {v16 .. v16}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-virtual/range {v3 .. v8}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1087
    :goto_4
    new-instance v3, Lcom/firebase/client/core/Repo$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1, v2}, Lcom/firebase/client/core/Repo$22;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1084
    :cond_6
    const/16 v3, -0x19

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown transaction abort reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 1096
    .end local v16    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_8
    const/4 v3, -0x1

    if-ne v13, v3, :cond_9

    .line 1098
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 1105
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 1106
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Runnable;

    .line 1107
    .local v15, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/firebase/client/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 1101
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "r":Ljava/lang/Runnable;
    :cond_9
    const/4 v3, 0x0

    add-int/lit8 v4, v13, 0x1

    invoke-interface {v14, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    goto :goto_6

    .line 1110
    .end local v2    # "abortError":Lcom/firebase/client/FirebaseError;
    .end local v9    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v11    # "i":I
    .end local v13    # "lastSent":I
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/Repo;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->deferredInitialization()V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SnapshotHolder;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->infoData:Lcom/firebase/client/core/SnapshotHolder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Lcom/firebase/client/core/utilities/Tree;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->sendReadyTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/utilities/OffsetClock;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/utilities/Tree;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Lcom/firebase/client/core/utilities/Tree;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/firebase/client/core/Repo;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->sendAllReadyTransactions()V

    return-void
.end method

.method static synthetic access$2800(Lcom/firebase/client/core/Repo;Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/firebase/client/core/utilities/Tree;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;I)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Lcom/firebase/client/core/utilities/Tree;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/Repo;->abortTransactionsAtNode(Lcom/firebase/client/core/utilities/Tree;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/firebase/client/core/Repo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/PersistentConnection;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/firebase/client/core/Repo;Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/firebase/client/core/Path;
    .param p3, "x3"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/Repo;->warnIfWriteFailed(Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    return-void
.end method

.method static synthetic access$600(Lcom/firebase/client/core/Repo;JLcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/firebase/client/core/Path;
    .param p4, "x3"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/core/Repo;->ackWriteAndRerunTransactions(JLcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    return-void
.end method

.method static synthetic access$700(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SparseSnapshotTree;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    return-object v0
.end method

.method static synthetic access$800(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    return-object v0
.end method

.method static synthetic access$900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/Repo;
    .param p1, "x1"    # Lcom/firebase/client/core/Path;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;

    move-result-object v0

    return-object v0
.end method

.method private ackWriteAndRerunTransactions(JLcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V
    .locals 9
    .param p1, "writeId"    # J
    .param p3, "path"    # Lcom/firebase/client/core/Path;
    .param p4, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 302
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v1

    const/16 v3, -0x19

    if-ne v1, v3, :cond_0

    .line 312
    :goto_0
    return-void

    .line 305
    :cond_0
    if-nez p4, :cond_2

    move v7, v5

    .line 306
    .local v7, "success":Z
    :goto_1
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    if-nez v7, :cond_3

    move v4, v5

    :goto_2
    iget-object v6, p0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v0

    .line 307
    .local v0, "clearEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 308
    invoke-direct {p0, p3}, Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 310
    :cond_1
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    goto :goto_0

    .end local v0    # "clearEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    .end local v7    # "success":Z
    :cond_2
    move v7, v2

    .line 305
    goto :goto_1

    .restart local v7    # "success":Z
    :cond_3
    move v4, v2

    .line 306
    goto :goto_2
.end method

.method private aggregateTransactionQueues(Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    .local p2, "node":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1013
    .local v0, "childQueue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1017
    :cond_0
    new-instance v1, Lcom/firebase/client/core/Repo$19;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/Repo$19;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    .line 1023
    return-void
.end method

.method private buildTransactionQueue(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, "transactionNode":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    invoke-direct {p0, v0, p1}, Lcom/firebase/client/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V

    .line 1006
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1008
    return-object v0
.end method

.method private deferredInitialization()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v3, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v3}, Lcom/firebase/client/core/PersistentConnection;->establishConnection()V

    .line 84
    iget-object v3, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    iget-object v4, p0, Lcom/firebase/client/core/Repo;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iget-object v4, v4, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/Context;->getPersistenceManager(Ljava/lang/String;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v1

    .line 86
    .local v1, "persistenceManager":Lcom/firebase/client/core/persistence/PersistenceManager;
    new-instance v3, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v3}, Lcom/firebase/client/core/SnapshotHolder;-><init>()V

    iput-object v3, p0, Lcom/firebase/client/core/Repo;->infoData:Lcom/firebase/client/core/SnapshotHolder;

    .line 87
    new-instance v3, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-direct {v3}, Lcom/firebase/client/core/SparseSnapshotTree;-><init>()V

    iput-object v3, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    .line 89
    new-instance v3, Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {v3}, Lcom/firebase/client/core/utilities/Tree;-><init>()V

    iput-object v3, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    .line 91
    new-instance v3, Lcom/firebase/client/core/SyncTree;

    iget-object v4, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    new-instance v5, Lcom/firebase/client/core/persistence/NoopPersistenceManager;

    invoke-direct {v5}, Lcom/firebase/client/core/persistence/NoopPersistenceManager;-><init>()V

    new-instance v6, Lcom/firebase/client/core/Repo$2;

    invoke-direct {v6, p0}, Lcom/firebase/client/core/Repo$2;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/firebase/client/core/SyncTree;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/persistence/PersistenceManager;Lcom/firebase/client/core/SyncTree$ListenProvider;)V

    iput-object v3, p0, Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;

    .line 114
    new-instance v3, Lcom/firebase/client/core/SyncTree;

    iget-object v4, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    new-instance v5, Lcom/firebase/client/core/Repo$3;

    invoke-direct {v5, p0}, Lcom/firebase/client/core/Repo$3;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-direct {v3, v4, v1, v5}, Lcom/firebase/client/core/SyncTree;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/persistence/PersistenceManager;Lcom/firebase/client/core/SyncTree$ListenProvider;)V

    iput-object v3, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    .line 132
    invoke-direct {p0, v1}, Lcom/firebase/client/core/Repo;->restoreWrites(Lcom/firebase/client/core/persistence/PersistenceManager;)V

    .line 134
    iget-object v3, p0, Lcom/firebase/client/core/Repo;->authenticationManager:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-virtual {v3}, Lcom/firebase/client/authentication/AuthenticationManager;->getAuth()Lcom/firebase/client/AuthData;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 135
    .local v0, "authenticated":Z
    :goto_0
    sget-object v3, Lcom/firebase/client/core/Constants;->DOT_INFO_AUTHENTICATED:Lcom/firebase/client/snapshot/ChildKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/firebase/client/core/Repo;->updateInfo(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 136
    sget-object v3, Lcom/firebase/client/core/Constants;->DOT_INFO_CONNECTED:Lcom/firebase/client/snapshot/ChildKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/firebase/client/core/Repo;->updateInfo(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 137
    return-void

    .end local v0    # "authenticated":Z
    :cond_0
    move v0, v2

    .line 134
    goto :goto_0
.end method

.method private getAncestorTransactionNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;
    .locals 5
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    .line 994
    .local v0, "transactionNode":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 995
    new-instance v1, Lcom/firebase/client/core/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v0

    .line 996
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    goto :goto_0

    .line 999
    :cond_0
    return-object v0
.end method

.method private getLatestState(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/core/Repo;->getLatestState(Lcom/firebase/client/core/Path;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method private getLatestState(Lcom/firebase/client/core/Path;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 696
    .local p2, "excudeSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v1, p1, p2}, Lcom/firebase/client/core/SyncTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 697
    .local v0, "state":Lcom/firebase/client/snapshot/Node;
    if-nez v0, :cond_0

    .line 698
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    .line 700
    :cond_0
    return-object v0
.end method

.method private getNextWriteId()J
    .locals 4

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/firebase/client/core/Repo;->nextWriteId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/firebase/client/core/Repo;->nextWriteId:J

    return-wide v0
.end method

.method private nextTransactionOrder()J
    .locals 4

    .prologue
    .line 861
    iget-wide v0, p0, Lcom/firebase/client/core/Repo;->transactionOrder:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/firebase/client/core/Repo;->transactionOrder:J

    return-wide v0
.end method

.method private postEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/EventRaiser;->raiseEvents(Ljava/util/List;)V

    .line 204
    :cond_0
    return-void
.end method

.method private pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 834
    .local p1, "node":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 835
    .local v1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    if-eqz v1, :cond_2

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 838
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Repo$TransactionData;

    .line 839
    .local v2, "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-static {v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v3, v4, :cond_0

    .line 840
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 842
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    .end local v2    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 846
    invoke-virtual {p1, v1}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 852
    .end local v0    # "i":I
    :cond_2
    :goto_1
    new-instance v3, Lcom/firebase/client/core/Repo$16;

    invoke-direct {v3, p0}, Lcom/firebase/client/core/Repo$16;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p1, v3}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    .line 858
    return-void

    .line 848
    .restart local v0    # "i":I
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private rerunTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V
    .locals 35
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;",
            "Lcom/firebase/client/core/Path;",
            ")V"
        }
    .end annotation

    .prologue
    .line 875
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    :goto_0
    return-void

    .line 881
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v18, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v32, "setsToIgnore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/firebase/client/core/Repo$TransactionData;

    .line 888
    .local v34, "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 891
    .end local v34    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/firebase/client/core/Repo$TransactionData;

    .line 892
    .restart local v34    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v29

    .line 893
    .local v29, "relativePath":Lcom/firebase/client/core/Path;
    const/16 v16, 0x0

    .line 894
    .local v16, "abortTransaction":Z
    const/4 v15, 0x0

    .line 895
    .local v15, "abortReason":Lcom/firebase/client/FirebaseError;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v22, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    sget-boolean v4, Lcom/firebase/client/core/Repo;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez v29, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 899
    :cond_3
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v4

    sget-object v5, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v4, v5, :cond_5

    .line 900
    const/16 v16, 0x1

    .line 901
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$2600(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/FirebaseError;

    move-result-object v15

    .line 902
    invoke-virtual {v15}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v4

    const/16 v5, -0x19

    if-eq v4, v5, :cond_4

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-virtual/range {v5 .. v10}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 948
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 950
    if-eqz v16, :cond_2

    .line 952
    sget-object v4, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 953
    new-instance v28, Lcom/firebase/client/Firebase;

    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 956
    .local v28, "ref":Lcom/firebase/client/Firebase;
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;

    move-result-object v25

    .line 958
    .local v25, "lastInput":Lcom/firebase/client/snapshot/Node;
    new-instance v33, Lcom/firebase/client/DataSnapshot;

    invoke-static/range {v25 .. v25}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 962
    .local v33, "snapshot":Lcom/firebase/client/DataSnapshot;
    new-instance v4, Lcom/firebase/client/core/Repo$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v4, v0, v1}, Lcom/firebase/client/core/Repo$17;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 970
    move-object/from16 v17, v15

    .line 971
    .local v17, "callbackError":Lcom/firebase/client/FirebaseError;
    new-instance v4, Lcom/firebase/client/core/Repo$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    move-object/from16 v3, v33

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/firebase/client/core/Repo$18;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/DataSnapshot;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 905
    .end local v17    # "callbackError":Lcom/firebase/client/FirebaseError;
    .end local v25    # "lastInput":Lcom/firebase/client/snapshot/Node;
    .end local v28    # "ref":Lcom/firebase/client/Firebase;
    .end local v33    # "snapshot":Lcom/firebase/client/DataSnapshot;
    :cond_5
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v4

    sget-object v5, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v4, v5, :cond_4

    .line 906
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1800(Lcom/firebase/client/core/Repo$TransactionData;)I

    move-result v4

    const/16 v5, 0x19

    if-lt v4, v5, :cond_6

    .line 907
    const/16 v16, 0x1

    .line 908
    const-string v4, "maxretries"

    invoke-static {v4}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v15

    .line 909
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-virtual/range {v5 .. v10}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 912
    :cond_6
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v4, v1}, Lcom/firebase/client/core/Repo;->getLatestState(Lcom/firebase/client/core/Path;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;

    move-result-object v19

    .line 913
    .local v19, "currentNode":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1202(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 914
    new-instance v26, Lcom/firebase/client/MutableData;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 915
    .local v26, "mutableCurrent":Lcom/firebase/client/MutableData;
    const/16 v21, 0x0

    .line 918
    .local v21, "error":Lcom/firebase/client/FirebaseError;
    :try_start_0
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$2100(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/Transaction$Handler;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lcom/firebase/client/Transaction$Handler;->doTransaction(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    .line 923
    .local v30, "result":Lcom/firebase/client/Transaction$Result;
    :goto_4
    invoke-virtual/range {v30 .. v30}, Lcom/firebase/client/Transaction$Result;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 924
    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 925
    .local v27, "oldWriteId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-static {v4}, Lcom/firebase/client/core/ServerValues;->generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;

    move-result-object v31

    .line 927
    .local v31, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v30 .. v30}, Lcom/firebase/client/Transaction$Result;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 928
    .local v6, "newDataNode":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, v31

    invoke-static {v6, v0}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 930
    .local v7, "newNodeResolved":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, v34

    invoke-static {v0, v6}, Lcom/firebase/client/core/Repo$TransactionData;->access$1302(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 931
    move-object/from16 v0, v34

    invoke-static {v0, v7}, Lcom/firebase/client/core/Repo$TransactionData;->access$1402(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->getNextWriteId()J

    move-result-wide v4

    move-object/from16 v0, v34

    invoke-static {v0, v4, v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1602(Lcom/firebase/client/core/Repo$TransactionData;J)J

    .line 935
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v8

    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$2700(Lcom/firebase/client/core/Repo$TransactionData;)Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/firebase/client/core/SyncTree;->applyUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;JZZ)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 938
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-virtual/range {v9 .. v14}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 919
    .end local v6    # "newDataNode":Lcom/firebase/client/snapshot/Node;
    .end local v7    # "newNodeResolved":Lcom/firebase/client/snapshot/Node;
    .end local v27    # "oldWriteId":Ljava/lang/Long;
    .end local v30    # "result":Lcom/firebase/client/Transaction$Result;
    .end local v31    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v20

    .line 920
    .local v20, "e":Ljava/lang/Throwable;
    invoke-static/range {v20 .. v20}, Lcom/firebase/client/FirebaseError;->fromException(Ljava/lang/Throwable;)Lcom/firebase/client/FirebaseError;

    move-result-object v21

    .line 921
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v30

    .restart local v30    # "result":Lcom/firebase/client/Transaction$Result;
    goto :goto_4

    .line 941
    .end local v20    # "e":Ljava/lang/Throwable;
    :cond_7
    const/16 v16, 0x1

    .line 942
    move-object/from16 v15, v21

    .line 943
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-static/range {v34 .. v34}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-virtual/range {v9 .. v14}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 981
    .end local v15    # "abortReason":Lcom/firebase/client/FirebaseError;
    .end local v16    # "abortTransaction":Z
    .end local v19    # "currentNode":Lcom/firebase/client/snapshot/Node;
    .end local v21    # "error":Lcom/firebase/client/FirebaseError;
    .end local v22    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    .end local v26    # "mutableCurrent":Lcom/firebase/client/MutableData;
    .end local v29    # "relativePath":Lcom/firebase/client/core/Path;
    .end local v30    # "result":Lcom/firebase/client/Transaction$Result;
    .end local v34    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    .line 984
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 985
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/firebase/client/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 984
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 989
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->sendAllReadyTransactions()V

    goto/16 :goto_0
.end method

.method private rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 3
    .param p1, "changedPath"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->getAncestorTransactionNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v2

    .line 866
    .local v2, "rootMostTransactionNode":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    invoke-virtual {v2}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 868
    .local v0, "path":Lcom/firebase/client/core/Path;
    invoke-direct {p0, v2}, Lcom/firebase/client/core/Repo;->buildTransactionQueue(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;

    move-result-object v1

    .line 869
    .local v1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    invoke-direct {p0, v1, v0}, Lcom/firebase/client/core/Repo;->rerunTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V

    .line 871
    return-object v0
.end method

.method private restoreWrites(Lcom/firebase/client/core/persistence/PersistenceManager;)V
    .locals 15
    .param p1, "persistenceManager"    # Lcom/firebase/client/core/persistence/PersistenceManager;

    .prologue
    .line 140
    invoke-interface/range {p1 .. p1}, Lcom/firebase/client/core/persistence/PersistenceManager;->loadUserWrites()Ljava/util/List;

    move-result-object v14

    .line 142
    .local v14, "writes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/UserWriteRecord;>;"
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-static {v0}, Lcom/firebase/client/core/ServerValues;->generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;

    move-result-object v12

    .line 143
    .local v12, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/high16 v10, -0x8000000000000000L

    .line 144
    .local v10, "lastWriteId":J
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/core/UserWriteRecord;

    .line 145
    .local v13, "write":Lcom/firebase/client/core/UserWriteRecord;
    new-instance v9, Lcom/firebase/client/core/Repo$4;

    invoke-direct {v9, p0, v13}, Lcom/firebase/client/core/Repo$4;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/UserWriteRecord;)V

    .line 152
    .local v9, "onComplete":Lcom/firebase/client/Firebase$CompletionListener;
    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-ltz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write ids were not in order."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v10

    .line 156
    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/firebase/client/core/Repo;->nextWriteId:J

    .line 157
    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring overwrite with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 160
    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 161
    .local v3, "resolved":Lcom/firebase/client/snapshot/Node;
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/firebase/client/core/SyncTree;->applyUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;JZZ)Ljava/util/List;

    goto/16 :goto_0

    .line 164
    .end local v3    # "resolved":Lcom/firebase/client/snapshot/Node;
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring merge with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lcom/firebase/client/core/PersistentConnection;->merge(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 166
    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueMerge(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v3

    .line 167
    .local v3, "resolved":Lcom/firebase/client/core/CompoundWrite;
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    invoke-virtual {v13}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/firebase/client/core/SyncTree;->applyUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/CompoundWrite;JZ)Ljava/util/List;

    goto/16 :goto_0

    .line 170
    .end local v3    # "resolved":Lcom/firebase/client/core/CompoundWrite;
    .end local v9    # "onComplete":Lcom/firebase/client/Firebase$CompletionListener;
    .end local v13    # "write":Lcom/firebase/client/core/UserWriteRecord;
    :cond_4
    return-void
.end method

.method private runOnDisconnectEvents()V
    .locals 5

    .prologue
    .line 510
    iget-object v3, p0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-static {v3}, Lcom/firebase/client/core/ServerValues;->generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;

    move-result-object v2

    .line 511
    .local v2, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-static {v3, v2}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueTree(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)Lcom/firebase/client/core/SparseSnapshotTree;

    move-result-object v1

    .line 512
    .local v1, "resolvedTree":Lcom/firebase/client/core/SparseSnapshotTree;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    new-instance v4, Lcom/firebase/client/core/Repo$11;

    invoke-direct {v4, p0, v0}, Lcom/firebase/client/core/Repo$11;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    invoke-virtual {v1, v3, v4}, Lcom/firebase/client/core/SparseSnapshotTree;->forEachTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    .line 522
    new-instance v3, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-direct {v3}, Lcom/firebase/client/core/SparseSnapshotTree;-><init>()V

    iput-object v3, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    .line 523
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 524
    return-void
.end method

.method private sendAllReadyTransactions()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    .line 710
    .local v0, "node":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    .line 711
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->sendReadyTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    .line 712
    return-void
.end method

.method private sendReadyTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "node":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 716
    .local v2, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    if-eqz v2, :cond_4

    .line 717
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->buildTransactionQueue(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;

    move-result-object v2

    .line 718
    sget-boolean v4, Lcom/firebase/client/core/Repo;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 720
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 721
    .local v0, "allRun":Ljava/lang/Boolean;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/Repo$TransactionData;

    .line 722
    .local v3, "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-static {v3}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v4

    sget-object v5, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-eq v4, v5, :cond_1

    .line 723
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 728
    .end local v3    # "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 729
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/firebase/client/core/Repo;->sendTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V

    .line 739
    .end local v0    # "allRun":Ljava/lang/Boolean;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    return-void

    .line 731
    :cond_4
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->hasChildren()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 732
    new-instance v4, Lcom/firebase/client/core/Repo$14;

    invoke-direct {v4, p0}, Lcom/firebase/client/core/Repo$14;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p1, v4}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    goto :goto_0
.end method

.method private sendTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V
    .locals 18
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;",
            "Lcom/firebase/client/core/Path;",
            ")V"
        }
    .end annotation

    .prologue
    .line 743
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v10, "setsToIgnore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/firebase/client/core/Repo$TransactionData;

    .line 745
    .local v12, "txn":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-static {v12}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 748
    .end local v12    # "txn":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/firebase/client/core/Repo;->getLatestState(Lcom/firebase/client/core/Path;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 749
    .local v7, "latestState":Lcom/firebase/client/snapshot/Node;
    move-object v11, v7

    .line 750
    .local v11, "snapToSend":Lcom/firebase/client/snapshot/Node;
    const-string v6, "badhash"

    .line 751
    .local v6, "latestHash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/firebase/client/core/Repo;->hijackHash:Z

    if-nez v13, :cond_1

    .line 752
    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v6

    .line 755
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/firebase/client/core/Repo$TransactionData;

    .line 756
    .restart local v12    # "txn":Lcom/firebase/client/core/Repo$TransactionData;
    sget-boolean v13, Lcom/firebase/client/core/Repo;->$assertionsDisabled:Z

    if-nez v13, :cond_2

    invoke-static {v12}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v13

    sget-object v16, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    move-object/from16 v0, v16

    if-eq v13, v0, :cond_2

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 757
    :cond_2
    sget-object v13, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v12, v13}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 758
    invoke-static {v12}, Lcom/firebase/client/core/Repo$TransactionData;->access$1808(Lcom/firebase/client/core/Repo$TransactionData;)I

    .line 759
    invoke-static {v12}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v8

    .line 761
    .local v8, "relativePath":Lcom/firebase/client/core/Path;
    invoke-static {v12}, Lcom/firebase/client/core/Repo$TransactionData;->access$1300(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    .line 762
    goto :goto_1

    .line 764
    .end local v8    # "relativePath":Lcom/firebase/client/core/Path;
    .end local v12    # "txn":Lcom/firebase/client/core/Repo$TransactionData;
    :cond_3
    const/4 v13, 0x1

    invoke-interface {v11, v13}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v4

    .line 766
    .local v4, "dataToSend":Ljava/lang/Object;
    move-object/from16 v9, p0

    .line 767
    .local v9, "repo":Lcom/firebase/client/core/Repo;
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->getNextWriteId()J

    move-result-wide v14

    .line 770
    .local v14, "writeId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/firebase/client/core/Repo$15;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/firebase/client/core/Repo$15;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Repo;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v4, v6, v1}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 831
    return-void
.end method

.method private updateInfo(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V
    .locals 8
    .param p1, "childKey"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 490
    sget-object v4, Lcom/firebase/client/core/Constants;->DOT_INFO_SERVERTIME_OFFSET:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {p1, v4}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    iget-object v5, p0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/firebase/client/utilities/OffsetClock;->setOffset(J)V

    .line 494
    :cond_0
    new-instance v3, Lcom/firebase/client/core/Path;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v5, 0x0

    sget-object v6, Lcom/firebase/client/core/Constants;->DOT_INFO:Lcom/firebase/client/snapshot/ChildKey;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    .line 496
    .local v3, "path":Lcom/firebase/client/core/Path;
    :try_start_0
    invoke-static {p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 497
    .local v2, "node":Lcom/firebase/client/snapshot/Node;
    iget-object v4, p0, Lcom/firebase/client/core/Repo;->infoData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v4, v3, v2}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 498
    iget-object v4, p0, Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v4, v3, v2}, Lcom/firebase/client/core/SyncTree;->applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    invoke-direct {p0, v1}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/firebase/client/FirebaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    .end local v2    # "node":Lcom/firebase/client/snapshot/Node;
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Lcom/firebase/client/FirebaseException;
    iget-object v4, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v5, "Failed to parse info update"

    invoke-virtual {v4, v5, v0}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private warnIfWriteFailed(Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V
    .locals 3
    .param p1, "writeType"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 528
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/firebase/client/FirebaseError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public addEventCallback(Lcom/firebase/client/core/EventRegistration;)V
    .locals 3
    .param p1, "eventRegistration"    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 471
    .local v1, "front":Lcom/firebase/client/snapshot/ChildKey;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/firebase/client/core/Constants;->DOT_INFO:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v1, v2}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/SyncTree;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    .line 476
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 477
    return-void

    .line 474
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/SyncTree;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    goto :goto_0
.end method

.method callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V
    .locals 3
    .param p1, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;
    .param p2, "error"    # Lcom/firebase/client/FirebaseError;
    .param p3, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p3}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 287
    .local v0, "last":Lcom/firebase/client/snapshot/ChildKey;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    new-instance v1, Lcom/firebase/client/Firebase;

    invoke-virtual {p3}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 292
    .local v1, "ref":Lcom/firebase/client/Firebase;
    :goto_0
    new-instance v2, Lcom/firebase/client/core/Repo$5;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/firebase/client/core/Repo$5;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    invoke-virtual {p0, v2}, Lcom/firebase/client/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 299
    .end local v0    # "last":Lcom/firebase/client/snapshot/ChildKey;
    .end local v1    # "ref":Lcom/firebase/client/Firebase;
    :cond_0
    return-void

    .line 290
    .restart local v0    # "last":Lcom/firebase/client/snapshot/ChildKey;
    :cond_1
    new-instance v1, Lcom/firebase/client/Firebase;

    invoke-direct {v1, p0, p3}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .restart local v1    # "ref":Lcom/firebase/client/Firebase;
    goto :goto_0
.end method

.method public getAuthenticationManager()Lcom/firebase/client/authentication/AuthenticationManager;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->authenticationManager:Lcom/firebase/client/authentication/AuthenticationManager;

    return-object v0
.end method

.method getConnection()Lcom/firebase/client/core/PersistentConnection;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    return-object v0
.end method

.method public getFirebaseApp()Lcom/firebase/client/FirebaseApp;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->app:Lcom/firebase/client/FirebaseApp;

    return-object v0
.end method

.method getInfoSyncTree()Lcom/firebase/client/core/SyncTree;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;

    return-object v0
.end method

.method getServerSyncTree()Lcom/firebase/client/core/SyncTree;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/OffsetClock;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method hasListeners()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/SyncTree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/SyncTree;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method interrupt()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->interrupt()V

    .line 462
    return-void
.end method

.method public keepSynced(Lcom/firebase/client/core/view/QuerySpec;Z)V
    .locals 2
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;
    .param p2, "keep"    # Z

    .prologue
    .line 480
    sget-boolean v0, Lcom/firebase/client/core/Repo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    sget-object v1, Lcom/firebase/client/core/Constants;->DOT_INFO:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/SyncTree;->keepSynced(Lcom/firebase/client/core/view/QuerySpec;Z)V

    .line 483
    return-void
.end method

.method public onAuthStatus(Z)V
    .locals 2
    .param p1, "authOk"    # Z

    .prologue
    .line 447
    sget-object v0, Lcom/firebase/client/core/Constants;->DOT_INFO_AUTHENTICATED:Lcom/firebase/client/snapshot/ChildKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/core/Repo;->onServerInfoUpdate(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public onConnect()V
    .locals 2

    .prologue
    .line 438
    sget-object v0, Lcom/firebase/client/core/Constants;->DOT_INFO_CONNECTED:Lcom/firebase/client/snapshot/ChildKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/core/Repo;->onServerInfoUpdate(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method public onDataUpdate(Ljava/lang/String;Ljava/lang/Object;ZLcom/firebase/client/core/Tag;)V
    .locals 18
    .param p1, "pathString"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "isMerge"    # Z
    .param p4, "tag"    # Lcom/firebase/client/core/Tag;

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v13}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataUpdate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v13}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataUpdate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 219
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    .line 221
    new-instance v8, Lcom/firebase/client/core/Path;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 225
    .local v8, "path":Lcom/firebase/client/core/Path;
    if-eqz p4, :cond_5

    .line 226
    if-eqz p3, :cond_4

    .line 227
    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v11, "taggedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v9, v0

    .line 229
    .local v9, "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 230
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 231
    .local v7, "newChildNode":Lcom/firebase/client/snapshot/Node;
    new-instance v14, Lcom/firebase/client/core/Path;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v14, v13}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/firebase/client/FirebaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "newChildNode":Lcom/firebase/client/snapshot/Node;
    .end local v9    # "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "taggedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :catch_0
    move-exception v3

    .line 258
    .local v3, "e":Lcom/firebase/client/FirebaseException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v14, "FIREBASE INTERNAL ERROR"

    invoke-virtual {v13, v14, v3}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .end local v3    # "e":Lcom/firebase/client/FirebaseException;
    :goto_1
    return-void

    .line 233
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11    # "taggedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v0, p4

    invoke-virtual {v13, v8, v11, v0}, Lcom/firebase/client/core/SyncTree;->applyTaggedQueryMerge(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/core/Tag;)Ljava/util/List;

    move-result-object v5

    .line 250
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "taggedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 253
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 256
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    goto :goto_1

    .line 235
    .end local v5    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v12

    .line 236
    .local v12, "taggedSnap":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    move-object/from16 v0, p4

    invoke-virtual {v13, v8, v12, v0}, Lcom/firebase/client/core/SyncTree;->applyTaggedQueryOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Tag;)Ljava/util/List;

    move-result-object v5

    .line 237
    .restart local v5    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    goto :goto_2

    .line 238
    .end local v5    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    .end local v12    # "taggedSnap":Lcom/firebase/client/snapshot/Node;
    :cond_5
    if-eqz p3, :cond_7

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v2, "changedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v9, v0

    .line 241
    .restart local v9    # "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 242
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 243
    .restart local v7    # "newChildNode":Lcom/firebase/client/snapshot/Node;
    new-instance v14, Lcom/firebase/client/core/Path;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v14, v13}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 245
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "newChildNode":Lcom/firebase/client/snapshot/Node;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v13, v8, v2}, Lcom/firebase/client/core/SyncTree;->applyServerMerge(Lcom/firebase/client/core/Path;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 246
    .restart local v5    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    goto :goto_2

    .line 247
    .end local v2    # "changedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    .end local v5    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    .line 248
    .local v10, "snap":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v13, v8, v10}, Lcom/firebase/client/core/SyncTree;->applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;
    :try_end_1
    .catch Lcom/firebase/client/FirebaseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    goto :goto_2
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lcom/firebase/client/core/Constants;->DOT_INFO_CONNECTED:Lcom/firebase/client/snapshot/ChildKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/core/Repo;->onServerInfoUpdate(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 443
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->runOnDisconnectEvents()V

    .line 444
    return-void
.end method

.method public onDisconnectCancel(Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    new-instance v1, Lcom/firebase/client/core/Repo$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/firebase/client/core/Repo$10;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/PersistentConnection;->onDisconnectCancel(Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 435
    return-void
.end method

.method public onDisconnectSetValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 3
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "newValue"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/core/Repo$8;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/firebase/client/core/Repo$8;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/firebase/client/core/PersistentConnection;->onDisconnectPut(Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 407
    return-void
.end method

.method public onDisconnectUpdate(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V
    .locals 2
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, "newChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    .local p4, "unParsedUpdates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    new-instance v1, Lcom/firebase/client/core/Repo$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/firebase/client/core/Repo$9;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, p1, p4, v1}, Lcom/firebase/client/core/PersistentConnection;->onDisconnectMerge(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 423
    return-void
.end method

.method public onRangeMergeUpdate(Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Tag;)V
    .locals 6
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p3, "tag"    # Lcom/firebase/client/core/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/RangeMerge;",
            ">;",
            "Lcom/firebase/client/core/Tag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "merges":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/RangeMerge;>;"
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRangeMergeUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRangeMergeUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 266
    :cond_1
    iget-wide v2, p0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    .line 269
    if-eqz p3, :cond_3

    .line 270
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v1, p1, p2, p3}, Lcom/firebase/client/core/SyncTree;->applyTaggedRangeMerges(Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Tag;)Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 277
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 280
    :cond_2
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 281
    return-void

    .line 272
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    :cond_3
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v1, p1, p2}, Lcom/firebase/client/core/SyncTree;->applyServerRangeMerges(Lcom/firebase/client/core/Path;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    goto :goto_0
.end method

.method public onServerInfoUpdate(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Lcom/firebase/client/snapshot/ChildKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 451
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/Repo;->updateInfo(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 452
    return-void
.end method

.method public onServerInfoUpdate(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "updates":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/firebase/client/core/Repo;->updateInfo(Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/firebase/client/snapshot/ChildKey;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->requireStarted()V

    .line 197
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v2, "Purging writes"

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/SyncTree;->removeAllWrites()Ljava/util/List;

    move-result-object v0

    .line 377
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 379
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    const/16 v2, -0x19

    invoke-direct {p0, v1, v2}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;

    .line 381
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v1}, Lcom/firebase/client/core/PersistentConnection;->purgeOutstandingWrites()V

    .line 382
    return-void
.end method

.method public removeEventCallback(Lcom/firebase/client/core/EventRegistration;)V
    .locals 3
    .param p1, "eventRegistration"    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 388
    sget-object v1, Lcom/firebase/client/core/Constants;->DOT_INFO:Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/SyncTree;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    .line 393
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 394
    return-void

    .line 391
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/SyncTree;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Event;>;"
    goto :goto_0
.end method

.method resume()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->resume()V

    .line 466
    return-void
.end method

.method public scheduleNow(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->requireStarted()V

    .line 192
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public setHijackHash(Z)V
    .locals 0
    .param p1, "hijackHash"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/firebase/client/core/Repo;->hijackHash:Z

    .line 705
    return-void
.end method

.method public setValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 18
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "newValueUnresolved"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 318
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-static {v2}, Lcom/firebase/client/core/ServerValues;->generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;

    move-result-object v17

    .line 319
    .local v17, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 321
    .local v5, "newValue":Lcom/firebase/client/snapshot/Node;
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->getNextWriteId()J

    move-result-wide v6

    .line 322
    .local v6, "writeId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/firebase/client/core/SyncTree;->applyUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;JZZ)Ljava/util/List;

    move-result-object v16

    .line 324
    .local v16, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v4

    new-instance v9, Lcom/firebase/client/core/Repo$6;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Lcom/firebase/client/core/Repo$6;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;JLcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v2, v3, v4, v9}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 335
    const/16 v2, -0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;

    move-result-object v15

    .line 336
    .local v15, "affectedPath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 337
    return-void
.end method

.method public startTransaction(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Z)V
    .locals 28
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "handler"    # Lcom/firebase/client/Transaction$Handler;
    .param p3, "applyLocally"    # Z

    .prologue
    .line 607
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transaction: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 608
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transaction: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v5}, Lcom/firebase/client/core/Context;->isPersistenceEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/firebase/client/core/Repo;->loggedTransactionPersistenceWarning:Z

    if-nez v5, :cond_2

    .line 611
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/firebase/client/core/Repo;->loggedTransactionPersistenceWarning:Z

    .line 612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v6, "runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across app restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details."

    invoke-virtual {v5, v6}, Lcom/firebase/client/utilities/LogWrapper;->info(Ljava/lang/String;)V

    .line 619
    :cond_2
    new-instance v27, Lcom/firebase/client/Firebase;

    invoke-direct/range {v27 .. v29}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 620
    .local v27, "watchRef":Lcom/firebase/client/Firebase;
    new-instance v7, Lcom/firebase/client/core/Repo$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/firebase/client/core/Repo$12;-><init>(Lcom/firebase/client/core/Repo;)V

    .line 631
    .local v7, "listener":Lcom/firebase/client/ValueEventListener;
    new-instance v5, Lcom/firebase/client/core/ValueEventRegistration;

    invoke-virtual/range {v27 .. v27}, Lcom/firebase/client/Firebase;->getSpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7, v6}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/firebase/client/core/Repo;->addEventCallback(Lcom/firebase/client/core/EventRegistration;)V

    .line 633
    new-instance v4, Lcom/firebase/client/core/Repo$TransactionData;

    sget-object v8, Lcom/firebase/client/core/Repo$TransactionStatus;->INITIALIZING:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->nextTransactionOrder()J

    move-result-wide v10

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    invoke-direct/range {v4 .. v12}, Lcom/firebase/client/core/Repo$TransactionData;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJLcom/firebase/client/core/Repo$1;)V

    .line 637
    .local v4, "transaction":Lcom/firebase/client/core/Repo$TransactionData;
    invoke-direct/range {p0 .. p1}, Lcom/firebase/client/core/Repo;->getLatestState(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v16

    .line 638
    .local v16, "currentState":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$1202(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 639
    new-instance v21, Lcom/firebase/client/MutableData;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 641
    .local v21, "mutableCurrent":Lcom/firebase/client/MutableData;
    const/16 v18, 0x0

    .line 644
    .local v18, "error":Lcom/firebase/client/FirebaseError;
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/firebase/client/Transaction$Handler;->doTransaction(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v24

    .line 645
    .local v24, "result":Lcom/firebase/client/Transaction$Result;
    if-nez v24, :cond_3

    .line 646
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Transaction returned null as result"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v24    # "result":Lcom/firebase/client/Transaction$Result;
    :catch_0
    move-exception v17

    .line 649
    .local v17, "e":Ljava/lang/Throwable;
    invoke-static/range {v17 .. v17}, Lcom/firebase/client/FirebaseError;->fromException(Ljava/lang/Throwable;)Lcom/firebase/client/FirebaseError;

    move-result-object v18

    .line 650
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v24

    .line 652
    .end local v17    # "e":Ljava/lang/Throwable;
    .restart local v24    # "result":Lcom/firebase/client/Transaction$Result;
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lcom/firebase/client/Transaction$Result;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_4

    .line 654
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1302(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 655
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1402(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 656
    move-object/from16 v20, v18

    .line 657
    .local v20, "innerClassError":Lcom/firebase/client/FirebaseError;
    new-instance v26, Lcom/firebase/client/DataSnapshot;

    invoke-static {v4}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v5

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 658
    .local v26, "snap":Lcom/firebase/client/DataSnapshot;
    new-instance v5, Lcom/firebase/client/core/Repo$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/firebase/client/core/Repo$13;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/DataSnapshot;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/firebase/client/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 689
    .end local v20    # "innerClassError":Lcom/firebase/client/FirebaseError;
    .end local v26    # "snap":Lcom/firebase/client/DataSnapshot;
    :goto_0
    return-void

    .line 666
    :cond_4
    sget-object v5, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v4, v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v23

    .line 669
    .local v23, "queueNode":Lcom/firebase/client/core/utilities/Tree;, "Lcom/firebase/client/core/utilities/Tree<Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;>;"
    invoke-virtual/range {v23 .. v23}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 670
    .local v22, "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    if-nez v22, :cond_5

    .line 671
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .restart local v22    # "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/Repo$TransactionData;>;"
    :cond_5
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-static {v5}, Lcom/firebase/client/core/ServerValues;->generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;

    move-result-object v25

    .line 677
    .local v25, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/firebase/client/Transaction$Result;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v10

    .line 678
    .local v10, "newNodeUnresolved":Lcom/firebase/client/snapshot/Node;
    move-object/from16 v0, v25

    invoke-static {v10, v0}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    .line 680
    .local v11, "newNode":Lcom/firebase/client/snapshot/Node;
    invoke-static {v4, v10}, Lcom/firebase/client/core/Repo$TransactionData;->access$1302(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 681
    invoke-static {v4, v11}, Lcom/firebase/client/core/Repo$TransactionData;->access$1402(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    .line 682
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->getNextWriteId()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/firebase/client/core/Repo$TransactionData;->access$1602(Lcom/firebase/client/core/Repo$TransactionData;J)J

    .line 684
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    invoke-static {v4}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v12

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move/from16 v14, p3

    invoke-virtual/range {v8 .. v15}, Lcom/firebase/client/core/SyncTree;->applyUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;JZZ)Ljava/util/List;

    move-result-object v19

    .line 686
    .local v19, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->sendAllReadyTransactions()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-virtual {v0}, Lcom/firebase/client/core/RepoInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChildren(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V
    .locals 20
    .param p1, "path"    # Lcom/firebase/client/core/Path;
    .param p2, "updates"    # Lcom/firebase/client/core/CompoundWrite;
    .param p3, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/CompoundWrite;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p4, "unParsedUpdates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v4}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 343
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v4}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 344
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v4}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v5, "update called with no changes. No-op"

    invoke-virtual {v4, v5}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 347
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v4, v2}, Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    .line 372
    :goto_0
    return-void

    .line 352
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;

    invoke-static {v4}, Lcom/firebase/client/core/ServerValues;->generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;

    move-result-object v19

    .line 353
    .local v19, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueMerge(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v7

    .line 355
    .local v7, "resolved":Lcom/firebase/client/core/CompoundWrite;
    invoke-direct/range {p0 .. p0}, Lcom/firebase/client/core/Repo;->getNextWriteId()J

    move-result-wide v8

    .line 356
    .local v8, "writeId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;

    const/4 v10, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/firebase/client/core/SyncTree;->applyUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/CompoundWrite;JZ)Ljava/util/List;

    move-result-object v18

    .line 357
    .local v18, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/firebase/client/core/view/Event;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lcom/firebase/client/core/Repo$7;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide v14, v8

    move-object/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lcom/firebase/client/core/Repo$7;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;JLcom/firebase/client/Firebase$CompletionListener;)V

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, v11}, Lcom/firebase/client/core/PersistentConnection;->merge(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 370
    const/16 v4, -0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;

    move-result-object v17

    .line 371
    .local v17, "affectedPath":Lcom/firebase/client/core/Path;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    goto :goto_0
.end method
