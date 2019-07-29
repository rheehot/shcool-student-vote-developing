.class final Lcom/firebase/client/collection/ImmutableSortedMap$Builder$1;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"

# interfaces
.implements Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/ImmutableSortedMap$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 112
    return-object p1
.end method
