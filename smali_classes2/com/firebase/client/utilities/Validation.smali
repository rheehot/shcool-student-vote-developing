.class public Lcom/firebase/client/utilities/Validation;
.super Ljava/lang/Object;
.source "Validation.java"


# static fields
.field private static final INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

.field private static final INVALID_PATH_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "[\\[\\]\\.#$]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/firebase/client/utilities/Validation;->INVALID_PATH_REGEX:Ljava/util/regex/Pattern;

    .line 28
    const-string v0, "[\\[\\]\\.#\\$\\/\\u0000-\\u001F\\u007F]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/firebase/client/utilities/Validation;->INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isValidKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, ".info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/firebase/client/utilities/Validation;->INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

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

.method private static isValidPathString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathString"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/firebase/client/utilities/Validation;->INVALID_PATH_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWritableKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ".value"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/firebase/client/utilities/Validation;->INVALID_KEY_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

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

.method private static isWritablePath(Lcom/firebase/client/core/Path;)Z
    .locals 3
    .param p0, "path"    # Lcom/firebase/client/core/Path;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 72
    .local v0, "front":Lcom/firebase/client/snapshot/ChildKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseAndValidateUpdate(Lcom/firebase/client/core/Path;Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .param p0, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 112
    .local v5, "parsedUpdate":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Lcom/firebase/client/core/Path;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 114
    .local v7, "updatePath":Lcom/firebase/client/core/Path;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 115
    .local v4, "newValue":Ljava/lang/Object;
    invoke-virtual {p0, v7}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/firebase/client/core/ValidationPath;->validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v7}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "childName":Ljava/lang/String;
    :goto_1
    const-string v8, ".sv"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ".value"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 118
    :cond_0
    new-instance v8, Lcom/firebase/client/FirebaseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' contains disallowed child name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 116
    .end local v0    # "childName":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 120
    .restart local v0    # "childName":Ljava/lang/String;
    :cond_2
    const-string v8, ".priority"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 121
    invoke-static {v4}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v8

    invoke-static {v8}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 122
    new-instance v8, Lcom/firebase/client/FirebaseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' contains invalid priority "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(must be a string, double, ServerValue, or null)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 126
    :cond_3
    invoke-static {v4}, Lcom/firebase/client/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    .line 127
    invoke-static {v4}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 130
    .end local v0    # "childName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "newValue":Ljava/lang/Object;
    .end local v7    # "updatePath":Lcom/firebase/client/core/Path;
    :cond_4
    const/4 v6, 0x0

    .line 131
    .local v6, "prevPath":Lcom/firebase/client/core/Path;
    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Path;

    .line 133
    .local v1, "curPath":Lcom/firebase/client/core/Path;
    if-eqz v6, :cond_5

    invoke-virtual {v6, v1}, Lcom/firebase/client/core/Path;->compareTo(Lcom/firebase/client/core/Path;)I

    move-result v8

    if-gez v8, :cond_6

    :cond_5
    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Lcom/firebase/client/utilities/Utilities;->hardAssert(Z)V

    .line 134
    if-eqz v6, :cond_7

    invoke-virtual {v6, v1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 135
    new-instance v8, Lcom/firebase/client/FirebaseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is an ancestor of \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in an update."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 133
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 137
    :cond_7
    move-object v6, v1

    .line 138
    goto :goto_2

    .line 139
    .end local v1    # "curPath":Lcom/firebase/client/core/Path;
    :cond_8
    return-object v5
.end method

.method public static validateNullableKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/firebase/client/utilities/Validation;->isValidKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/firebase/client/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Keys must not contain \'/\', \'.\', \'#\', \'$\', \'[\', or \']\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method public static validatePathString(Ljava/lang/String;)V
    .locals 3
    .param p0, "pathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcom/firebase/client/utilities/Validation;->isValidPathString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/firebase/client/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Firebase path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Firebase paths must not contain \'.\', \'#\', \'$\', \'[\', or \']\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public static validateRootPathString(Ljava/lang/String;)V
    .locals 1
    .param p0, "pathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, ".info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "/.info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static validateWritableKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p0}, Lcom/firebase/client/utilities/Validation;->isWritableKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/firebase/client/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Keys must not contain \'/\', \'.\', \'#\', \'$\', \'[\', or \']\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method public static validateWritableObject(Ljava/lang/Object;)V
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 77
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 78
    check-cast v4, Ljava/util/Map;

    .line 79
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, ".sv"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 83
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/firebase/client/utilities/Validation;->validateWritableKey(Ljava/lang/String;)V

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/firebase/client/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v3, p0

    .line 88
    check-cast v3, Ljava/util/List;

    .line 89
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "child":Ljava/lang/Object;
    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static validateWritablePath(Lcom/firebase/client/core/Path;)V
    .locals 3
    .param p0, "path"    # Lcom/firebase/client/core/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0}, Lcom/firebase/client/utilities/Validation;->isWritablePath(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/firebase/client/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid write location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method
