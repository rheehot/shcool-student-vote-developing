.class public Lcom/firebase/client/OnDisconnect;
.super Ljava/lang/Object;
.source "OnDisconnect.java"


# instance fields
.field private path:Lcom/firebase/client/core/Path;

.field private repo:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V
    .locals 0
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;
    .param p2, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    .line 40
    iput-object p2, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/OnDisconnect;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Repo;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/OnDisconnect;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    return-object v0
.end method

.method private onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Lcom/firebase/client/snapshot/Node;
    .param p3, "onComplete"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 151
    iget-object v3, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    invoke-static {v3}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 152
    iget-object v3, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    invoke-static {v3, p1}, Lcom/firebase/client/core/ValidationPath;->validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V

    .line 154
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "bouncedValue":Ljava/lang/Object;
    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    .line 156
    invoke-static {v0, p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 157
    .local v2, "node":Lcom/firebase/client/snapshot/Node;
    iget-object v3, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    new-instance v4, Lcom/firebase/client/OnDisconnect$1;

    invoke-direct {v4, p0, v2, p3}, Lcom/firebase/client/OnDisconnect$1;-><init>(Lcom/firebase/client/OnDisconnect;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 163
    .end local v0    # "bouncedValue":Ljava/lang/Object;
    .end local v2    # "node":Lcom/firebase/client/snapshot/Node;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/firebase/client/FirebaseException;

    const-string v4, "Failed to parse to snapshot"

    invoke-direct {v3, v4, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/firebase/client/OnDisconnect;->cancel(Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 219
    return-void
.end method

.method public cancel(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/OnDisconnect$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/OnDisconnect$3;-><init>(Lcom/firebase/client/OnDisconnect;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public removeValue()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/firebase/client/OnDisconnect;->setValue(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public removeValue(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/firebase/client/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 210
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 55
    return-void
.end method

.method public setValue(Ljava/lang/Object;D)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # D

    .prologue
    .line 84
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 85
    return-void
.end method

.method public setValue(Ljava/lang/Object;DLcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # D
    .param p4, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 131
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 132
    return-void
.end method

.method public setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 99
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 100
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 70
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 115
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 116
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Ljava/util/Map;
    .param p3, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;

    .prologue
    .line 147
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 148
    return-void
.end method

.method public updateChildren(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/OnDisconnect;->updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 177
    return-void
.end method

.method public updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/firebase/client/Firebase$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    invoke-static {v1, p1}, Lcom/firebase/client/utilities/Validation;->parseAndValidateUpdate(Lcom/firebase/client/core/Path;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 187
    .local v0, "parsedUpdate":Ljava/util/Map;, "Ljava/util/Map<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    iget-object v1, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/OnDisconnect$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/firebase/client/OnDisconnect$2;-><init>(Lcom/firebase/client/OnDisconnect;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method
