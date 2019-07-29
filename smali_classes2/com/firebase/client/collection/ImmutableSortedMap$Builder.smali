.class public Lcom/firebase/client/collection/ImmutableSortedMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;
    }
.end annotation


# static fields
.field static final ARRAY_TO_RB_TREE_SIZE_THRESHOLD:I = 0x19

.field private static final IDENTITY_TRANSLATOR:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$1;

    invoke-direct {v0}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$1;-><init>()V

    sput-object v0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->IDENTITY_TRANSLATOR:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<TA;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<TB;TC;>;"
    .local p2, "translator":Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;, "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<TA;TB;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 133
    invoke-static {p0, p1, p2, p3}, Lcom/firebase/client/collection/ArraySortedMap;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/firebase/client/collection/RBTreeSortedMap;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static emptyMap(Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Lcom/firebase/client/collection/ArraySortedMap;

    invoke-direct {v0, p0}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<TA;TB;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 123
    invoke-static {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/firebase/client/collection/RBTreeSortedMap;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static identityTranslator()Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TA;>;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->IDENTITY_TRANSLATOR:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    return-object v0
.end method
