.class public abstract Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;
.super Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerators$Base;
.source "ObjectIdGenerators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerators$Base",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerators$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic canUseFor(Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->canUseFor(Lcom/shaded/fasterxml/jackson/annotation/ObjectIdGenerator;)Z

    move-result v0

    return v0
.end method
