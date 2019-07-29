.class public Lcom/firebase/client/collection/StandardComparator;
.super Ljava/lang/Object;
.source "StandardComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/Comparable",
        "<TA;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TA;>;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/firebase/client/collection/StandardComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/firebase/client/collection/StandardComparator;

    invoke-direct {v0}, Lcom/firebase/client/collection/StandardComparator;-><init>()V

    sput-object v0, Lcom/firebase/client/collection/StandardComparator;->INSTANCE:Lcom/firebase/client/collection/StandardComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/firebase/client/collection/StandardComparator;, "Lcom/firebase/client/collection/StandardComparator<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getComparator(Ljava/lang/Class;)Lcom/firebase/client/collection/StandardComparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/firebase/client/collection/StandardComparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/firebase/client/collection/StandardComparator;->INSTANCE:Lcom/firebase/client/collection/StandardComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)I"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/firebase/client/collection/StandardComparator;, "Lcom/firebase/client/collection/StandardComparator<TA;>;"
    .local p1, "o1":Ljava/lang/Comparable;, "TA;"
    .local p2, "o2":Ljava/lang/Comparable;, "TA;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 5
    .local p0, "this":Lcom/firebase/client/collection/StandardComparator;, "Lcom/firebase/client/collection/StandardComparator<TA;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/collection/StandardComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method
