.class public final Lcom/google/appinventor/components/runtime/util/JavaJoinListOfStrings;
.super Ljava/lang/Object;
.source "JavaJoinListOfStrings.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "JavaJoinListOfStrings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 49
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 57
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "listOfStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JavaJoinListOfStrings;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
